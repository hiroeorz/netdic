require 'xsd/qname'

# {http://btonic.est.co.jp/NetDic/NetDicV09}ArrayOfDicInfo
class ArrayOfDicInfo < ::Array
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}DicInfo
#   dicID - (any)
#   fullName - SOAP::SOAPString
#   shortName - SOAP::SOAPString
#   publisher - SOAP::SOAPString
#   abbrev - SOAP::SOAPString
#   startItemID - SOAP::SOAPString
#   scopeList - ArrayOfScope
#   searchOptionList - ArrayOfSearchOption
#   defSearchOptionIndex - SOAP::SOAPInt
#   itemMapList - ArrayOfString
class DicInfo
  attr_accessor :dicID
  attr_accessor :fullName
  attr_accessor :shortName
  attr_accessor :publisher
  attr_accessor :abbrev
  attr_accessor :startItemID
  attr_accessor :scopeList
  attr_accessor :searchOptionList
  attr_accessor :defSearchOptionIndex
  attr_accessor :itemMapList

  def initialize(dicID = nil, fullName = nil, shortName = nil, publisher = nil, abbrev = nil, startItemID = nil, scopeList = nil, searchOptionList = nil, defSearchOptionIndex = nil, itemMapList = nil)
    @dicID = dicID
    @fullName = fullName
    @shortName = shortName
    @publisher = publisher
    @abbrev = abbrev
    @startItemID = startItemID
    @scopeList = scopeList
    @searchOptionList = searchOptionList
    @defSearchOptionIndex = defSearchOptionIndex
    @itemMapList = itemMapList
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ArrayOfScope
class ArrayOfScope < ::Array
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}Scope
#   iD - SOAP::SOAPString
#   name - SOAP::SOAPString
#   values - ArrayOfString
class Scope
  attr_accessor :iD
  attr_accessor :name
  attr_accessor :values

  def initialize(iD = nil, name = nil, values = nil)
    @iD = iD
    @name = name
    @values = values
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ArrayOfString
class ArrayOfString < ::Array
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ArrayOfSearchOption
class ArrayOfSearchOption < ::Array
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}SearchOption
#   name - SOAP::SOAPString
#   scopeID - SOAP::SOAPString
#   matchOption - MatchOption
class SearchOption
  attr_accessor :name
  attr_accessor :scopeID
  attr_accessor :matchOption

  def initialize(name = nil, scopeID = nil, matchOption = nil)
    @name = name
    @scopeID = scopeID
    @matchOption = matchOption
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ArrayOfGuid
class ArrayOfGuid < ::Array
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ArrayOfQuery
class ArrayOfQuery < ::Array
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}Query
#   words - SOAP::SOAPString
#   scopeID - SOAP::SOAPString
#   matchOption - MatchOption
#   mergeOption - MergeOption
class Query
  attr_accessor :words
  attr_accessor :scopeID
  attr_accessor :matchOption
  attr_accessor :mergeOption

  def initialize(words = nil, scopeID = nil, matchOption = nil, mergeOption = nil)
    @words = words
    @scopeID = scopeID
    @matchOption = matchOption
    @mergeOption = mergeOption
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ContentProfile
#   formatType - SOAP::SOAPString
#   resourceOption - ResourceOption
#   charsetOption - CharsetOption
class ContentProfile
  attr_accessor :formatType
  attr_accessor :resourceOption
  attr_accessor :charsetOption

  def initialize(formatType = nil, resourceOption = nil, charsetOption = nil)
    @formatType = formatType
    @resourceOption = resourceOption
    @charsetOption = charsetOption
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ArrayOfDicItem
class ArrayOfDicItem < ::Array
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}DicItem
#   dicID - (any)
#   itemID - SOAP::SOAPString
#   locID - SOAP::SOAPString
#   title - DicItem::Title
#   head - DicItem::Head
#   body - DicItem::Body
class DicItem

  # inner class for member: Title
  # {http://btonic.est.co.jp/NetDic/NetDicV09}Title
  class Title
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: Head
  # {http://btonic.est.co.jp/NetDic/NetDicV09}Head
  class Head
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  # inner class for member: Body
  # {http://btonic.est.co.jp/NetDic/NetDicV09}Body
  class Body
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :dicID
  attr_accessor :itemID
  attr_accessor :locID
  attr_accessor :title
  attr_accessor :head
  attr_accessor :body

  def initialize(dicID = nil, itemID = nil, locID = nil, title = nil, head = nil, body = nil)
    @dicID = dicID
    @itemID = itemID
    @locID = locID
    @title = title
    @head = head
    @body = body
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ArrayOfUnsignedInt
class ArrayOfUnsignedInt < ::Array
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ArrayOfItemMapNode
class ArrayOfItemMapNode < ::Array
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ItemMapNode
#   title - ItemMapNode::Title
#   refItemID - SOAP::SOAPString
#   refLocID - SOAP::SOAPString
#   childCount - SOAP::SOAPInt
#   childNodes - ArrayOfItemMapNode
class ItemMapNode

  # inner class for member: Title
  # {http://btonic.est.co.jp/NetDic/NetDicV09}Title
  class Title
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :title
  attr_accessor :refItemID
  attr_accessor :refLocID
  attr_accessor :childCount
  attr_accessor :childNodes

  def initialize(title = nil, refItemID = nil, refLocID = nil, childCount = nil, childNodes = nil)
    @title = title
    @refItemID = refItemID
    @refLocID = refLocID
    @childCount = childCount
    @childNodes = childNodes
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ArrayOfItemReferenceInfo
class ArrayOfItemReferenceInfo < ::Array
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ItemReferenceInfo
#   dicID - (any)
#   itemID - SOAP::SOAPString
#   dicName - SOAP::SOAPString
#   title - ItemReferenceInfo::Title
#   count - SOAP::SOAPInt
class ItemReferenceInfo

  # inner class for member: Title
  # {http://btonic.est.co.jp/NetDic/NetDicV09}Title
  class Title
    attr_reader :__xmlele_any

    def set_any(elements)
      @__xmlele_any = elements
    end

    def initialize
      @__xmlele_any = nil
    end
  end

  attr_accessor :dicID
  attr_accessor :itemID
  attr_accessor :dicName
  attr_accessor :title
  attr_accessor :count

  def initialize(dicID = nil, itemID = nil, dicName = nil, title = nil, count = nil)
    @dicID = dicID
    @itemID = itemID
    @dicName = dicName
    @title = title
    @count = count
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}MatchOption
class MatchOption < ::String
  CONTAIN = MatchOption.new("CONTAIN")
  ENDWITH = MatchOption.new("ENDWITH")
  EXACT = MatchOption.new("EXACT")
  STARTWITH = MatchOption.new("STARTWITH")
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}MergeOption
class MergeOption < ::String
  AND = MergeOption.new("AND")
  OR = MergeOption.new("OR")
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}ResourceOption
class ResourceOption < ::String
  ID = ResourceOption.new("ID")
  URI = ResourceOption.new("URI")
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}CharsetOption
class CharsetOption < ::String
  JIS = CharsetOption.new("JIS")
  MOJIKYO = CharsetOption.new("MOJIKYO")
  UNICODE = CharsetOption.new("UNICODE")
  WINJPENV = CharsetOption.new("WINJPENV")
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}GetDicList
#   authTicket - SOAP::SOAPString
class GetDicList
  attr_accessor :authTicket

  def initialize(authTicket = nil)
    @authTicket = authTicket
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}GetDicListResponse
#   getDicListResult - ArrayOfDicInfo
class GetDicListResponse
  attr_accessor :getDicListResult

  def initialize(getDicListResult = nil)
    @getDicListResult = getDicListResult
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}SearchDicItem
#   authTicket - SOAP::SOAPString
#   dicIDList - ArrayOfGuid
#   queryList - ArrayOfQuery
#   contentProfile - ContentProfile
#   sortOrderID - SOAP::SOAPString
#   itemStartIndex - SOAP::SOAPUnsignedInt
#   itemCount - SOAP::SOAPUnsignedInt
#   completeItemCount - SOAP::SOAPUnsignedInt
class SearchDicItem
  attr_accessor :authTicket
  attr_accessor :dicIDList
  attr_accessor :queryList
  attr_accessor :contentProfile
  attr_accessor :sortOrderID
  attr_accessor :itemStartIndex
  attr_accessor :itemCount
  attr_accessor :completeItemCount

  def initialize(authTicket = nil, dicIDList = nil, queryList = nil, contentProfile = nil, sortOrderID = nil, itemStartIndex = nil, itemCount = nil, completeItemCount = nil)
    @authTicket = authTicket
    @dicIDList = dicIDList
    @queryList = queryList
    @contentProfile = contentProfile
    @sortOrderID = sortOrderID
    @itemStartIndex = itemStartIndex
    @itemCount = itemCount
    @completeItemCount = completeItemCount
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}SearchDicItemResponse
#   searchDicItemResult - SOAP::SOAPUnsignedInt
#   itemList - ArrayOfDicItem
class SearchDicItemResponse
  attr_accessor :searchDicItemResult
  attr_accessor :itemList

  def initialize(searchDicItemResult = nil, itemList = nil)
    @searchDicItemResult = searchDicItemResult
    @itemList = itemList
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}GetDicItem
#   authTicket - SOAP::SOAPString
#   dicID - (any)
#   itemID - SOAP::SOAPString
#   locID - SOAP::SOAPString
#   contentProfile - ContentProfile
#   queryListForHighLight - ArrayOfQuery
class GetDicItem
  attr_accessor :authTicket
  attr_accessor :dicID
  attr_accessor :itemID
  attr_accessor :locID
  attr_accessor :contentProfile
  attr_accessor :queryListForHighLight

  def initialize(authTicket = nil, dicID = nil, itemID = nil, locID = nil, contentProfile = nil, queryListForHighLight = nil)
    @authTicket = authTicket
    @dicID = dicID
    @itemID = itemID
    @locID = locID
    @contentProfile = contentProfile
    @queryListForHighLight = queryListForHighLight
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}GetDicItemResponse
#   getDicItemResult - DicItem
class GetDicItemResponse
  attr_accessor :getDicItemResult

  def initialize(getDicItemResult = nil)
    @getDicItemResult = getDicItemResult
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}GetItemMapNodes
#   authTicket - SOAP::SOAPString
#   dicID - (any)
#   mapID - SOAP::SOAPString
#   parentNodePath - ArrayOfUnsignedInt
#   depth - SOAP::SOAPUnsignedInt
#   contentProfile - ContentProfile
class GetItemMapNodes
  attr_accessor :authTicket
  attr_accessor :dicID
  attr_accessor :mapID
  attr_accessor :parentNodePath
  attr_accessor :depth
  attr_accessor :contentProfile

  def initialize(authTicket = nil, dicID = nil, mapID = nil, parentNodePath = nil, depth = nil, contentProfile = nil)
    @authTicket = authTicket
    @dicID = dicID
    @mapID = mapID
    @parentNodePath = parentNodePath
    @depth = depth
    @contentProfile = contentProfile
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}GetItemMapNodesResponse
#   getItemMapNodesResult - ArrayOfItemMapNode
class GetItemMapNodesResponse
  attr_accessor :getItemMapNodesResult

  def initialize(getItemMapNodesResult = nil)
    @getItemMapNodesResult = getItemMapNodesResult
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}GetDicItemReferenceRanking
#   authTicket - SOAP::SOAPString
#   dicIDList - ArrayOfGuid
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   reqCount - SOAP::SOAPUnsignedInt
#   contentProfile - ContentProfile
class GetDicItemReferenceRanking
  attr_accessor :authTicket
  attr_accessor :dicIDList
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :reqCount
  attr_accessor :contentProfile

  def initialize(authTicket = nil, dicIDList = nil, startDate = nil, endDate = nil, reqCount = nil, contentProfile = nil)
    @authTicket = authTicket
    @dicIDList = dicIDList
    @startDate = startDate
    @endDate = endDate
    @reqCount = reqCount
    @contentProfile = contentProfile
  end
end

# {http://btonic.est.co.jp/NetDic/NetDicV09}GetDicItemReferenceRankingResponse
#   getDicItemReferenceRankingResult - ArrayOfItemReferenceInfo
class GetDicItemReferenceRankingResponse
  attr_accessor :getDicItemReferenceRankingResult

  def initialize(getDicItemReferenceRankingResult = nil)
    @getDicItemReferenceRankingResult = getDicItemReferenceRankingResult
  end
end
