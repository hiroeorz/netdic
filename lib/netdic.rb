# -*- mode: Ruby; coding: utf-8; -*-

require "rubygems"
gem "soap4r"
require "soap/mapping"

require "netdic/defaultDriver"

require "term/ansicolor"

$KCODE = "UTF-8"
STDOUT.sync = true

class NetDic
  include Term::ANSIColor

  attr_reader :soap
  attr_accessor :authTicket, :itemCount, :matchOption, :dictionary_id

  STARTWITH = "STARTWITH"
  EXACT = "EXACT"
  CONTAIN = "CONTAIN"
  STARTWITH = "STARTWITH"
  ENDWITH = "ENDWITH"

  def initialize(authTicket = "")
    @authTicket = authTicket
    @itemCount = 3
    @matchOption = EXACT #EXACT CONTAIN STARTWITH ENDWITH
    @dictionary_id = "19553dab-aa51-43bb-9fb7-764153b647ac" #英和辞典

    @wsdl = "http://btonic.est.co.jp/Netdic/Netdicv10.asmx?WSDL"
    @netdic = NetDicV10Soap.new(@wsdl)
    @dic_id_list = ArrayOfGuid.new
    @line = "=" * 80
  end

  def dictionary_list
    @dictionary_list ||= 
      [
       {
         :id => "8a68bb8a-16ee-4b51-afaa-74c277bb600a", 
         :name => "Edict和英辞典"
       },
       {
         :id => "19553dab-aa51-43bb-9fb7-764153b647ac", 
         :name => "EJDict英和辞典"
       },
       {
         :id => "fc6bde1b-220d-4171-abe8-7c040db4629e", 
         :name => "JMdict独和辞典"
       },
       {
         :id => "3cb5934a-b1df-48db-8f1a-592e6c8d3d20", 
         :name => "JMdict仏和辞典"
       },
       {
         :id => "ba156c74-638c-4b4c-a545-34632f8cf205", 
         :name => "JMdict露和辞典"
       },
       {
         :id => "c188c173-cf9e-4840-a4d2-7b00e9906291", 
         :name => "JMdict和独辞典"
       },
       {
         :id => "4c2315e2-adf4-4648-b88a-7c102126a0ae", 
         :name => "2JMdict和仏辞典"
       },
       {
         :id => "c86c5ca7-5c6e-46c5-8c1d-25c4e11a7800", 
         :name => "JMdict和露辞典"
       },
       {
         :id => "39124c12-6244-4c65-94eb-8b18c20c2898", 
         :name => "ウィキペディア日本語版"
       }
      ]
  end

  def dictionaries
    dictionaries_obj = @netdic.getDicList("")
    
    @dictionaries = []

    dictionaries_obj.getDicListResult.each do |item|
      @dictionaries.push(item)
      @dic_id_list.push(item.dicID)
    end

    dictionaries_obj.getDicListResult
  end

  def search(str)
    dicIdlist = ArrayOfGuid.new
    dicIdlist.push(@dictionary_id)

    querylist = ArrayOfQuery.new
    querylist.push(Query.new(str, "HEADWORD", @matchOption, "OR"))

    content = ContentProfile.new("XHTML", "URI", "UNICODE")

    sortOrderID = ""
    itemStartIndex = 0
    itemCount = @itemCount
    completeItemCount = @itemCount

    params = SearchDicItem.new(@authTicket, dicIdlist, querylist, content,
                               sortOrderID, itemStartIndex, itemCount, 
                               completeItemCount)

    result = @netdic.searchDicItem(params)

    hit_count = result.searchDicItemResult

    if @matchOption == EXACT and hit_count.zero?
      @matchOption = STARTWITH
      return search(str)
    end

    if @matchOption == STARTWITH
      @matchOption = EXACT
    end

    if hit_count.zero?
      hit_list = []
    else
      hit_list = result.itemList
    end

    return {:count => hit_count, :list => hit_list}
  end

  def output_search_result(str)
    result = search(str)
    hit_count = result[:count]
    list = result[:list]

    puts
    puts "HIT: #{hit_count}"
    puts @line

    list.each do |l|
      print bold{"単語: "}
      puts  bold{ yellow{l.title.span} }
      print bold{"意味: "}

      data = l.body.div

      if data.kind_of?(String)

        puts data.strip

      elsif data.kind_of?(SOAP::Mapping::Object)

        if data.div.kind_of?(String)

          puts data.div.strip

        elsif data.div.kind_of?(Array)
          info = data.div[0].div

          if info.kind_of?(Array)
            info.each do |elem|
              if elem.kind_of?(Array)
                #puts elem.span.join("\s")
              elsif elem.kind_of?(String)
                puts elem.strip
              else
                #p elem
              end
            end

          else
            #p info
            puts info.span.strip
          end

        else

          if data.div.respond_to?(:span)
            puts data.div.span
          else
            puts data.div.div
          end

        end
      else
        "1"
      end

      puts @line
    end
  end
end
