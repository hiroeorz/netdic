require 'netdic/default.rb'
require 'netdic/defaultMappingRegistry.rb'
require 'soap/rpc/driver'

class NetDicV10Soap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://btonic.est.co.jp/Netdic/Netdicv10.asmx"

  Methods = [
    [ "http://btonic.est.co.jp/NetDic/NetDicV09/GetDicList",
      "getDicList",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://btonic.est.co.jp/NetDic/NetDicV09", "GetDicList"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://btonic.est.co.jp/NetDic/NetDicV09", "GetDicListResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://btonic.est.co.jp/NetDic/NetDicV09/SearchDicItem",
      "searchDicItem",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://btonic.est.co.jp/NetDic/NetDicV09", "SearchDicItem"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://btonic.est.co.jp/NetDic/NetDicV09", "SearchDicItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://btonic.est.co.jp/NetDic/NetDicV09/GetDicItem",
      "getDicItem",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://btonic.est.co.jp/NetDic/NetDicV09", "GetDicItem"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://btonic.est.co.jp/NetDic/NetDicV09", "GetDicItemResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://btonic.est.co.jp/NetDic/NetDicV09/GetItemMapNodes",
      "getItemMapNodes",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://btonic.est.co.jp/NetDic/NetDicV09", "GetItemMapNodes"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://btonic.est.co.jp/NetDic/NetDicV09", "GetItemMapNodesResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://btonic.est.co.jp/NetDic/NetDicV09/GetDicItemReferenceRanking",
      "getDicItemReferenceRanking",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://btonic.est.co.jp/NetDic/NetDicV09", "GetDicItemReferenceRanking"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://btonic.est.co.jp/NetDic/NetDicV09", "GetDicItemReferenceRankingResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end



