require 'netdic/default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsNetDicV09 = "http://btonic.est.co.jp/NetDic/NetDicV09"
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"

  EncodedRegistry.register(
    :class => ArrayOfDicInfo,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfDicInfo"),
    :schema_element => [
      ["dicInfo", ["DicInfo[]", XSD::QName.new(NsNetDicV09, "DicInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DicInfo,
    :schema_type => XSD::QName.new(NsNetDicV09, "DicInfo"),
    :schema_element => [
      ["dicID", [nil, XSD::QName.new(NsNetDicV09, "DicID")]],
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "FullName")], [0, 1]],
      ["shortName", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ShortName")], [0, 1]],
      ["publisher", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "Publisher")], [0, 1]],
      ["abbrev", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "Abbrev")], [0, 1]],
      ["startItemID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "StartItemID")], [0, 1]],
      ["scopeList", ["ArrayOfScope", XSD::QName.new(NsNetDicV09, "ScopeList")], [0, 1]],
      ["searchOptionList", ["ArrayOfSearchOption", XSD::QName.new(NsNetDicV09, "SearchOptionList")], [0, 1]],
      ["defSearchOptionIndex", ["SOAP::SOAPInt", XSD::QName.new(NsNetDicV09, "DefSearchOptionIndex")]],
      ["itemMapList", ["ArrayOfString", XSD::QName.new(NsNetDicV09, "ItemMapList")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfScope,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfScope"),
    :schema_element => [
      ["scope", ["Scope[]", XSD::QName.new(NsNetDicV09, "Scope")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Scope,
    :schema_type => XSD::QName.new(NsNetDicV09, "Scope"),
    :schema_element => [
      ["iD", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "Name")], [0, 1]],
      ["values", ["ArrayOfString", XSD::QName.new(NsNetDicV09, "Values")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfSearchOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfSearchOption"),
    :schema_element => [
      ["searchOption", ["SearchOption[]", XSD::QName.new(NsNetDicV09, "SearchOption")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "SearchOption"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "Name")], [0, 1]],
      ["scopeID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ScopeID")], [0, 1]],
      ["matchOption", ["MatchOption", XSD::QName.new(NsNetDicV09, "MatchOption")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfGuid,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfGuid"),
    :schema_element => [
      ["guid", "[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfQuery,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfQuery"),
    :schema_element => [
      ["query", ["Query[]", XSD::QName.new(NsNetDicV09, "Query")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Query,
    :schema_type => XSD::QName.new(NsNetDicV09, "Query"),
    :schema_element => [
      ["words", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "Words")], [0, 1]],
      ["scopeID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ScopeID")], [0, 1]],
      ["matchOption", ["MatchOption", XSD::QName.new(NsNetDicV09, "MatchOption")]],
      ["mergeOption", ["MergeOption", XSD::QName.new(NsNetDicV09, "MergeOption")]]
    ]
  )

  EncodedRegistry.register(
    :class => ContentProfile,
    :schema_type => XSD::QName.new(NsNetDicV09, "ContentProfile"),
    :schema_element => [
      ["formatType", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "FormatType")], [0, 1]],
      ["resourceOption", ["ResourceOption", XSD::QName.new(NsNetDicV09, "ResourceOption")]],
      ["charsetOption", ["CharsetOption", XSD::QName.new(NsNetDicV09, "CharsetOption")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfDicItem,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfDicItem"),
    :schema_element => [
      ["dicItem", ["DicItem[]", XSD::QName.new(NsNetDicV09, "DicItem")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => DicItem,
    :schema_type => XSD::QName.new(NsNetDicV09, "DicItem"),
    :schema_element => [
      ["dicID", [nil, XSD::QName.new(NsNetDicV09, "DicID")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ItemID")], [0, 1]],
      ["locID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "LocID")], [0, 1]],
      ["title", ["DicItem::Title", XSD::QName.new(NsNetDicV09, "Title")], [0, 1]],
      ["head", ["DicItem::Head", XSD::QName.new(NsNetDicV09, "Head")], [0, 1]],
      ["body", ["DicItem::Body", XSD::QName.new(NsNetDicV09, "Body")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DicItem::Title,
    :schema_name => XSD::QName.new(NsNetDicV09, "Title"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => DicItem::Head,
    :schema_name => XSD::QName.new(NsNetDicV09, "Head"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => DicItem::Body,
    :schema_name => XSD::QName.new(NsNetDicV09, "Body"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfUnsignedInt,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfUnsignedInt"),
    :schema_element => [
      ["unsignedInt", "SOAP::SOAPUnsignedInt[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfItemMapNode,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfItemMapNode"),
    :schema_element => [
      ["itemMapNode", ["ItemMapNode[]", XSD::QName.new(NsNetDicV09, "ItemMapNode")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemMapNode,
    :schema_type => XSD::QName.new(NsNetDicV09, "ItemMapNode"),
    :schema_element => [
      ["title", ["ItemMapNode::Title", XSD::QName.new(NsNetDicV09, "Title")], [0, 1]],
      ["refItemID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "RefItemID")], [0, 1]],
      ["refLocID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "RefLocID")], [0, 1]],
      ["childCount", ["SOAP::SOAPInt", XSD::QName.new(NsNetDicV09, "ChildCount")]],
      ["childNodes", ["ArrayOfItemMapNode", XSD::QName.new(NsNetDicV09, "ChildNodes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemMapNode::Title,
    :schema_name => XSD::QName.new(NsNetDicV09, "Title"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => ArrayOfItemReferenceInfo,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfItemReferenceInfo"),
    :schema_element => [
      ["itemReferenceInfo", ["ItemReferenceInfo[]", XSD::QName.new(NsNetDicV09, "ItemReferenceInfo")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemReferenceInfo,
    :schema_type => XSD::QName.new(NsNetDicV09, "ItemReferenceInfo"),
    :schema_element => [
      ["dicID", [nil, XSD::QName.new(NsNetDicV09, "DicID")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ItemID")], [0, 1]],
      ["dicName", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "DicName")], [0, 1]],
      ["title", ["ItemReferenceInfo::Title", XSD::QName.new(NsNetDicV09, "Title")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsNetDicV09, "Count")]]
    ]
  )

  EncodedRegistry.register(
    :class => ItemReferenceInfo::Title,
    :schema_name => XSD::QName.new(NsNetDicV09, "Title"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  EncodedRegistry.register(
    :class => MatchOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "MatchOption")
  )

  EncodedRegistry.register(
    :class => MergeOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "MergeOption")
  )

  EncodedRegistry.register(
    :class => ResourceOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "ResourceOption")
  )

  EncodedRegistry.register(
    :class => CharsetOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "CharsetOption")
  )

  LiteralRegistry.register(
    :class => ArrayOfDicInfo,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfDicInfo"),
    :schema_element => [
      ["dicInfo", ["DicInfo[]", XSD::QName.new(NsNetDicV09, "DicInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DicInfo,
    :schema_type => XSD::QName.new(NsNetDicV09, "DicInfo"),
    :schema_element => [
      ["dicID", [nil, XSD::QName.new(NsNetDicV09, "DicID")]],
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "FullName")], [0, 1]],
      ["shortName", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ShortName")], [0, 1]],
      ["publisher", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "Publisher")], [0, 1]],
      ["abbrev", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "Abbrev")], [0, 1]],
      ["startItemID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "StartItemID")], [0, 1]],
      ["scopeList", ["ArrayOfScope", XSD::QName.new(NsNetDicV09, "ScopeList")], [0, 1]],
      ["searchOptionList", ["ArrayOfSearchOption", XSD::QName.new(NsNetDicV09, "SearchOptionList")], [0, 1]],
      ["defSearchOptionIndex", ["SOAP::SOAPInt", XSD::QName.new(NsNetDicV09, "DefSearchOptionIndex")]],
      ["itemMapList", ["ArrayOfString", XSD::QName.new(NsNetDicV09, "ItemMapList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfScope,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfScope"),
    :schema_element => [
      ["scope", ["Scope[]", XSD::QName.new(NsNetDicV09, "Scope")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Scope,
    :schema_type => XSD::QName.new(NsNetDicV09, "Scope"),
    :schema_element => [
      ["iD", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ID")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "Name")], [0, 1]],
      ["values", ["ArrayOfString", XSD::QName.new(NsNetDicV09, "Values")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfString,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfString"),
    :schema_element => [
      ["string", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfSearchOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfSearchOption"),
    :schema_element => [
      ["searchOption", ["SearchOption[]", XSD::QName.new(NsNetDicV09, "SearchOption")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "SearchOption"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "Name")], [0, 1]],
      ["scopeID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ScopeID")], [0, 1]],
      ["matchOption", ["MatchOption", XSD::QName.new(NsNetDicV09, "MatchOption")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfGuid,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfGuid"),
    :schema_element => [
      ["guid", "[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfQuery,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfQuery"),
    :schema_element => [
      ["query", ["Query[]", XSD::QName.new(NsNetDicV09, "Query")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Query,
    :schema_type => XSD::QName.new(NsNetDicV09, "Query"),
    :schema_element => [
      ["words", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "Words")], [0, 1]],
      ["scopeID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ScopeID")], [0, 1]],
      ["matchOption", ["MatchOption", XSD::QName.new(NsNetDicV09, "MatchOption")]],
      ["mergeOption", ["MergeOption", XSD::QName.new(NsNetDicV09, "MergeOption")]]
    ]
  )

  LiteralRegistry.register(
    :class => ContentProfile,
    :schema_type => XSD::QName.new(NsNetDicV09, "ContentProfile"),
    :schema_element => [
      ["formatType", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "FormatType")], [0, 1]],
      ["resourceOption", ["ResourceOption", XSD::QName.new(NsNetDicV09, "ResourceOption")]],
      ["charsetOption", ["CharsetOption", XSD::QName.new(NsNetDicV09, "CharsetOption")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDicItem,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfDicItem"),
    :schema_element => [
      ["dicItem", ["DicItem[]", XSD::QName.new(NsNetDicV09, "DicItem")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => DicItem,
    :schema_type => XSD::QName.new(NsNetDicV09, "DicItem"),
    :schema_element => [
      ["dicID", [nil, XSD::QName.new(NsNetDicV09, "DicID")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ItemID")], [0, 1]],
      ["locID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "LocID")], [0, 1]],
      ["title", ["DicItem::Title", XSD::QName.new(NsNetDicV09, "Title")], [0, 1]],
      ["head", ["DicItem::Head", XSD::QName.new(NsNetDicV09, "Head")], [0, 1]],
      ["body", ["DicItem::Body", XSD::QName.new(NsNetDicV09, "Body")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DicItem::Title,
    :schema_name => XSD::QName.new(NsNetDicV09, "Title"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => DicItem::Head,
    :schema_name => XSD::QName.new(NsNetDicV09, "Head"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => DicItem::Body,
    :schema_name => XSD::QName.new(NsNetDicV09, "Body"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfUnsignedInt,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfUnsignedInt"),
    :schema_element => [
      ["unsignedInt", "SOAP::SOAPUnsignedInt[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfItemMapNode,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfItemMapNode"),
    :schema_element => [
      ["itemMapNode", ["ItemMapNode[]", XSD::QName.new(NsNetDicV09, "ItemMapNode")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemMapNode,
    :schema_type => XSD::QName.new(NsNetDicV09, "ItemMapNode"),
    :schema_element => [
      ["title", ["ItemMapNode::Title", XSD::QName.new(NsNetDicV09, "Title")], [0, 1]],
      ["refItemID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "RefItemID")], [0, 1]],
      ["refLocID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "RefLocID")], [0, 1]],
      ["childCount", ["SOAP::SOAPInt", XSD::QName.new(NsNetDicV09, "ChildCount")]],
      ["childNodes", ["ArrayOfItemMapNode", XSD::QName.new(NsNetDicV09, "ChildNodes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemMapNode::Title,
    :schema_name => XSD::QName.new(NsNetDicV09, "Title"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfItemReferenceInfo,
    :schema_type => XSD::QName.new(NsNetDicV09, "ArrayOfItemReferenceInfo"),
    :schema_element => [
      ["itemReferenceInfo", ["ItemReferenceInfo[]", XSD::QName.new(NsNetDicV09, "ItemReferenceInfo")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemReferenceInfo,
    :schema_type => XSD::QName.new(NsNetDicV09, "ItemReferenceInfo"),
    :schema_element => [
      ["dicID", [nil, XSD::QName.new(NsNetDicV09, "DicID")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ItemID")], [0, 1]],
      ["dicName", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "DicName")], [0, 1]],
      ["title", ["ItemReferenceInfo::Title", XSD::QName.new(NsNetDicV09, "Title")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(NsNetDicV09, "Count")]]
    ]
  )

  LiteralRegistry.register(
    :class => ItemReferenceInfo::Title,
    :schema_name => XSD::QName.new(NsNetDicV09, "Title"),
    :is_anonymous => true,
    :schema_qualified => true,
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  LiteralRegistry.register(
    :class => MatchOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "MatchOption")
  )

  LiteralRegistry.register(
    :class => MergeOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "MergeOption")
  )

  LiteralRegistry.register(
    :class => ResourceOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "ResourceOption")
  )

  LiteralRegistry.register(
    :class => CharsetOption,
    :schema_type => XSD::QName.new(NsNetDicV09, "CharsetOption")
  )

  LiteralRegistry.register(
    :class => GetDicList,
    :schema_name => XSD::QName.new(NsNetDicV09, "GetDicList"),
    :schema_element => [
      ["authTicket", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "AuthTicket")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDicListResponse,
    :schema_name => XSD::QName.new(NsNetDicV09, "GetDicListResponse"),
    :schema_element => [
      ["getDicListResult", ["ArrayOfDicInfo", XSD::QName.new(NsNetDicV09, "GetDicListResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchDicItem,
    :schema_name => XSD::QName.new(NsNetDicV09, "SearchDicItem"),
    :schema_element => [
      ["authTicket", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "AuthTicket")], [0, 1]],
      ["dicIDList", ["ArrayOfGuid", XSD::QName.new(NsNetDicV09, "DicIDList")], [0, 1]],
      ["queryList", ["ArrayOfQuery", XSD::QName.new(NsNetDicV09, "QueryList")], [0, 1]],
      ["contentProfile", ["ContentProfile", XSD::QName.new(NsNetDicV09, "ContentProfile")], [0, 1]],
      ["sortOrderID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "SortOrderID")], [0, 1]],
      ["itemStartIndex", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsNetDicV09, "ItemStartIndex")]],
      ["itemCount", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsNetDicV09, "ItemCount")]],
      ["completeItemCount", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsNetDicV09, "CompleteItemCount")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchDicItemResponse,
    :schema_name => XSD::QName.new(NsNetDicV09, "SearchDicItemResponse"),
    :schema_element => [
      ["searchDicItemResult", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsNetDicV09, "SearchDicItemResult")]],
      ["itemList", ["ArrayOfDicItem", XSD::QName.new(NsNetDicV09, "ItemList")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDicItem,
    :schema_name => XSD::QName.new(NsNetDicV09, "GetDicItem"),
    :schema_element => [
      ["authTicket", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "AuthTicket")], [0, 1]],
      ["dicID", [nil, XSD::QName.new(NsNetDicV09, "DicID")]],
      ["itemID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "ItemID")], [0, 1]],
      ["locID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "LocID")], [0, 1]],
      ["contentProfile", ["ContentProfile", XSD::QName.new(NsNetDicV09, "ContentProfile")], [0, 1]],
      ["queryListForHighLight", ["ArrayOfQuery", XSD::QName.new(NsNetDicV09, "QueryListForHighLight")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDicItemResponse,
    :schema_name => XSD::QName.new(NsNetDicV09, "GetDicItemResponse"),
    :schema_element => [
      ["getDicItemResult", ["DicItem", XSD::QName.new(NsNetDicV09, "GetDicItemResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetItemMapNodes,
    :schema_name => XSD::QName.new(NsNetDicV09, "GetItemMapNodes"),
    :schema_element => [
      ["authTicket", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "AuthTicket")], [0, 1]],
      ["dicID", [nil, XSD::QName.new(NsNetDicV09, "DicID")]],
      ["mapID", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "MapID")], [0, 1]],
      ["parentNodePath", ["ArrayOfUnsignedInt", XSD::QName.new(NsNetDicV09, "ParentNodePath")], [0, 1]],
      ["depth", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsNetDicV09, "Depth")]],
      ["contentProfile", ["ContentProfile", XSD::QName.new(NsNetDicV09, "ContentProfile")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetItemMapNodesResponse,
    :schema_name => XSD::QName.new(NsNetDicV09, "GetItemMapNodesResponse"),
    :schema_element => [
      ["getItemMapNodesResult", ["ArrayOfItemMapNode", XSD::QName.new(NsNetDicV09, "GetItemMapNodesResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDicItemReferenceRanking,
    :schema_name => XSD::QName.new(NsNetDicV09, "GetDicItemReferenceRanking"),
    :schema_element => [
      ["authTicket", ["SOAP::SOAPString", XSD::QName.new(NsNetDicV09, "AuthTicket")], [0, 1]],
      ["dicIDList", ["ArrayOfGuid", XSD::QName.new(NsNetDicV09, "DicIDList")], [0, 1]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsNetDicV09, "StartDate")]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(NsNetDicV09, "EndDate")]],
      ["reqCount", ["SOAP::SOAPUnsignedInt", XSD::QName.new(NsNetDicV09, "ReqCount")]],
      ["contentProfile", ["ContentProfile", XSD::QName.new(NsNetDicV09, "ContentProfile")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GetDicItemReferenceRankingResponse,
    :schema_name => XSD::QName.new(NsNetDicV09, "GetDicItemReferenceRankingResponse"),
    :schema_element => [
      ["getDicItemReferenceRankingResult", ["ArrayOfItemReferenceInfo", XSD::QName.new(NsNetDicV09, "GetDicItemReferenceRankingResult")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ArrayOfDicInfo,
    :schema_name => XSD::QName.new(NsNetDicV09, "ArrayOfDicInfo"),
    :schema_element => [
      ["dicInfo", ["DicInfo[]", XSD::QName.new(NsNetDicV09, "DicInfo")], [0, nil]]
    ]
  )
end
