// class VideoIdSearchResponse {
//   ResponseContext? responseContext;
//   Contents? contents;
//   NavigationEndpoints? currentVideoEndpoint;
//   String? trackingParams;
//   PlayerOverlays? playerOverlays;
//   Overlay? overlay;
//   List<OnResponseReceivedEndpoints>? onResponseReceivedEndpoints;
//   List<EngagementPanels>? engagementPanels;
//   Topbar? topbar;
//   List<PageVisualEffects>? pageVisualEffects;
//   FrameworkUpdates? frameworkUpdates;
//
//   VideoIdSearchResponse(
//       {this.responseContext,
//         this.contents,
//         this.currentVideoEndpoint,
//         this.trackingParams,
//         this.playerOverlays,
//         this.overlay,
//         this.onResponseReceivedEndpoints,
//         this.engagementPanels,
//         this.topbar,
//         this.pageVisualEffects,
//         this.frameworkUpdates});
//
//   VideoIdSearchResponse.fromJson(Map<String, dynamic> json) {
//     responseContext = json['responseContext'] != null
//         ? ResponseContext.fromJson(json['responseContext'])
//         : null;
//     contents = json['contents'] != null
//         ? Contents.fromJson(json['contents'])
//         : null;
//     currentVideoEndpoint = json['currentVideoEndpoint'] != null
//         ? NavigationEndpoints.fromJson(json['currentVideoEndpoint'])
//         : null;
//     trackingParams = json['trackingParams'];
//     playerOverlays = json['playerOverlays'] != null
//         ? PlayerOverlays.fromJson(json['playerOverlays'])
//         : null;
//     overlay =
//     json['overlay'] != null ? Overlay.fromJson(json['overlay']) : null;
//     if (json['onResponseReceivedEndpoints'] != null) {
//       onResponseReceivedEndpoints = <OnResponseReceivedEndpoints>[];
//       json['onResponseReceivedEndpoints'].forEach((v) {
//         onResponseReceivedEndpoints!
//             .add(OnResponseReceivedEndpoints.fromJson(v));
//       });
//     }
//     if (json['engagementPanels'] != null) {
//       engagementPanels = <EngagementPanels>[];
//       json['engagementPanels'].forEach((v) {
//         engagementPanels!.add(EngagementPanels.fromJson(v));
//       });
//     }
//     topbar =
//     json['topbar'] != null ? Topbar.fromJson(json['topbar']) : null;
//     if (json['pageVisualEffects'] != null) {
//       pageVisualEffects = <PageVisualEffects>[];
//       json['pageVisualEffects'].forEach((v) {
//         pageVisualEffects!.add(PageVisualEffects.fromJson(v));
//       });
//     }
//     frameworkUpdates = json['frameworkUpdates'] != null
//         ? FrameworkUpdates.fromJson(json['frameworkUpdates'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (responseContext != null) {
//       data['responseContext'] = responseContext!.toJson();
//     }
//     if (contents != null) {
//       data['contents'] = contents!.toJson();
//     }
//     if (currentVideoEndpoint != null) {
//       data['currentVideoEndpoint'] = currentVideoEndpoint!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (playerOverlays != null) {
//       data['playerOverlays'] = playerOverlays!.toJson();
//     }
//     if (overlay != null) {
//       data['overlay'] = overlay!.toJson();
//     }
//     if (onResponseReceivedEndpoints != null) {
//       data['onResponseReceivedEndpoints'] =
//           onResponseReceivedEndpoints!.map((v) => v.toJson()).toList();
//     }
//     if (engagementPanels != null) {
//       data['engagementPanels'] =
//           engagementPanels!.map((v) => v.toJson()).toList();
//     }
//     if (topbar != null) {
//       data['topbar'] = topbar!.toJson();
//     }
//     if (pageVisualEffects != null) {
//       data['pageVisualEffects'] =
//           pageVisualEffects!.map((v) => v.toJson()).toList();
//     }
//     if (frameworkUpdates != null) {
//       data['frameworkUpdates'] = frameworkUpdates!.toJson();
//     }
//     return data;
//   }
// }
//
// class ResponseContext {
//   List<ServiceTrackingParams>? serviceTrackingParams;
//   MainAppWebResponseContext? mainAppWebResponseContext;
//   WebResponseContextExtensionData? webResponseContextExtensionData;
//
//   ResponseContext(
//       {this.serviceTrackingParams,
//         this.mainAppWebResponseContext,
//         this.webResponseContextExtensionData});
//
//   ResponseContext.fromJson(Map<String, dynamic> json) {
//     if (json['serviceTrackingParams'] != null) {
//       serviceTrackingParams = <ServiceTrackingParams>[];
//       json['serviceTrackingParams'].forEach((v) {
//         serviceTrackingParams!.add(ServiceTrackingParams.fromJson(v));
//       });
//     }
//     mainAppWebResponseContext = json['mainAppWebResponseContext'] != null
//         ? MainAppWebResponseContext.fromJson(
//         json['mainAppWebResponseContext'])
//         : null;
//     webResponseContextExtensionData =
//     json['webResponseContextExtensionData'] != null
//         ? WebResponseContextExtensionData.fromJson(
//         json['webResponseContextExtensionData'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (serviceTrackingParams != null) {
//       data['serviceTrackingParams'] =
//           serviceTrackingParams!.map((v) => v.toJson()).toList();
//     }
//     if (mainAppWebResponseContext != null) {
//       data['mainAppWebResponseContext'] =
//           mainAppWebResponseContext!.toJson();
//     }
//     if (webResponseContextExtensionData != null) {
//       data['webResponseContextExtensionData'] =
//           webResponseContextExtensionData!.toJson();
//     }
//     return data;
//   }
// }
//
// class ServiceTrackingParams {
//   String? service;
//   List<Params>? params;
//
//   ServiceTrackingParams({this.service, this.params});
//
//   ServiceTrackingParams.fromJson(Map<String, dynamic> json) {
//     service = json['service'];
//     if (json['params'] != null) {
//       params = <Params>[];
//       json['params'].forEach((v) {
//         params!.add(Params.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['service'] = service;
//     if (params != null) {
//       data['params'] = params!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Params {
//   String? key;
//   String? value;
//
//   Params({this.key, this.value});
//
//   Params.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     value = json['value'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['key'] = key;
//     data['value'] = value;
//     return data;
//   }
// }
//
// class MainAppWebResponseContext {
//   bool? loggedOut;
//
//   MainAppWebResponseContext({this.loggedOut});
//
//   MainAppWebResponseContext.fromJson(Map<String, dynamic> json) {
//     loggedOut = json['loggedOut'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['loggedOut'] = loggedOut;
//     return data;
//   }
// }
//
// class WebResponseContextExtensionData {
//   YtConfigData? ytConfigData;
//   WebPrefetchData? webPrefetchData;
//   bool? hasDecorated;
//
//   WebResponseContextExtensionData(
//       {this.ytConfigData, this.webPrefetchData, this.hasDecorated});
//
//   WebResponseContextExtensionData.fromJson(Map<String, dynamic> json) {
//     ytConfigData = json['ytConfigData'] != null
//         ? YtConfigData.fromJson(json['ytConfigData'])
//         : null;
//     webPrefetchData = json['webPrefetchData'] != null
//         ? WebPrefetchData.fromJson(json['webPrefetchData'])
//         : null;
//     hasDecorated = json['hasDecorated'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (ytConfigData != null) {
//       data['ytConfigData'] = ytConfigData!.toJson();
//     }
//     if (webPrefetchData != null) {
//       data['webPrefetchData'] = webPrefetchData!.toJson();
//     }
//     data['hasDecorated'] = hasDecorated;
//     return data;
//   }
// }
//
// class YtConfigData {
//   String? visitorData;
//   int? rootVisualElementType;
//
//   YtConfigData({this.visitorData, this.rootVisualElementType});
//
//   YtConfigData.fromJson(Map<String, dynamic> json) {
//     visitorData = json['visitorData'];
//     rootVisualElementType = json['rootVisualElementType'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['visitorData'] = visitorData;
//     data['rootVisualElementType'] = rootVisualElementType;
//     return data;
//   }
// }
//
// class WebPrefetchData {
//   List<NavigationEndpoints>? navigationEndpoints;
//
//   WebPrefetchData({this.navigationEndpoints});
//
//   WebPrefetchData.fromJson(Map<String, dynamic> json) {
//     if (json['navigationEndpoints'] != null) {
//       navigationEndpoints = <NavigationEndpoints>[];
//       json['navigationEndpoints'].forEach((v) {
//         navigationEndpoints!.add(NavigationEndpoints.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (navigationEndpoints != null) {
//       data['navigationEndpoints'] =
//           navigationEndpoints!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class NavigationEndpoints {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   WatchEndpoint? watchEndpoint;
//
//   NavigationEndpoints(
//       {this.clickTrackingParams, this.commandMetadata, this.watchEndpoint});
//
//   NavigationEndpoints.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     watchEndpoint = json['watchEndpoint'] != null
//         ? WatchEndpoint.fromJson(json['watchEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (watchEndpoint != null) {
//       data['watchEndpoint'] = watchEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class CommandMetadata {
//   WebCommandMetadata? webCommandMetadata;
//
//   CommandMetadata({this.webCommandMetadata});
//
//   CommandMetadata.fromJson(Map<String, dynamic> json) {
//     webCommandMetadata = json['webCommandMetadata'] != null
//         ? WebCommandMetadata.fromJson(json['webCommandMetadata'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (webCommandMetadata != null) {
//       data['webCommandMetadata'] = webCommandMetadata!.toJson();
//     }
//     return data;
//   }
// }
//
// class WebCommandMetadata {
//   String? url;
//   String? webPageType;
//   int? rootVe;
//
//   WebCommandMetadata({this.url, this.webPageType, this.rootVe});
//
//   WebCommandMetadata.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//     webPageType = json['webPageType'];
//     rootVe = json['rootVe'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['url'] = url;
//     data['webPageType'] = webPageType;
//     data['rootVe'] = rootVe;
//     return data;
//   }
// }
//
// class WatchEndpoint {
//   String? videoId;
//   String? params;
//   String? playerParams;
//   WatchEndpointSupportedPrefetchConfig? watchEndpointSupportedPrefetchConfig;
//
//   WatchEndpoint(
//       {this.videoId,
//         this.params,
//         this.playerParams,
//         this.watchEndpointSupportedPrefetchConfig});
//
//   WatchEndpoint.fromJson(Map<String, dynamic> json) {
//     videoId = json['videoId'];
//     params = json['params'];
//     playerParams = json['playerParams'];
//     watchEndpointSupportedPrefetchConfig =
//     json['watchEndpointSupportedPrefetchConfig'] != null
//         ? WatchEndpointSupportedPrefetchConfig.fromJson(
//         json['watchEndpointSupportedPrefetchConfig'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['videoId'] = videoId;
//     data['params'] = this.params;
//     data['playerParams'] = this.playerParams;
//     if (this.watchEndpointSupportedPrefetchConfig != null) {
//       data['watchEndpointSupportedPrefetchConfig'] =
//           this.watchEndpointSupportedPrefetchConfig!.toJson();
//     }
//     return data;
//   }
// }
//
// class WatchEndpointSupportedPrefetchConfig {
//   PrefetchHintConfig? prefetchHintConfig;
//
//   WatchEndpointSupportedPrefetchConfig({this.prefetchHintConfig});
//
//   WatchEndpointSupportedPrefetchConfig.fromJson(Map<String, dynamic> json) {
//     prefetchHintConfig = json['prefetchHintConfig'] != null
//         ? PrefetchHintConfig.fromJson(json['prefetchHintConfig'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (prefetchHintConfig != null) {
//       data['prefetchHintConfig'] = prefetchHintConfig!.toJson();
//     }
//     return data;
//   }
// }
//
// class PrefetchHintConfig {
//   int? prefetchPriority;
//   int? countdownUiRelativeSecondsPrefetchCondition;
//
//   PrefetchHintConfig(
//       {this.prefetchPriority,
//         this.countdownUiRelativeSecondsPrefetchCondition});
//
//   PrefetchHintConfig.fromJson(Map<String, dynamic> json) {
//     prefetchPriority = json['prefetchPriority'];
//     countdownUiRelativeSecondsPrefetchCondition =
//     json['countdownUiRelativeSecondsPrefetchCondition'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['prefetchPriority'] = prefetchPriority;
//     data['countdownUiRelativeSecondsPrefetchCondition'] =
//         countdownUiRelativeSecondsPrefetchCondition;
//     return data;
//   }
// }
//
// class Contents {
//   TwoColumnWatchNextResults? twoColumnWatchNextResults;
//
//   Contents({this.twoColumnWatchNextResults});
//
//   Contents.fromJson(Map<String, dynamic> json) {
//     twoColumnWatchNextResults = json['twoColumnWatchNextResults'] != null
//         ? TwoColumnWatchNextResults.fromJson(
//         json['twoColumnWatchNextResults'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.twoColumnWatchNextResults != null) {
//       data['twoColumnWatchNextResults'] =
//           this.twoColumnWatchNextResults!.toJson();
//     }
//     return data;
//   }
// }
//
// class TwoColumnWatchNextResults {
//   Results? results;
//   SecondaryResults? secondaryResults;
//   Autoplay? autoplay;
//
//   TwoColumnWatchNextResults(
//       {this.results, this.secondaryResults, this.autoplay});
//
//   TwoColumnWatchNextResults.fromJson(Map<String, dynamic> json) {
//     results =
//     json['results'] != null ? Results.fromJson(json['results']) : null;
//     secondaryResults = json['secondaryResults'] != null
//         ? SecondaryResults.fromJson(json['secondaryResults'])
//         : null;
//     autoplay = json['autoplay'] != null
//         ? Autoplay.fromJson(json['autoplay'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (results != null) {
//       data['results'] = results!.toJson();
//     }
//     if (secondaryResults != null) {
//       data['secondaryResults'] = secondaryResults!.toJson();
//     }
//     if (autoplay != null) {
//       data['autoplay'] = autoplay!.toJson();
//     }
//     return data;
//   }
// }
//
// class Results {
//   Results? results;
//
//   Results({this.results});
//
//   Results.fromJson(Map<String, dynamic> json) {
//     results =
//     json['results'] != null ? Results.fromJson(json['results']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.results != null) {
//       data['results'] = this.results!.toJson();
//     }
//     return data;
//   }
// }
//
// class Results {
//   List<Contents>? contents;
//   String? trackingParams;
//
//   Results({this.contents, this.trackingParams});
//
//   Results.fromJson(Map<String, dynamic> json) {
//     if (json['contents'] != null) {
//       contents = <Contents>[];
//       json['contents'].forEach((v) {
//         contents!.add(Contents.fromJson(v));
//       });
//     }
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.contents != null) {
//       data['contents'] = this.contents!.map((v) => v.toJson()).toList();
//     }
//     data['trackingParams'] = this.trackingParams;
//     return data;
//   }
// }
//
// class Contents {
//   VideoPrimaryInfoRenderer? videoPrimaryInfoRenderer;
//   VideoSecondaryInfoRenderer? videoSecondaryInfoRenderer;
//   ItemSectionRenderer? itemSectionRenderer;
//
//   Contents(
//       {this.videoPrimaryInfoRenderer,
//         this.videoSecondaryInfoRenderer,
//         this.itemSectionRenderer});
//
//   Contents.fromJson(Map<String, dynamic> json) {
//     videoPrimaryInfoRenderer = json['videoPrimaryInfoRenderer'] != null
//         ? VideoPrimaryInfoRenderer.fromJson(
//         json['videoPrimaryInfoRenderer'])
//         : null;
//     videoSecondaryInfoRenderer = json['videoSecondaryInfoRenderer'] != null
//         ? VideoSecondaryInfoRenderer.fromJson(
//         json['videoSecondaryInfoRenderer'])
//         : null;
//     itemSectionRenderer = json['itemSectionRenderer'] != null
//         ? ItemSectionRenderer.fromJson(json['itemSectionRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.videoPrimaryInfoRenderer != null) {
//       data['videoPrimaryInfoRenderer'] =
//           this.videoPrimaryInfoRenderer!.toJson();
//     }
//     if (this.videoSecondaryInfoRenderer != null) {
//       data['videoSecondaryInfoRenderer'] =
//           this.videoSecondaryInfoRenderer!.toJson();
//     }
//     if (this.itemSectionRenderer != null) {
//       data['itemSectionRenderer'] = this.itemSectionRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class VideoPrimaryInfoRenderer {
//   Title? title;
//   ViewCount? viewCount;
//   VideoActions? videoActions;
//   String? trackingParams;
//   Title? superTitleLink;
//   ViewCount? dateText;
//   DefaultText? relativeDateText;
//
//   VideoPrimaryInfoRenderer(
//       {this.title,
//         this.viewCount,
//         this.videoActions,
//         this.trackingParams,
//         this.superTitleLink,
//         this.dateText,
//         this.relativeDateText});
//
//   VideoPrimaryInfoRenderer.fromJson(Map<String, dynamic> json) {
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     viewCount = json['viewCount'] != null
//         ? ViewCount.fromJson(json['viewCount'])
//         : null;
//     videoActions = json['videoActions'] != null
//         ? VideoActions.fromJson(json['videoActions'])
//         : null;
//     trackingParams = json['trackingParams'];
//     superTitleLink = json['superTitleLink'] != null
//         ? Title.fromJson(json['superTitleLink'])
//         : null;
//     dateText = json['dateText'] != null
//         ? ViewCount.fromJson(json['dateText'])
//         : null;
//     relativeDateText = json['relativeDateText'] != null
//         ? DefaultText.fromJson(json['relativeDateText'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (viewCount != null) {
//       data['viewCount'] = viewCount!.toJson();
//     }
//     if (videoActions != null) {
//       data['videoActions'] = videoActions!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (superTitleLink != null) {
//       data['superTitleLink'] = superTitleLink!.toJson();
//     }
//     if (dateText != null) {
//       data['dateText'] = dateText!.toJson();
//     }
//     if (relativeDateText != null) {
//       data['relativeDateText'] = relativeDateText!.toJson();
//     }
//     return data;
//   }
// }
//
// class Title {
//   List<Runs>? runs;
//
//   Title({this.runs});
//
//   Title.fromJson(Map<String, dynamic> json) {
//     if (json['runs'] != null) {
//       runs = <Runs>[];
//       json['runs'].forEach((v) {
//         runs!.add(Runs.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (runs != null) {
//       data['runs'] = runs!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Runs {
//   String? text;
//
//   Runs({this.text});
//
//   Runs.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['text'] = text;
//     return data;
//   }
// }
//
// class ViewCount {
//   VideoViewCountRenderer? videoViewCountRenderer;
//
//   ViewCount({this.videoViewCountRenderer});
//
//   ViewCount.fromJson(Map<String, dynamic> json) {
//     videoViewCountRenderer = json['videoViewCountRenderer'] != null
//         ? VideoViewCountRenderer.fromJson(json['videoViewCountRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.videoViewCountRenderer != null) {
//       data['videoViewCountRenderer'] = this.videoViewCountRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class VideoViewCountRenderer {
//   ViewCount? viewCount;
//   ViewCount? shortViewCount;
//
//   VideoViewCountRenderer({this.viewCount, this.shortViewCount});
//
//   VideoViewCountRenderer.fromJson(Map<String, dynamic> json) {
//     viewCount = json['viewCount'] != null
//         ? ViewCount.fromJson(json['viewCount'])
//         : null;
//     shortViewCount = json['shortViewCount'] != null
//         ? ViewCount.fromJson(json['shortViewCount'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (viewCount != null) {
//       data['viewCount'] = viewCount!.toJson();
//     }
//     if (shortViewCount != null) {
//       data['shortViewCount'] = shortViewCount!.toJson();
//     }
//     return data;
//   }
// }
//
// class ViewCount {
//   String? simpleText;
//
//   ViewCount({this.simpleText});
//
//   ViewCount.fromJson(Map<String, dynamic> json) {
//     simpleText = json['simpleText'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['simpleText'] = simpleText;
//     return data;
//   }
// }
//
// class VideoActions {
//   MenuRenderer? menuRenderer;
//
//   VideoActions({this.menuRenderer});
//
//   VideoActions.fromJson(Map<String, dynamic> json) {
//     menuRenderer = json['menuRenderer'] != null
//         ? MenuRenderer.fromJson(json['menuRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (menuRenderer != null) {
//       data['menuRenderer'] = menuRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class MenuRenderer {
//   List<Items>? items;
//   String? trackingParams;
//   List<TopLevelButtons>? topLevelButtons;
//   Accessibility? accessibility;
//   List<FlexibleItems>? flexibleItems;
//
//   MenuRenderer(
//       {this.items,
//         this.trackingParams,
//         this.topLevelButtons,
//         this.accessibility,
//         this.flexibleItems});
//
//   MenuRenderer.fromJson(Map<String, dynamic> json) {
//     if (json['items'] != null) {
//       items = <Items>[];
//       json['items'].forEach((v) {
//         items!.add(Items.fromJson(v));
//       });
//     }
//     trackingParams = json['trackingParams'];
//     if (json['topLevelButtons'] != null) {
//       topLevelButtons = <TopLevelButtons>[];
//       json['topLevelButtons'].forEach((v) {
//         topLevelButtons!.add(TopLevelButtons.fromJson(v));
//       });
//     }
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     if (json['flexibleItems'] != null) {
//       flexibleItems = <FlexibleItems>[];
//       json['flexibleItems'].forEach((v) {
//         flexibleItems!.add(FlexibleItems.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (items != null) {
//       data['items'] = items!.map((v) => v.toJson()).toList();
//     }
//     data['trackingParams'] = trackingParams;
//     if (this.topLevelButtons != null) {
//       data['topLevelButtons'] =
//           this.topLevelButtons!.map((v) => v.toJson()).toList();
//     }
//     if (accessibility != null) {
//       data['accessibility'] = accessibility!.toJson();
//     }
//     if (this.flexibleItems != null) {
//       data['flexibleItems'] =
//           this.flexibleItems!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Items {
//   MenuNavigationItemRenderer? menuNavigationItemRenderer;
//   MenuServiceItemRenderer? menuServiceItemRenderer;
//
//   Items({this.menuNavigationItemRenderer, this.menuServiceItemRenderer});
//
//   Items.fromJson(Map<String, dynamic> json) {
//     menuNavigationItemRenderer = json['menuNavigationItemRenderer'] != null
//         ? MenuNavigationItemRenderer.fromJson(
//         json['menuNavigationItemRenderer'])
//         : null;
//     menuServiceItemRenderer = json['menuServiceItemRenderer'] != null
//         ? MenuServiceItemRenderer.fromJson(json['menuServiceItemRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.menuNavigationItemRenderer != null) {
//       data['menuNavigationItemRenderer'] =
//           this.menuNavigationItemRenderer!.toJson();
//     }
//     if (this.menuServiceItemRenderer != null) {
//       data['menuServiceItemRenderer'] = this.menuServiceItemRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class MenuNavigationItemRenderer {
//   Title? text;
//   Icon? icon;
//   NavigationEndpoint? navigationEndpoint;
//   String? trackingParams;
//
//   MenuNavigationItemRenderer(
//       {this.text, this.icon, this.navigationEndpoint, this.trackingParams});
//
//   MenuNavigationItemRenderer.fromJson(Map<String, dynamic> json) {
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (text != null) {
//       data['text'] = text!.toJson();
//     }
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     if (navigationEndpoint != null) {
//       data['navigationEndpoint'] = navigationEndpoint!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class Icon {
//   String? iconType;
//
//   Icon({this.iconType});
//
//   Icon.fromJson(Map<String, dynamic> json) {
//     iconType = json['iconType'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['iconType'] = iconType;
//     return data;
//   }
// }
//
// class NavigationEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   ModalEndpoint? modalEndpoint;
//
//   NavigationEndpoint(
//       {this.clickTrackingParams, this.commandMetadata, this.modalEndpoint});
//
//   NavigationEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     modalEndpoint = json['modalEndpoint'] != null
//         ? ModalEndpoint.fromJson(json['modalEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (this.modalEndpoint != null) {
//       data['modalEndpoint'] = this.modalEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class WebCommandMetadata {
//   bool? ignoreNavigation;
//
//   WebCommandMetadata({this.ignoreNavigation});
//
//   WebCommandMetadata.fromJson(Map<String, dynamic> json) {
//     ignoreNavigation = json['ignoreNavigation'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['ignoreNavigation'] = this.ignoreNavigation;
//     return data;
//   }
// }
//
// class ModalEndpoint {
//   Modal? modal;
//
//   ModalEndpoint({this.modal});
//
//   ModalEndpoint.fromJson(Map<String, dynamic> json) {
//     modal = json['modal'] != null ? Modal.fromJson(json['modal']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (modal != null) {
//       data['modal'] = modal!.toJson();
//     }
//     return data;
//   }
// }
//
// class Modal {
//   ModalWithTitleAndButtonRenderer? modalWithTitleAndButtonRenderer;
//
//   Modal({this.modalWithTitleAndButtonRenderer});
//
//   Modal.fromJson(Map<String, dynamic> json) {
//     modalWithTitleAndButtonRenderer =
//     json['modalWithTitleAndButtonRenderer'] != null
//         ? ModalWithTitleAndButtonRenderer.fromJson(
//         json['modalWithTitleAndButtonRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (modalWithTitleAndButtonRenderer != null) {
//       data['modalWithTitleAndButtonRenderer'] =
//           modalWithTitleAndButtonRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class ModalWithTitleAndButtonRenderer {
//   Title? title;
//   ViewCount? content;
//   Button? button;
//
//   ModalWithTitleAndButtonRenderer({this.title, this.content, this.button});
//
//   ModalWithTitleAndButtonRenderer.fromJson(Map<String, dynamic> json) {
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     content = json['content'] != null
//         ? ViewCount.fromJson(json['content'])
//         : null;
//     button =
//     json['button'] != null ? Button.fromJson(json['button']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (content != null) {
//       data['content'] = content!.toJson();
//     }
//     if (button != null) {
//       data['button'] = button!.toJson();
//     }
//     return data;
//   }
// }
//
// class Button {
//   ButtonRenderer? buttonRenderer;
//
//   Button({this.buttonRenderer});
//
//   Button.fromJson(Map<String, dynamic> json) {
//     buttonRenderer = json['buttonRenderer'] != null
//         ? ButtonRenderer.fromJson(json['buttonRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (buttonRenderer != null) {
//       data['buttonRenderer'] = buttonRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   Title? text;
//   NavigationEndpoint? navigationEndpoint;
//   String? trackingParams;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.text,
//         this.navigationEndpoint,
//         this.trackingParams});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (this.text != null) {
//       data['text'] = this.text!.toJson();
//     }
//     if (this.navigationEndpoint != null) {
//       data['navigationEndpoint'] = this.navigationEndpoint!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class NavigationEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   SignInEndpoint? signInEndpoint;
//
//   NavigationEndpoint(
//       {this.clickTrackingParams, this.commandMetadata, this.signInEndpoint});
//
//   NavigationEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     signInEndpoint = json['signInEndpoint'] != null
//         ? SignInEndpoint.fromJson(json['signInEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (this.signInEndpoint != null) {
//       data['signInEndpoint'] = this.signInEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class SignInEndpoint {
//   bool? hack;
//
//   SignInEndpoint({this.hack});
//
//   SignInEndpoint.fromJson(Map<String, dynamic> json) {
//     hack = json['hack'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['hack'] = hack;
//     return data;
//   }
// }
//
// class MenuServiceItemRenderer {
//   Title? text;
//   Icon? icon;
//   ServiceEndpoint? serviceEndpoint;
//   String? trackingParams;
//
//   MenuServiceItemRenderer(
//       {this.text, this.icon, this.serviceEndpoint, this.trackingParams});
//
//   MenuServiceItemRenderer.fromJson(Map<String, dynamic> json) {
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     serviceEndpoint = json['serviceEndpoint'] != null
//         ? ServiceEndpoint.fromJson(json['serviceEndpoint'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (text != null) {
//       data['text'] = text!.toJson();
//     }
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     if (serviceEndpoint != null) {
//       data['serviceEndpoint'] = serviceEndpoint!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class ServiceEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   SignalServiceEndpoint? signalServiceEndpoint;
//
//   ServiceEndpoint(
//       {this.clickTrackingParams,
//         this.commandMetadata,
//         this.signalServiceEndpoint});
//
//   ServiceEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     signalServiceEndpoint = json['signalServiceEndpoint'] != null
//         ? SignalServiceEndpoint.fromJson(json['signalServiceEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (this.signalServiceEndpoint != null) {
//       data['signalServiceEndpoint'] = this.signalServiceEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class WebCommandMetadata {
//   bool? sendPost;
//
//   WebCommandMetadata({this.sendPost});
//
//   WebCommandMetadata.fromJson(Map<String, dynamic> json) {
//     sendPost = json['sendPost'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['sendPost'] = this.sendPost;
//     return data;
//   }
// }
//
// class SignalServiceEndpoint {
//   String? signal;
//   List<Actions>? actions;
//
//   SignalServiceEndpoint({this.signal, this.actions});
//
//   SignalServiceEndpoint.fromJson(Map<String, dynamic> json) {
//     signal = json['signal'];
//     if (json['actions'] != null) {
//       actions = <Actions>[];
//       json['actions'].forEach((v) {
//         actions!.add(Actions.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['signal'] = signal;
//     if (actions != null) {
//       data['actions'] = actions!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Actions {
//   String? clickTrackingParams;
//   ShowEngagementPanelEndpoint? showEngagementPanelEndpoint;
//
//   Actions({this.clickTrackingParams, this.showEngagementPanelEndpoint});
//
//   Actions.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     showEngagementPanelEndpoint = json['showEngagementPanelEndpoint'] != null
//         ? ShowEngagementPanelEndpoint.fromJson(
//         json['showEngagementPanelEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (this.showEngagementPanelEndpoint != null) {
//       data['showEngagementPanelEndpoint'] =
//           this.showEngagementPanelEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class ShowEngagementPanelEndpoint {
//   String? panelIdentifier;
//
//   ShowEngagementPanelEndpoint({this.panelIdentifier});
//
//   ShowEngagementPanelEndpoint.fromJson(Map<String, dynamic> json) {
//     panelIdentifier = json['panelIdentifier'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['panelIdentifier'] = panelIdentifier;
//     return data;
//   }
// }
//
// class TopLevelButtons {
//   SegmentedLikeDislikeButtonRenderer? segmentedLikeDislikeButtonRenderer;
//   ButtonRenderer? buttonRenderer;
//
//   TopLevelButtons(
//       {this.segmentedLikeDislikeButtonRenderer, this.buttonRenderer});
//
//   TopLevelButtons.fromJson(Map<String, dynamic> json) {
//     segmentedLikeDislikeButtonRenderer =
//     json['segmentedLikeDislikeButtonRenderer'] != null
//         ? SegmentedLikeDislikeButtonRenderer.fromJson(
//         json['segmentedLikeDislikeButtonRenderer'])
//         : null;
//     buttonRenderer = json['buttonRenderer'] != null
//         ? ButtonRenderer.fromJson(json['buttonRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (segmentedLikeDislikeButtonRenderer != null) {
//       data['segmentedLikeDislikeButtonRenderer'] =
//           segmentedLikeDislikeButtonRenderer!.toJson();
//     }
//     if (buttonRenderer != null) {
//       data['buttonRenderer'] = buttonRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class SegmentedLikeDislikeButtonRenderer {
//   LikeButton? likeButton;
//   LikeButton? dislikeButton;
//
//   SegmentedLikeDislikeButtonRenderer({this.likeButton, this.dislikeButton});
//
//   SegmentedLikeDislikeButtonRenderer.fromJson(Map<String, dynamic> json) {
//     likeButton = json['likeButton'] != null
//         ? LikeButton.fromJson(json['likeButton'])
//         : null;
//     dislikeButton = json['dislikeButton'] != null
//         ? LikeButton.fromJson(json['dislikeButton'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (likeButton != null) {
//       data['likeButton'] = likeButton!.toJson();
//     }
//     if (dislikeButton != null) {
//       data['dislikeButton'] = dislikeButton!.toJson();
//     }
//     return data;
//   }
// }
//
// class LikeButton {
//   ToggleButtonRenderer? toggleButtonRenderer;
//
//   LikeButton({this.toggleButtonRenderer});
//
//   LikeButton.fromJson(Map<String, dynamic> json) {
//     toggleButtonRenderer = json['toggleButtonRenderer'] != null
//         ? ToggleButtonRenderer.fromJson(json['toggleButtonRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (toggleButtonRenderer != null) {
//       data['toggleButtonRenderer'] = toggleButtonRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class ToggleButtonRenderer {
//   Style? style;
//   bool? isToggled;
//   bool? isDisabled;
//   Icon? defaultIcon;
//   DefaultText? defaultText;
//   DefaultText? toggledText;
//   Accessibility? accessibility;
//   String? trackingParams;
//   String? defaultTooltip;
//   String? toggledTooltip;
//   Style? toggledStyle;
//   NavigationEndpoint? defaultNavigationEndpoint;
//   AccessibilityData? accessibilityData;
//   ToggleButtonSupportedData? toggleButtonSupportedData;
//   String? targetId;
//
//   ToggleButtonRenderer(
//       {this.style,
//         this.isToggled,
//         this.isDisabled,
//         this.defaultIcon,
//         this.defaultText,
//         this.toggledText,
//         this.accessibility,
//         this.trackingParams,
//         this.defaultTooltip,
//         this.toggledTooltip,
//         this.toggledStyle,
//         this.defaultNavigationEndpoint,
//         this.accessibilityData,
//         this.toggleButtonSupportedData,
//         this.targetId});
//
//   ToggleButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'] != null ? Style.fromJson(json['style']) : null;
//     isToggled = json['isToggled'];
//     isDisabled = json['isDisabled'];
//     defaultIcon = json['defaultIcon'] != null
//         ? Icon.fromJson(json['defaultIcon'])
//         : null;
//     defaultText = json['defaultText'] != null
//         ? DefaultText.fromJson(json['defaultText'])
//         : null;
//     toggledText = json['toggledText'] != null
//         ? DefaultText.fromJson(json['toggledText'])
//         : null;
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     trackingParams = json['trackingParams'];
//     defaultTooltip = json['defaultTooltip'];
//     toggledTooltip = json['toggledTooltip'];
//     toggledStyle = json['toggledStyle'] != null
//         ? Style.fromJson(json['toggledStyle'])
//         : null;
//     defaultNavigationEndpoint = json['defaultNavigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['defaultNavigationEndpoint'])
//         : null;
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//     toggleButtonSupportedData = json['toggleButtonSupportedData'] != null
//         ? ToggleButtonSupportedData.fromJson(
//         json['toggleButtonSupportedData'])
//         : null;
//     targetId = json['targetId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (style != null) {
//       data['style'] = style!.toJson();
//     }
//     data['isToggled'] = isToggled;
//     data['isDisabled'] = isDisabled;
//     if (defaultIcon != null) {
//       data['defaultIcon'] = defaultIcon!.toJson();
//     }
//     if (this.defaultText != null) {
//       data['defaultText'] = this.defaultText!.toJson();
//     }
//     if (this.toggledText != null) {
//       data['toggledText'] = this.toggledText!.toJson();
//     }
//     if (accessibility != null) {
//       data['accessibility'] = accessibility!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     data['defaultTooltip'] = defaultTooltip;
//     data['toggledTooltip'] = toggledTooltip;
//     if (toggledStyle != null) {
//       data['toggledStyle'] = toggledStyle!.toJson();
//     }
//     if (defaultNavigationEndpoint != null) {
//       data['defaultNavigationEndpoint'] =
//           defaultNavigationEndpoint!.toJson();
//     }
//     if (accessibilityData != null) {
//       data['accessibilityData'] = accessibilityData!.toJson();
//     }
//     if (toggleButtonSupportedData != null) {
//       data['toggleButtonSupportedData'] =
//           toggleButtonSupportedData!.toJson();
//     }
//     data['targetId'] = targetId;
//     return data;
//   }
// }
//
// class Style {
//   String? styleType;
//
//   Style({this.styleType});
//
//   Style.fromJson(Map<String, dynamic> json) {
//     styleType = json['styleType'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['styleType'] = styleType;
//     return data;
//   }
// }
//
// class DefaultText {
//   Accessibility? accessibility;
//   String? simpleText;
//
//   DefaultText({this.accessibility, this.simpleText});
//
//   DefaultText.fromJson(Map<String, dynamic> json) {
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     simpleText = json['simpleText'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (accessibility != null) {
//       data['accessibility'] = accessibility!.toJson();
//     }
//     data['simpleText'] = simpleText;
//     return data;
//   }
// }
//
// class Accessibility {
//   AccessibilityData? accessibilityData;
//
//   Accessibility({this.accessibilityData});
//
//   Accessibility.fromJson(Map<String, dynamic> json) {
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (accessibilityData != null) {
//       data['accessibilityData'] = accessibilityData!.toJson();
//     }
//     return data;
//   }
// }
//
// class AccessibilityData {
//   String? label;
//
//   AccessibilityData({this.label});
//
//   AccessibilityData.fromJson(Map<String, dynamic> json) {
//     label = json['label'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['label'] = label;
//     return data;
//   }
// }
//
// class SignInEndpoint {
//   NavigationEndpoints? nextEndpoint;
//   String? idamTag;
//
//   SignInEndpoint({this.nextEndpoint, this.idamTag});
//
//   SignInEndpoint.fromJson(Map<String, dynamic> json) {
//     nextEndpoint = json['nextEndpoint'] != null
//         ? NavigationEndpoints.fromJson(json['nextEndpoint'])
//         : null;
//     idamTag = json['idamTag'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.nextEndpoint != null) {
//       data['nextEndpoint'] = this.nextEndpoint!.toJson();
//     }
//     data['idamTag'] = this.idamTag;
//     return data;
//   }
// }
//
// class WatchEndpoint {
//   String? videoId;
//   WatchEndpointSupportedOnesieConfig? watchEndpointSupportedOnesieConfig;
//
//   WatchEndpoint({this.videoId, this.watchEndpointSupportedOnesieConfig});
//
//   WatchEndpoint.fromJson(Map<String, dynamic> json) {
//     videoId = json['videoId'];
//     watchEndpointSupportedOnesieConfig =
//     json['watchEndpointSupportedOnesieConfig'] != null
//         ? WatchEndpointSupportedOnesieConfig.fromJson(
//         json['watchEndpointSupportedOnesieConfig'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['videoId'] = videoId;
//     if (watchEndpointSupportedOnesieConfig != null) {
//       data['watchEndpointSupportedOnesieConfig'] =
//           watchEndpointSupportedOnesieConfig!.toJson();
//     }
//     return data;
//   }
// }
//
// class WatchEndpointSupportedOnesieConfig {
//   Html5PlaybackOnesieConfig? html5PlaybackOnesieConfig;
//
//   WatchEndpointSupportedOnesieConfig({this.html5PlaybackOnesieConfig});
//
//   WatchEndpointSupportedOnesieConfig.fromJson(Map<String, dynamic> json) {
//     html5PlaybackOnesieConfig = json['html5PlaybackOnesieConfig'] != null
//         ? Html5PlaybackOnesieConfig.fromJson(
//         json['html5PlaybackOnesieConfig'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (html5PlaybackOnesieConfig != null) {
//       data['html5PlaybackOnesieConfig'] =
//           html5PlaybackOnesieConfig!.toJson();
//     }
//     return data;
//   }
// }
//
// class Html5PlaybackOnesieConfig {
//   CommonConfig? commonConfig;
//
//   Html5PlaybackOnesieConfig({this.commonConfig});
//
//   Html5PlaybackOnesieConfig.fromJson(Map<String, dynamic> json) {
//     commonConfig = json['commonConfig'] != null
//         ? CommonConfig.fromJson(json['commonConfig'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (commonConfig != null) {
//       data['commonConfig'] = commonConfig!.toJson();
//     }
//     return data;
//   }
// }
//
// class CommonConfig {
//   String? url;
//
//   CommonConfig({this.url});
//
//   CommonConfig.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['url'] = url;
//     return data;
//   }
// }
//
// class ToggleButtonSupportedData {
//   ToggleButtonIdData? toggleButtonIdData;
//
//   ToggleButtonSupportedData({this.toggleButtonIdData});
//
//   ToggleButtonSupportedData.fromJson(Map<String, dynamic> json) {
//     toggleButtonIdData = json['toggleButtonIdData'] != null
//         ? ToggleButtonIdData.fromJson(json['toggleButtonIdData'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (toggleButtonIdData != null) {
//       data['toggleButtonIdData'] = toggleButtonIdData!.toJson();
//     }
//     return data;
//   }
// }
//
// class ToggleButtonIdData {
//   String? id;
//
//   ToggleButtonIdData({this.id});
//
//   ToggleButtonIdData.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     return data;
//   }
// }
//
// class ToggleButtonRenderer {
//   Style? style;
//   bool? isToggled;
//   bool? isDisabled;
//   Icon? defaultIcon;
//   Accessibility? accessibility;
//   String? trackingParams;
//   String? defaultTooltip;
//   String? toggledTooltip;
//   Style? toggledStyle;
//   NavigationEndpoint? defaultNavigationEndpoint;
//   AccessibilityData? accessibilityData;
//   ToggleButtonSupportedData? toggleButtonSupportedData;
//   String? targetId;
//
//   ToggleButtonRenderer(
//       {this.style,
//         this.isToggled,
//         this.isDisabled,
//         this.defaultIcon,
//         this.accessibility,
//         this.trackingParams,
//         this.defaultTooltip,
//         this.toggledTooltip,
//         this.toggledStyle,
//         this.defaultNavigationEndpoint,
//         this.accessibilityData,
//         this.toggleButtonSupportedData,
//         this.targetId});
//
//   ToggleButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'] != null ? Style.fromJson(json['style']) : null;
//     isToggled = json['isToggled'];
//     isDisabled = json['isDisabled'];
//     defaultIcon = json['defaultIcon'] != null
//         ? Icon.fromJson(json['defaultIcon'])
//         : null;
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     trackingParams = json['trackingParams'];
//     defaultTooltip = json['defaultTooltip'];
//     toggledTooltip = json['toggledTooltip'];
//     toggledStyle = json['toggledStyle'] != null
//         ? Style.fromJson(json['toggledStyle'])
//         : null;
//     defaultNavigationEndpoint = json['defaultNavigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['defaultNavigationEndpoint'])
//         : null;
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//     toggleButtonSupportedData = json['toggleButtonSupportedData'] != null
//         ? ToggleButtonSupportedData.fromJson(
//         json['toggleButtonSupportedData'])
//         : null;
//     targetId = json['targetId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (style != null) {
//       data['style'] = style!.toJson();
//     }
//     data['isToggled'] = isToggled;
//     data['isDisabled'] = isDisabled;
//     if (defaultIcon != null) {
//       data['defaultIcon'] = defaultIcon!.toJson();
//     }
//     if (accessibility != null) {
//       data['accessibility'] = accessibility!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     data['defaultTooltip'] = defaultTooltip;
//     data['toggledTooltip'] = toggledTooltip;
//     if (toggledStyle != null) {
//       data['toggledStyle'] = toggledStyle!.toJson();
//     }
//     if (defaultNavigationEndpoint != null) {
//       data['defaultNavigationEndpoint'] =
//           defaultNavigationEndpoint!.toJson();
//     }
//     if (accessibilityData != null) {
//       data['accessibilityData'] = accessibilityData!.toJson();
//     }
//     if (toggleButtonSupportedData != null) {
//       data['toggleButtonSupportedData'] =
//           toggleButtonSupportedData!.toJson();
//     }
//     data['targetId'] = targetId;
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   Title? text;
//   ServiceEndpoint? serviceEndpoint;
//   Icon? icon;
//   String? tooltip;
//   String? trackingParams;
//   AccessibilityData? accessibilityData;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.text,
//         this.serviceEndpoint,
//         this.icon,
//         this.tooltip,
//         this.trackingParams,
//         this.accessibilityData});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     serviceEndpoint = json['serviceEndpoint'] != null
//         ? ServiceEndpoint.fromJson(json['serviceEndpoint'])
//         : null;
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     tooltip = json['tooltip'];
//     trackingParams = json['trackingParams'];
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (this.text != null) {
//       data['text'] = this.text!.toJson();
//     }
//     if (serviceEndpoint != null) {
//       data['serviceEndpoint'] = serviceEndpoint!.toJson();
//     }
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     data['tooltip'] = tooltip;
//     data['trackingParams'] = trackingParams;
//     if (accessibilityData != null) {
//       data['accessibilityData'] = accessibilityData!.toJson();
//     }
//     return data;
//   }
// }
//
// class ServiceEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   ShareEntityServiceEndpoint? shareEntityServiceEndpoint;
//
//   ServiceEndpoint(
//       {this.clickTrackingParams,
//         this.commandMetadata,
//         this.shareEntityServiceEndpoint});
//
//   ServiceEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     shareEntityServiceEndpoint = json['shareEntityServiceEndpoint'] != null
//         ? ShareEntityServiceEndpoint.fromJson(
//         json['shareEntityServiceEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (shareEntityServiceEndpoint != null) {
//       data['shareEntityServiceEndpoint'] =
//           shareEntityServiceEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class WebCommandMetadata {
//   bool? sendPost;
//   String? apiUrl;
//
//   WebCommandMetadata({this.sendPost, this.apiUrl});
//
//   WebCommandMetadata.fromJson(Map<String, dynamic> json) {
//     sendPost = json['sendPost'];
//     apiUrl = json['apiUrl'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['sendPost'] = this.sendPost;
//     data['apiUrl'] = apiUrl;
//     return data;
//   }
// }
//
// class ShareEntityServiceEndpoint {
//   String? serializedShareEntity;
//   List<Commands>? commands;
//
//   ShareEntityServiceEndpoint({this.serializedShareEntity, this.commands});
//
//   ShareEntityServiceEndpoint.fromJson(Map<String, dynamic> json) {
//     serializedShareEntity = json['serializedShareEntity'];
//     if (json['commands'] != null) {
//       commands = <Commands>[];
//       json['commands'].forEach((v) {
//         commands!.add(Commands.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['serializedShareEntity'] = serializedShareEntity;
//     if (commands != null) {
//       data['commands'] = commands!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Commands {
//   String? clickTrackingParams;
//   OpenPopupAction? openPopupAction;
//
//   Commands({this.clickTrackingParams, this.openPopupAction});
//
//   Commands.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     openPopupAction = json['openPopupAction'] != null
//         ? OpenPopupAction.fromJson(json['openPopupAction'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (this.openPopupAction != null) {
//       data['openPopupAction'] = this.openPopupAction!.toJson();
//     }
//     return data;
//   }
// }
//
// class OpenPopupAction {
//   Popup? popup;
//   String? popupType;
//   bool? beReused;
//
//   OpenPopupAction({this.popup, this.popupType, this.beReused});
//
//   OpenPopupAction.fromJson(Map<String, dynamic> json) {
//     popup = json['popup'] != null ? Popup.fromJson(json['popup']) : null;
//     popupType = json['popupType'];
//     beReused = json['beReused'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (popup != null) {
//       data['popup'] = popup!.toJson();
//     }
//     data['popupType'] = popupType;
//     data['beReused'] = beReused;
//     return data;
//   }
// }
//
// class Popup {
//   UnifiedSharePanelRenderer? unifiedSharePanelRenderer;
//
//   Popup({this.unifiedSharePanelRenderer});
//
//   Popup.fromJson(Map<String, dynamic> json) {
//     unifiedSharePanelRenderer = json['unifiedSharePanelRenderer'] != null
//         ? UnifiedSharePanelRenderer.fromJson(
//         json['unifiedSharePanelRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.unifiedSharePanelRenderer != null) {
//       data['unifiedSharePanelRenderer'] =
//           this.unifiedSharePanelRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class UnifiedSharePanelRenderer {
//   String? trackingParams;
//   bool? showLoadingSpinner;
//
//   UnifiedSharePanelRenderer({this.trackingParams, this.showLoadingSpinner});
//
//   UnifiedSharePanelRenderer.fromJson(Map<String, dynamic> json) {
//     trackingParams = json['trackingParams'];
//     showLoadingSpinner = json['showLoadingSpinner'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['trackingParams'] = trackingParams;
//     data['showLoadingSpinner'] = showLoadingSpinner;
//     return data;
//   }
// }
//
// class FlexibleItems {
//   MenuFlexibleItemRenderer? menuFlexibleItemRenderer;
//
//   FlexibleItems({this.menuFlexibleItemRenderer});
//
//   FlexibleItems.fromJson(Map<String, dynamic> json) {
//     menuFlexibleItemRenderer = json['menuFlexibleItemRenderer'] != null
//         ? MenuFlexibleItemRenderer.fromJson(
//         json['menuFlexibleItemRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (menuFlexibleItemRenderer != null) {
//       data['menuFlexibleItemRenderer'] =
//           menuFlexibleItemRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class MenuFlexibleItemRenderer {
//   MenuItem? menuItem;
//   Button? topLevelButton;
//
//   MenuFlexibleItemRenderer({this.menuItem, this.topLevelButton});
//
//   MenuFlexibleItemRenderer.fromJson(Map<String, dynamic> json) {
//     menuItem = json['menuItem'] != null
//         ? MenuItem.fromJson(json['menuItem'])
//         : null;
//     topLevelButton = json['topLevelButton'] != null
//         ? Button.fromJson(json['topLevelButton'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (menuItem != null) {
//       data['menuItem'] = menuItem!.toJson();
//     }
//     if (topLevelButton != null) {
//       data['topLevelButton'] = topLevelButton!.toJson();
//     }
//     return data;
//   }
// }
//
// class MenuItem {
//   MenuServiceItemRenderer? menuServiceItemRenderer;
//
//   MenuItem({this.menuServiceItemRenderer});
//
//   MenuItem.fromJson(Map<String, dynamic> json) {
//     menuServiceItemRenderer = json['menuServiceItemRenderer'] != null
//         ? MenuServiceItemRenderer.fromJson(json['menuServiceItemRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (menuServiceItemRenderer != null) {
//       data['menuServiceItemRenderer'] = menuServiceItemRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   Title? text;
//   Icon? icon;
//   Accessibility? accessibility;
//   String? tooltip;
//   String? trackingParams;
//   AccessibilityData? accessibilityData;
//   ServiceEndpoint? command;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.text,
//         this.icon,
//         this.accessibility,
//         this.tooltip,
//         this.trackingParams,
//         this.accessibilityData,
//         this.command});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     tooltip = json['tooltip'];
//     trackingParams = json['trackingParams'];
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//     command = json['command'] != null
//         ? ServiceEndpoint.fromJson(json['command'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (this.text != null) {
//       data['text'] = this.text!.toJson();
//     }
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     if (this.accessibility != null) {
//       data['accessibility'] = this.accessibility!.toJson();
//     }
//     data['tooltip'] = tooltip;
//     data['trackingParams'] = trackingParams;
//     if (accessibilityData != null) {
//       data['accessibilityData'] = accessibilityData!.toJson();
//     }
//     if (this.command != null) {
//       data['command'] = this.command!.toJson();
//     }
//     return data;
//   }
// }
//
// class Runs {
//   String? text;
//   NavigationEndpoint? navigationEndpoint;
//   LoggingDirectives? loggingDirectives;
//
//   Runs({this.text, this.navigationEndpoint, this.loggingDirectives});
//
//   Runs.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     loggingDirectives = json['loggingDirectives'] != null
//         ? LoggingDirectives.fromJson(json['loggingDirectives'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['text'] = text;
//     if (navigationEndpoint != null) {
//       data['navigationEndpoint'] = navigationEndpoint!.toJson();
//     }
//     if (loggingDirectives != null) {
//       data['loggingDirectives'] = loggingDirectives!.toJson();
//     }
//     return data;
//   }
// }
//
// class NavigationEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   BrowseEndpoint? browseEndpoint;
//
//   NavigationEndpoint(
//       {this.clickTrackingParams, this.commandMetadata, this.browseEndpoint});
//
//   NavigationEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     browseEndpoint = json['browseEndpoint'] != null
//         ? BrowseEndpoint.fromJson(json['browseEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (browseEndpoint != null) {
//       data['browseEndpoint'] = browseEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class WebCommandMetadata {
//   String? url;
//   String? webPageType;
//   int? rootVe;
//   String? apiUrl;
//
//   WebCommandMetadata({this.url, this.webPageType, this.rootVe, this.apiUrl});
//
//   WebCommandMetadata.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//     webPageType = json['webPageType'];
//     rootVe = json['rootVe'];
//     apiUrl = json['apiUrl'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['url'] = url;
//     data['webPageType'] = webPageType;
//     data['rootVe'] = rootVe;
//     data['apiUrl'] = apiUrl;
//     return data;
//   }
// }
//
// class BrowseEndpoint {
//   String? browseId;
//   String? params;
//
//   BrowseEndpoint({this.browseId, this.params});
//
//   BrowseEndpoint.fromJson(Map<String, dynamic> json) {
//     browseId = json['browseId'];
//     params = json['params'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['browseId'] = browseId;
//     data['params'] = this.params;
//     return data;
//   }
// }
//
// class LoggingDirectives {
//   String? trackingParams;
//   Visibility? visibility;
//   bool? enableDisplayloggerExperiment;
//
//   LoggingDirectives(
//       {this.trackingParams,
//         this.visibility,
//         this.enableDisplayloggerExperiment});
//
//   LoggingDirectives.fromJson(Map<String, dynamic> json) {
//     trackingParams = json['trackingParams'];
//     visibility = json['visibility'] != null
//         ? Visibility.fromJson(json['visibility'])
//         : null;
//     enableDisplayloggerExperiment = json['enableDisplayloggerExperiment'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['trackingParams'] = trackingParams;
//     if (visibility != null) {
//       data['visibility'] = visibility!.toJson();
//     }
//     data['enableDisplayloggerExperiment'] = enableDisplayloggerExperiment;
//     return data;
//   }
// }
//
// class Visibility {
//   String? types;
//
//   Visibility({this.types});
//
//   Visibility.fromJson(Map<String, dynamic> json) {
//     types = json['types'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['types'] = types;
//     return data;
//   }
// }
//
// class VideoSecondaryInfoRenderer {
//   Owner? owner;
//   Title? description;
//   Button? subscribeButton;
//   MetadataRowContainer? metadataRowContainer;
//   ViewCount? showMoreText;
//   ViewCount? showLessText;
//   String? trackingParams;
//   bool? defaultExpanded;
//   int? descriptionCollapsedLines;
//   ShowMoreCommand? showMoreCommand;
//   ShowLessCommand? showLessCommand;
//
//   VideoSecondaryInfoRenderer(
//       {this.owner,
//         this.description,
//         this.subscribeButton,
//         this.metadataRowContainer,
//         this.showMoreText,
//         this.showLessText,
//         this.trackingParams,
//         this.defaultExpanded,
//         this.descriptionCollapsedLines,
//         this.showMoreCommand,
//         this.showLessCommand});
//
//   VideoSecondaryInfoRenderer.fromJson(Map<String, dynamic> json) {
//     owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
//     description = json['description'] != null
//         ? Title.fromJson(json['description'])
//         : null;
//     subscribeButton = json['subscribeButton'] != null
//         ? Button.fromJson(json['subscribeButton'])
//         : null;
//     metadataRowContainer = json['metadataRowContainer'] != null
//         ? MetadataRowContainer.fromJson(json['metadataRowContainer'])
//         : null;
//     showMoreText = json['showMoreText'] != null
//         ? ViewCount.fromJson(json['showMoreText'])
//         : null;
//     showLessText = json['showLessText'] != null
//         ? ViewCount.fromJson(json['showLessText'])
//         : null;
//     trackingParams = json['trackingParams'];
//     defaultExpanded = json['defaultExpanded'];
//     descriptionCollapsedLines = json['descriptionCollapsedLines'];
//     showMoreCommand = json['showMoreCommand'] != null
//         ? ShowMoreCommand.fromJson(json['showMoreCommand'])
//         : null;
//     showLessCommand = json['showLessCommand'] != null
//         ? ShowLessCommand.fromJson(json['showLessCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (owner != null) {
//       data['owner'] = owner!.toJson();
//     }
//     if (description != null) {
//       data['description'] = description!.toJson();
//     }
//     if (subscribeButton != null) {
//       data['subscribeButton'] = subscribeButton!.toJson();
//     }
//     if (metadataRowContainer != null) {
//       data['metadataRowContainer'] = metadataRowContainer!.toJson();
//     }
//     if (showMoreText != null) {
//       data['showMoreText'] = showMoreText!.toJson();
//     }
//     if (showLessText != null) {
//       data['showLessText'] = showLessText!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     data['defaultExpanded'] = defaultExpanded;
//     data['descriptionCollapsedLines'] = descriptionCollapsedLines;
//     if (showMoreCommand != null) {
//       data['showMoreCommand'] = showMoreCommand!.toJson();
//     }
//     if (showLessCommand != null) {
//       data['showLessCommand'] = showLessCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class Owner {
//   VideoOwnerRenderer? videoOwnerRenderer;
//
//   Owner({this.videoOwnerRenderer});
//
//   Owner.fromJson(Map<String, dynamic> json) {
//     videoOwnerRenderer = json['videoOwnerRenderer'] != null
//         ? VideoOwnerRenderer.fromJson(json['videoOwnerRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (videoOwnerRenderer != null) {
//       data['videoOwnerRenderer'] = videoOwnerRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class VideoOwnerRenderer {
//   Thumbnail? thumbnail;
//   Title? title;
//   SubscriptionButton? subscriptionButton;
//   NavigationEndpoint? navigationEndpoint;
//   DefaultText? subscriberCountText;
//   String? trackingParams;
//   List<Badges>? badges;
//
//   VideoOwnerRenderer(
//       {this.thumbnail,
//         this.title,
//         this.subscriptionButton,
//         this.navigationEndpoint,
//         this.subscriberCountText,
//         this.trackingParams,
//         this.badges});
//
//   VideoOwnerRenderer.fromJson(Map<String, dynamic> json) {
//     thumbnail = json['thumbnail'] != null
//         ? Thumbnail.fromJson(json['thumbnail'])
//         : null;
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     subscriptionButton = json['subscriptionButton'] != null
//         ? SubscriptionButton.fromJson(json['subscriptionButton'])
//         : null;
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     subscriberCountText = json['subscriberCountText'] != null
//         ? DefaultText.fromJson(json['subscriberCountText'])
//         : null;
//     trackingParams = json['trackingParams'];
//     if (json['badges'] != null) {
//       badges = <Badges>[];
//       json['badges'].forEach((v) {
//         badges!.add(Badges.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (thumbnail != null) {
//       data['thumbnail'] = thumbnail!.toJson();
//     }
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (subscriptionButton != null) {
//       data['subscriptionButton'] = subscriptionButton!.toJson();
//     }
//     if (navigationEndpoint != null) {
//       data['navigationEndpoint'] = navigationEndpoint!.toJson();
//     }
//     if (subscriberCountText != null) {
//       data['subscriberCountText'] = subscriberCountText!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (badges != null) {
//       data['badges'] = badges!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Thumbnail {
//   List<Thumbnails>? thumbnails;
//
//   Thumbnail({this.thumbnails});
//
//   Thumbnail.fromJson(Map<String, dynamic> json) {
//     if (json['thumbnails'] != null) {
//       thumbnails = <Thumbnails>[];
//       json['thumbnails'].forEach((v) {
//         thumbnails!.add(Thumbnails.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (thumbnails != null) {
//       data['thumbnails'] = thumbnails!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Thumbnails {
//   String? url;
//   int? width;
//   int? height;
//
//   Thumbnails({this.url, this.width, this.height});
//
//   Thumbnails.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//     width = json['width'];
//     height = json['height'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['url'] = url;
//     data['width'] = width;
//     data['height'] = height;
//     return data;
//   }
// }
//
// class Runs {
//   String? text;
//   NavigationEndpoint? navigationEndpoint;
//
//   Runs({this.text, this.navigationEndpoint});
//
//   Runs.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['text'] = text;
//     if (navigationEndpoint != null) {
//       data['navigationEndpoint'] = navigationEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class BrowseEndpoint {
//   String? browseId;
//   String? canonicalBaseUrl;
//
//   BrowseEndpoint({this.browseId, this.canonicalBaseUrl});
//
//   BrowseEndpoint.fromJson(Map<String, dynamic> json) {
//     browseId = json['browseId'];
//     canonicalBaseUrl = json['canonicalBaseUrl'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['browseId'] = browseId;
//     data['canonicalBaseUrl'] = this.canonicalBaseUrl;
//     return data;
//   }
// }
//
// class SubscriptionButton {
//   String? type;
//
//   SubscriptionButton({this.type});
//
//   SubscriptionButton.fromJson(Map<String, dynamic> json) {
//     type = json['type'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['type'] = type;
//     return data;
//   }
// }
//
// class Badges {
//   MetadataBadgeRenderer? metadataBadgeRenderer;
//
//   Badges({this.metadataBadgeRenderer});
//
//   Badges.fromJson(Map<String, dynamic> json) {
//     metadataBadgeRenderer = json['metadataBadgeRenderer'] != null
//         ? MetadataBadgeRenderer.fromJson(json['metadataBadgeRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (metadataBadgeRenderer != null) {
//       data['metadataBadgeRenderer'] = metadataBadgeRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class MetadataBadgeRenderer {
//   Icon? icon;
//   String? style;
//   String? tooltip;
//   String? trackingParams;
//   AccessibilityData? accessibilityData;
//
//   MetadataBadgeRenderer(
//       {this.icon,
//         this.style,
//         this.tooltip,
//         this.trackingParams,
//         this.accessibilityData});
//
//   MetadataBadgeRenderer.fromJson(Map<String, dynamic> json) {
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     style = json['style'];
//     tooltip = json['tooltip'];
//     trackingParams = json['trackingParams'];
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.icon != null) {
//       data['icon'] = this.icon!.toJson();
//     }
//     data['style'] = style;
//     data['tooltip'] = this.tooltip;
//     data['trackingParams'] = trackingParams;
//     if (this.accessibilityData != null) {
//       data['accessibilityData'] = this.accessibilityData!.toJson();
//     }
//     return data;
//   }
// }
//
// class Runs {
//   String? text;
//   NavigationEndpoint? navigationEndpoint;
//   bool? bold;
//   LoggingDirectives? loggingDirectives;
//
//   Runs({this.text, this.navigationEndpoint, this.bold, this.loggingDirectives});
//
//   Runs.fromJson(Map<String, dynamic> json) {
//     text = json['text'];
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     bold = json['bold'];
//     loggingDirectives = json['loggingDirectives'] != null
//         ? LoggingDirectives.fromJson(json['loggingDirectives'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['text'] = text;
//     if (navigationEndpoint != null) {
//       data['navigationEndpoint'] = navigationEndpoint!.toJson();
//     }
//     data['bold'] = bold;
//     if (loggingDirectives != null) {
//       data['loggingDirectives'] = loggingDirectives!.toJson();
//     }
//     return data;
//   }
// }
//
// class NavigationEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   UrlEndpoint? urlEndpoint;
//   BrowseEndpoint? browseEndpoint;
//
//   NavigationEndpoint(
//       {this.clickTrackingParams,
//         this.commandMetadata,
//         this.urlEndpoint,
//         this.browseEndpoint});
//
//   NavigationEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     urlEndpoint = json['urlEndpoint'] != null
//         ? UrlEndpoint.fromJson(json['urlEndpoint'])
//         : null;
//     browseEndpoint = json['browseEndpoint'] != null
//         ? BrowseEndpoint.fromJson(json['browseEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (urlEndpoint != null) {
//       data['urlEndpoint'] = urlEndpoint!.toJson();
//     }
//     if (browseEndpoint != null) {
//       data['browseEndpoint'] = browseEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class UrlEndpoint {
//   String? url;
//   String? target;
//   bool? nofollow;
//
//   UrlEndpoint({this.url, this.target, this.nofollow});
//
//   UrlEndpoint.fromJson(Map<String, dynamic> json) {
//     url = json['url'];
//     target = json['target'];
//     nofollow = json['nofollow'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['url'] = url;
//     data['target'] = target;
//     data['nofollow'] = nofollow;
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   Title? text;
//   NavigationEndpoint? navigationEndpoint;
//   String? trackingParams;
//   String? targetId;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.text,
//         this.navigationEndpoint,
//         this.trackingParams,
//         this.targetId});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     trackingParams = json['trackingParams'];
//     targetId = json['targetId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (this.text != null) {
//       data['text'] = this.text!.toJson();
//     }
//     if (this.navigationEndpoint != null) {
//       data['navigationEndpoint'] = this.navigationEndpoint!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     data['targetId'] = this.targetId;
//     return data;
//   }
// }
//
// class SignInEndpoint {
//   NavigationEndpoints? nextEndpoint;
//   String? continueAction;
//   String? idamTag;
//
//   SignInEndpoint({this.nextEndpoint, this.continueAction, this.idamTag});
//
//   SignInEndpoint.fromJson(Map<String, dynamic> json) {
//     nextEndpoint = json['nextEndpoint'] != null
//         ? NavigationEndpoints.fromJson(json['nextEndpoint'])
//         : null;
//     continueAction = json['continueAction'];
//     idamTag = json['idamTag'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.nextEndpoint != null) {
//       data['nextEndpoint'] = this.nextEndpoint!.toJson();
//     }
//     data['continueAction'] = this.continueAction;
//     data['idamTag'] = this.idamTag;
//     return data;
//   }
// }
//
// class MetadataRowContainer {
//   MetadataRowContainerRenderer? metadataRowContainerRenderer;
//
//   MetadataRowContainer({this.metadataRowContainerRenderer});
//
//   MetadataRowContainer.fromJson(Map<String, dynamic> json) {
//     metadataRowContainerRenderer = json['metadataRowContainerRenderer'] != null
//         ? MetadataRowContainerRenderer.fromJson(
//         json['metadataRowContainerRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (metadataRowContainerRenderer != null) {
//       data['metadataRowContainerRenderer'] =
//           metadataRowContainerRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class MetadataRowContainerRenderer {
//   int? collapsedItemCount;
//   String? trackingParams;
//
//   MetadataRowContainerRenderer({this.collapsedItemCount, this.trackingParams});
//
//   MetadataRowContainerRenderer.fromJson(Map<String, dynamic> json) {
//     collapsedItemCount = json['collapsedItemCount'];
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['collapsedItemCount'] = collapsedItemCount;
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class ShowMoreCommand {
//   String? clickTrackingParams;
//   CommandExecutorCommand? commandExecutorCommand;
//
//   ShowMoreCommand({this.clickTrackingParams, this.commandExecutorCommand});
//
//   ShowMoreCommand.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandExecutorCommand = json['commandExecutorCommand'] != null
//         ? CommandExecutorCommand.fromJson(json['commandExecutorCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandExecutorCommand != null) {
//       data['commandExecutorCommand'] = commandExecutorCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class CommandExecutorCommand {
//   List<Commands>? commands;
//
//   CommandExecutorCommand({this.commands});
//
//   CommandExecutorCommand.fromJson(Map<String, dynamic> json) {
//     if (json['commands'] != null) {
//       commands = <Commands>[];
//       json['commands'].forEach((v) {
//         commands!.add(Commands.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (commands != null) {
//       data['commands'] = commands!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Commands {
//   String? clickTrackingParams;
//   ChangeEngagementPanelVisibilityAction? changeEngagementPanelVisibilityAction;
//   ScrollToEngagementPanelCommand? scrollToEngagementPanelCommand;
//
//   Commands(
//       {this.clickTrackingParams,
//         this.changeEngagementPanelVisibilityAction,
//         this.scrollToEngagementPanelCommand});
//
//   Commands.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     changeEngagementPanelVisibilityAction =
//     json['changeEngagementPanelVisibilityAction'] != null
//         ? ChangeEngagementPanelVisibilityAction.fromJson(
//         json['changeEngagementPanelVisibilityAction'])
//         : null;
//     scrollToEngagementPanelCommand =
//     json['scrollToEngagementPanelCommand'] != null
//         ? ScrollToEngagementPanelCommand.fromJson(
//         json['scrollToEngagementPanelCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (changeEngagementPanelVisibilityAction != null) {
//       data['changeEngagementPanelVisibilityAction'] =
//           changeEngagementPanelVisibilityAction!.toJson();
//     }
//     if (this.scrollToEngagementPanelCommand != null) {
//       data['scrollToEngagementPanelCommand'] =
//           this.scrollToEngagementPanelCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class ChangeEngagementPanelVisibilityAction {
//   String? targetId;
//   String? visibility;
//
//   ChangeEngagementPanelVisibilityAction({this.targetId, this.visibility});
//
//   ChangeEngagementPanelVisibilityAction.fromJson(Map<String, dynamic> json) {
//     targetId = json['targetId'];
//     visibility = json['visibility'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['targetId'] = targetId;
//     data['visibility'] = visibility;
//     return data;
//   }
// }
//
// class ScrollToEngagementPanelCommand {
//   String? targetId;
//
//   ScrollToEngagementPanelCommand({this.targetId});
//
//   ScrollToEngagementPanelCommand.fromJson(Map<String, dynamic> json) {
//     targetId = json['targetId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['targetId'] = targetId;
//     return data;
//   }
// }
//
// class ShowLessCommand {
//   String? clickTrackingParams;
//   ChangeEngagementPanelVisibilityAction? changeEngagementPanelVisibilityAction;
//
//   ShowLessCommand(
//       {this.clickTrackingParams, this.changeEngagementPanelVisibilityAction});
//
//   ShowLessCommand.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     changeEngagementPanelVisibilityAction =
//     json['changeEngagementPanelVisibilityAction'] != null
//         ? ChangeEngagementPanelVisibilityAction.fromJson(
//         json['changeEngagementPanelVisibilityAction'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (changeEngagementPanelVisibilityAction != null) {
//       data['changeEngagementPanelVisibilityAction'] =
//           changeEngagementPanelVisibilityAction!.toJson();
//     }
//     return data;
//   }
// }
//
// class ItemSectionRenderer {
//   List<Contents>? contents;
//   String? trackingParams;
//   String? sectionIdentifier;
//   String? targetId;
//
//   ItemSectionRenderer(
//       {this.contents,
//         this.trackingParams,
//         this.sectionIdentifier,
//         this.targetId});
//
//   ItemSectionRenderer.fromJson(Map<String, dynamic> json) {
//     if (json['contents'] != null) {
//       contents = <Contents>[];
//       json['contents'].forEach((v) {
//         contents!.add(Contents.fromJson(v));
//       });
//     }
//     trackingParams = json['trackingParams'];
//     sectionIdentifier = json['sectionIdentifier'];
//     targetId = json['targetId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (contents != null) {
//       data['contents'] = contents!.map((v) => v.toJson()).toList();
//     }
//     data['trackingParams'] = trackingParams;
//     data['sectionIdentifier'] = sectionIdentifier;
//     data['targetId'] = targetId;
//     return data;
//   }
// }
//
// class Contents {
//   CommentsEntryPointHeaderRenderer? commentsEntryPointHeaderRenderer;
//   ContinuationItemRenderer? continuationItemRenderer;
//
//   Contents(
//       {this.commentsEntryPointHeaderRenderer, this.continuationItemRenderer});
//
//   Contents.fromJson(Map<String, dynamic> json) {
//     commentsEntryPointHeaderRenderer =
//     json['commentsEntryPointHeaderRenderer'] != null
//         ? CommentsEntryPointHeaderRenderer.fromJson(
//         json['commentsEntryPointHeaderRenderer'])
//         : null;
//     continuationItemRenderer = json['continuationItemRenderer'] != null
//         ? ContinuationItemRenderer.fromJson(
//         json['continuationItemRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.commentsEntryPointHeaderRenderer != null) {
//       data['commentsEntryPointHeaderRenderer'] =
//           this.commentsEntryPointHeaderRenderer!.toJson();
//     }
//     if (continuationItemRenderer != null) {
//       data['continuationItemRenderer'] =
//           continuationItemRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class CommentsEntryPointHeaderRenderer {
//   Title? headerText;
//   ShowMoreCommand? onTap;
//   String? trackingParams;
//   ViewCount? commentCount;
//   ContentRenderer? contentRenderer;
//   String? targetId;
//
//   CommentsEntryPointHeaderRenderer(
//       {this.headerText,
//         this.onTap,
//         this.trackingParams,
//         this.commentCount,
//         this.contentRenderer,
//         this.targetId});
//
//   CommentsEntryPointHeaderRenderer.fromJson(Map<String, dynamic> json) {
//     headerText = json['headerText'] != null
//         ? Title.fromJson(json['headerText'])
//         : null;
//     onTap = json['onTap'] != null
//         ? ShowMoreCommand.fromJson(json['onTap'])
//         : null;
//     trackingParams = json['trackingParams'];
//     commentCount = json['commentCount'] != null
//         ? ViewCount.fromJson(json['commentCount'])
//         : null;
//     contentRenderer = json['contentRenderer'] != null
//         ? ContentRenderer.fromJson(json['contentRenderer'])
//         : null;
//     targetId = json['targetId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (headerText != null) {
//       data['headerText'] = headerText!.toJson();
//     }
//     if (onTap != null) {
//       data['onTap'] = onTap!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (commentCount != null) {
//       data['commentCount'] = commentCount!.toJson();
//     }
//     if (contentRenderer != null) {
//       data['contentRenderer'] = contentRenderer!.toJson();
//     }
//     data['targetId'] = targetId;
//     return data;
//   }
// }
//
// class ContentRenderer {
//   CommentsEntryPointTeaserRenderer? commentsEntryPointTeaserRenderer;
//
//   ContentRenderer({this.commentsEntryPointTeaserRenderer});
//
//   ContentRenderer.fromJson(Map<String, dynamic> json) {
//     commentsEntryPointTeaserRenderer =
//     json['commentsEntryPointTeaserRenderer'] != null
//         ? CommentsEntryPointTeaserRenderer.fromJson(
//         json['commentsEntryPointTeaserRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (commentsEntryPointTeaserRenderer != null) {
//       data['commentsEntryPointTeaserRenderer'] =
//           commentsEntryPointTeaserRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class CommentsEntryPointTeaserRenderer {
//   TeaserAvatar? teaserAvatar;
//   ViewCount? teaserContent;
//   String? trackingParams;
//
//   CommentsEntryPointTeaserRenderer(
//       {this.teaserAvatar, this.teaserContent, this.trackingParams});
//
//   CommentsEntryPointTeaserRenderer.fromJson(Map<String, dynamic> json) {
//     teaserAvatar = json['teaserAvatar'] != null
//         ? TeaserAvatar.fromJson(json['teaserAvatar'])
//         : null;
//     teaserContent = json['teaserContent'] != null
//         ? ViewCount.fromJson(json['teaserContent'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (teaserAvatar != null) {
//       data['teaserAvatar'] = teaserAvatar!.toJson();
//     }
//     if (teaserContent != null) {
//       data['teaserContent'] = teaserContent!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class TeaserAvatar {
//   List<Thumbnails>? thumbnails;
//   Accessibility? accessibility;
//
//   TeaserAvatar({this.thumbnails, this.accessibility});
//
//   TeaserAvatar.fromJson(Map<String, dynamic> json) {
//     if (json['thumbnails'] != null) {
//       thumbnails = <Thumbnails>[];
//       json['thumbnails'].forEach((v) {
//         thumbnails!.add(Thumbnails.fromJson(v));
//       });
//     }
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (thumbnails != null) {
//       data['thumbnails'] = thumbnails!.map((v) => v.toJson()).toList();
//     }
//     if (accessibility != null) {
//       data['accessibility'] = accessibility!.toJson();
//     }
//     return data;
//   }
// }
//
// class ContinuationItemRenderer {
//   String? trigger;
//   ContinuationEndpoint? continuationEndpoint;
//
//   ContinuationItemRenderer({this.trigger, this.continuationEndpoint});
//
//   ContinuationItemRenderer.fromJson(Map<String, dynamic> json) {
//     trigger = json['trigger'];
//     continuationEndpoint = json['continuationEndpoint'] != null
//         ? ContinuationEndpoint.fromJson(json['continuationEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['trigger'] = trigger;
//     if (continuationEndpoint != null) {
//       data['continuationEndpoint'] = continuationEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class ContinuationEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   ContinuationCommand? continuationCommand;
//
//   ContinuationEndpoint(
//       {this.clickTrackingParams,
//         this.commandMetadata,
//         this.continuationCommand});
//
//   ContinuationEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     continuationCommand = json['continuationCommand'] != null
//         ? ContinuationCommand.fromJson(json['continuationCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (this.continuationCommand != null) {
//       data['continuationCommand'] = this.continuationCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class ContinuationCommand {
//   String? token;
//   String? request;
//
//   ContinuationCommand({this.token, this.request});
//
//   ContinuationCommand.fromJson(Map<String, dynamic> json) {
//     token = json['token'];
//     request = json['request'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['token'] = token;
//     data['request'] = request;
//     return data;
//   }
// }
//
// class SecondaryResults {
//   SecondaryResults? secondaryResults;
//
//   SecondaryResults({this.secondaryResults});
//
//   SecondaryResults.fromJson(Map<String, dynamic> json) {
//     secondaryResults = json['secondaryResults'] != null
//         ? SecondaryResults.fromJson(json['secondaryResults'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.secondaryResults != null) {
//       data['secondaryResults'] = this.secondaryResults!.toJson();
//     }
//     return data;
//   }
// }
//
// class SecondaryResults {
//   List<Results>? results;
//   String? trackingParams;
//   String? targetId;
//
//   SecondaryResults({this.results, this.trackingParams, this.targetId});
//
//   SecondaryResults.fromJson(Map<String, dynamic> json) {
//     if (json['results'] != null) {
//       results = <Results>[];
//       json['results'].forEach((v) {
//         results!.add(Results.fromJson(v));
//       });
//     }
//     trackingParams = json['trackingParams'];
//     targetId = json['targetId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (results != null) {
//       data['results'] = results!.map((v) => v.toJson()).toList();
//     }
//     data['trackingParams'] = trackingParams;
//     data['targetId'] = targetId;
//     return data;
//   }
// }
//
// class Results {
//   CompactVideoRenderer? compactVideoRenderer;
//   ContinuationItemRenderer? continuationItemRenderer;
//
//   Results({this.compactVideoRenderer, this.continuationItemRenderer});
//
//   Results.fromJson(Map<String, dynamic> json) {
//     compactVideoRenderer = json['compactVideoRenderer'] != null
//         ? CompactVideoRenderer.fromJson(json['compactVideoRenderer'])
//         : null;
//     continuationItemRenderer = json['continuationItemRenderer'] != null
//         ? ContinuationItemRenderer.fromJson(
//         json['continuationItemRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.compactVideoRenderer != null) {
//       data['compactVideoRenderer'] = this.compactVideoRenderer!.toJson();
//     }
//     if (this.continuationItemRenderer != null) {
//       data['continuationItemRenderer'] =
//           this.continuationItemRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class CompactVideoRenderer {
//   String? videoId;
//   Thumbnail? thumbnail;
//   Title? title;
//   Title? longBylineText;
//   ViewCount? publishedTimeText;
//   ViewCount? viewCountText;
//   DefaultText? lengthText;
//   NavigationEndpoint? navigationEndpoint;
//   Title? shortBylineText;
//   Thumbnail? channelThumbnail;
//   String? trackingParams;
//   DefaultText? shortViewCountText;
//   VideoActions? menu;
//   List<ThumbnailOverlays>? thumbnailOverlays;
//   Accessibility? accessibility;
//   List<Badges>? badges;
//   List<OwnerBadges>? ownerBadges;
//
//   CompactVideoRenderer(
//       {this.videoId,
//         this.thumbnail,
//         this.title,
//         this.longBylineText,
//         this.publishedTimeText,
//         this.viewCountText,
//         this.lengthText,
//         this.navigationEndpoint,
//         this.shortBylineText,
//         this.channelThumbnail,
//         this.trackingParams,
//         this.shortViewCountText,
//         this.menu,
//         this.thumbnailOverlays,
//         this.accessibility,
//         this.badges,
//         this.ownerBadges});
//
//   CompactVideoRenderer.fromJson(Map<String, dynamic> json) {
//     videoId = json['videoId'];
//     thumbnail = json['thumbnail'] != null
//         ? Thumbnail.fromJson(json['thumbnail'])
//         : null;
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     longBylineText = json['longBylineText'] != null
//         ? Title.fromJson(json['longBylineText'])
//         : null;
//     publishedTimeText = json['publishedTimeText'] != null
//         ? ViewCount.fromJson(json['publishedTimeText'])
//         : null;
//     viewCountText = json['viewCountText'] != null
//         ? ViewCount.fromJson(json['viewCountText'])
//         : null;
//     lengthText = json['lengthText'] != null
//         ? DefaultText.fromJson(json['lengthText'])
//         : null;
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     shortBylineText = json['shortBylineText'] != null
//         ? Title.fromJson(json['shortBylineText'])
//         : null;
//     channelThumbnail = json['channelThumbnail'] != null
//         ? Thumbnail.fromJson(json['channelThumbnail'])
//         : null;
//     trackingParams = json['trackingParams'];
//     shortViewCountText = json['shortViewCountText'] != null
//         ? DefaultText.fromJson(json['shortViewCountText'])
//         : null;
//     menu =
//     json['menu'] != null ? VideoActions.fromJson(json['menu']) : null;
//     if (json['thumbnailOverlays'] != null) {
//       thumbnailOverlays = <ThumbnailOverlays>[];
//       json['thumbnailOverlays'].forEach((v) {
//         thumbnailOverlays!.add(ThumbnailOverlays.fromJson(v));
//       });
//     }
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     if (json['badges'] != null) {
//       badges = <Badges>[];
//       json['badges'].forEach((v) {
//         badges!.add(Badges.fromJson(v));
//       });
//     }
//     if (json['ownerBadges'] != null) {
//       ownerBadges = <OwnerBadges>[];
//       json['ownerBadges'].forEach((v) {
//         ownerBadges!.add(OwnerBadges.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['videoId'] = videoId;
//     if (thumbnail != null) {
//       data['thumbnail'] = thumbnail!.toJson();
//     }
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (longBylineText != null) {
//       data['longBylineText'] = longBylineText!.toJson();
//     }
//     if (publishedTimeText != null) {
//       data['publishedTimeText'] = publishedTimeText!.toJson();
//     }
//     if (viewCountText != null) {
//       data['viewCountText'] = viewCountText!.toJson();
//     }
//     if (lengthText != null) {
//       data['lengthText'] = lengthText!.toJson();
//     }
//     if (navigationEndpoint != null) {
//       data['navigationEndpoint'] = navigationEndpoint!.toJson();
//     }
//     if (shortBylineText != null) {
//       data['shortBylineText'] = shortBylineText!.toJson();
//     }
//     if (channelThumbnail != null) {
//       data['channelThumbnail'] = channelThumbnail!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (shortViewCountText != null) {
//       data['shortViewCountText'] = shortViewCountText!.toJson();
//     }
//     if (menu != null) {
//       data['menu'] = menu!.toJson();
//     }
//     if (thumbnailOverlays != null) {
//       data['thumbnailOverlays'] =
//           thumbnailOverlays!.map((v) => v.toJson()).toList();
//     }
//     if (accessibility != null) {
//       data['accessibility'] = accessibility!.toJson();
//     }
//     if (badges != null) {
//       data['badges'] = badges!.map((v) => v.toJson()).toList();
//     }
//     if (ownerBadges != null) {
//       data['ownerBadges'] = ownerBadges!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class WatchEndpoint {
//   String? videoId;
//   bool? nofollow;
//   WatchEndpointSupportedOnesieConfig? watchEndpointSupportedOnesieConfig;
//
//   WatchEndpoint(
//       {this.videoId, this.nofollow, this.watchEndpointSupportedOnesieConfig});
//
//   WatchEndpoint.fromJson(Map<String, dynamic> json) {
//     videoId = json['videoId'];
//     nofollow = json['nofollow'];
//     watchEndpointSupportedOnesieConfig =
//     json['watchEndpointSupportedOnesieConfig'] != null
//         ? WatchEndpointSupportedOnesieConfig.fromJson(
//         json['watchEndpointSupportedOnesieConfig'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['videoId'] = videoId;
//     data['nofollow'] = nofollow;
//     if (watchEndpointSupportedOnesieConfig != null) {
//       data['watchEndpointSupportedOnesieConfig'] =
//           watchEndpointSupportedOnesieConfig!.toJson();
//     }
//     return data;
//   }
// }
//
// class MenuRenderer {
//   List<Items>? items;
//   String? trackingParams;
//   Accessibility? accessibility;
//   String? targetId;
//
//   MenuRenderer(
//       {this.items, this.trackingParams, this.accessibility, this.targetId});
//
//   MenuRenderer.fromJson(Map<String, dynamic> json) {
//     if (json['items'] != null) {
//       items = <Items>[];
//       json['items'].forEach((v) {
//         items!.add(Items.fromJson(v));
//       });
//     }
//     trackingParams = json['trackingParams'];
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     targetId = json['targetId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (items != null) {
//       data['items'] = items!.map((v) => v.toJson()).toList();
//     }
//     data['trackingParams'] = trackingParams;
//     if (accessibility != null) {
//       data['accessibility'] = accessibility!.toJson();
//     }
//     data['targetId'] = this.targetId;
//     return data;
//   }
// }
//
// class Actions {
//   String? clickTrackingParams;
//   AddToPlaylistCommand? addToPlaylistCommand;
//   OpenPopupAction? openPopupAction;
//
//   Actions(
//       {this.clickTrackingParams,
//         this.addToPlaylistCommand,
//         this.openPopupAction});
//
//   Actions.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     addToPlaylistCommand = json['addToPlaylistCommand'] != null
//         ? AddToPlaylistCommand.fromJson(json['addToPlaylistCommand'])
//         : null;
//     openPopupAction = json['openPopupAction'] != null
//         ? OpenPopupAction.fromJson(json['openPopupAction'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (this.addToPlaylistCommand != null) {
//       data['addToPlaylistCommand'] = this.addToPlaylistCommand!.toJson();
//     }
//     if (this.openPopupAction != null) {
//       data['openPopupAction'] = this.openPopupAction!.toJson();
//     }
//     return data;
//   }
// }
//
// class AddToPlaylistCommand {
//   bool? openMiniplayer;
//   bool? openListPanel;
//   String? videoId;
//   String? listType;
//   OnCreateListCommand? onCreateListCommand;
//   List<String>? videoIds;
//
//   AddToPlaylistCommand(
//       {this.openMiniplayer,
//         this.openListPanel,
//         this.videoId,
//         this.listType,
//         this.onCreateListCommand,
//         this.videoIds});
//
//   AddToPlaylistCommand.fromJson(Map<String, dynamic> json) {
//     openMiniplayer = json['openMiniplayer'];
//     openListPanel = json['openListPanel'];
//     videoId = json['videoId'];
//     listType = json['listType'];
//     onCreateListCommand = json['onCreateListCommand'] != null
//         ? OnCreateListCommand.fromJson(json['onCreateListCommand'])
//         : null;
//     videoIds = json['videoIds'].cast<String>();
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['openMiniplayer'] = openMiniplayer;
//     data['openListPanel'] = openListPanel;
//     data['videoId'] = videoId;
//     data['listType'] = listType;
//     if (onCreateListCommand != null) {
//       data['onCreateListCommand'] = onCreateListCommand!.toJson();
//     }
//     data['videoIds'] = videoIds;
//     return data;
//   }
// }
//
// class OnCreateListCommand {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   CreatePlaylistServiceEndpoint? createPlaylistServiceEndpoint;
//
//   OnCreateListCommand(
//       {this.clickTrackingParams,
//         this.commandMetadata,
//         this.createPlaylistServiceEndpoint});
//
//   OnCreateListCommand.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     createPlaylistServiceEndpoint =
//     json['createPlaylistServiceEndpoint'] != null
//         ? CreatePlaylistServiceEndpoint.fromJson(
//         json['createPlaylistServiceEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (createPlaylistServiceEndpoint != null) {
//       data['createPlaylistServiceEndpoint'] =
//           createPlaylistServiceEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class CreatePlaylistServiceEndpoint {
//   List<String>? videoIds;
//   String? params;
//
//   CreatePlaylistServiceEndpoint({this.videoIds, this.params});
//
//   CreatePlaylistServiceEndpoint.fromJson(Map<String, dynamic> json) {
//     videoIds = json['videoIds'].cast<String>();
//     params = json['params'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['videoIds'] = videoIds;
//     data['params'] = params;
//     return data;
//   }
// }
//
// class OpenPopupAction {
//   Popup? popup;
//   String? popupType;
//
//   OpenPopupAction({this.popup, this.popupType});
//
//   OpenPopupAction.fromJson(Map<String, dynamic> json) {
//     popup = json['popup'] != null ? Popup.fromJson(json['popup']) : null;
//     popupType = json['popupType'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (popup != null) {
//       data['popup'] = popup!.toJson();
//     }
//     data['popupType'] = popupType;
//     return data;
//   }
// }
//
// class Popup {
//   NotificationActionRenderer? notificationActionRenderer;
//
//   Popup({this.notificationActionRenderer});
//
//   Popup.fromJson(Map<String, dynamic> json) {
//     notificationActionRenderer = json['notificationActionRenderer'] != null
//         ? NotificationActionRenderer.fromJson(
//         json['notificationActionRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.notificationActionRenderer != null) {
//       data['notificationActionRenderer'] =
//           this.notificationActionRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class NotificationActionRenderer {
//   ViewCount? responseText;
//   String? trackingParams;
//
//   NotificationActionRenderer({this.responseText, this.trackingParams});
//
//   NotificationActionRenderer.fromJson(Map<String, dynamic> json) {
//     responseText = json['responseText'] != null
//         ? ViewCount.fromJson(json['responseText'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (responseText != null) {
//       data['responseText'] = responseText!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class ThumbnailOverlays {
//   ThumbnailOverlayTimeStatusRenderer? thumbnailOverlayTimeStatusRenderer;
//   ThumbnailOverlayToggleButtonRenderer? thumbnailOverlayToggleButtonRenderer;
//   ThumbnailOverlayNowPlayingRenderer? thumbnailOverlayNowPlayingRenderer;
//
//   ThumbnailOverlays(
//       {this.thumbnailOverlayTimeStatusRenderer,
//         this.thumbnailOverlayToggleButtonRenderer,
//         this.thumbnailOverlayNowPlayingRenderer});
//
//   ThumbnailOverlays.fromJson(Map<String, dynamic> json) {
//     thumbnailOverlayTimeStatusRenderer =
//     json['thumbnailOverlayTimeStatusRenderer'] != null
//         ? ThumbnailOverlayTimeStatusRenderer.fromJson(
//         json['thumbnailOverlayTimeStatusRenderer'])
//         : null;
//     thumbnailOverlayToggleButtonRenderer =
//     json['thumbnailOverlayToggleButtonRenderer'] != null
//         ? ThumbnailOverlayToggleButtonRenderer.fromJson(
//         json['thumbnailOverlayToggleButtonRenderer'])
//         : null;
//     thumbnailOverlayNowPlayingRenderer =
//     json['thumbnailOverlayNowPlayingRenderer'] != null
//         ? ThumbnailOverlayNowPlayingRenderer.fromJson(
//         json['thumbnailOverlayNowPlayingRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (thumbnailOverlayTimeStatusRenderer != null) {
//       data['thumbnailOverlayTimeStatusRenderer'] =
//           thumbnailOverlayTimeStatusRenderer!.toJson();
//     }
//     if (this.thumbnailOverlayToggleButtonRenderer != null) {
//       data['thumbnailOverlayToggleButtonRenderer'] =
//           this.thumbnailOverlayToggleButtonRenderer!.toJson();
//     }
//     if (this.thumbnailOverlayNowPlayingRenderer != null) {
//       data['thumbnailOverlayNowPlayingRenderer'] =
//           this.thumbnailOverlayNowPlayingRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class ThumbnailOverlayTimeStatusRenderer {
//   Title? text;
//   String? style;
//
//   ThumbnailOverlayTimeStatusRenderer({this.text, this.style});
//
//   ThumbnailOverlayTimeStatusRenderer.fromJson(Map<String, dynamic> json) {
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     style = json['style'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (text != null) {
//       data['text'] = text!.toJson();
//     }
//     data['style'] = style;
//     return data;
//   }
// }
//
// class ThumbnailOverlayToggleButtonRenderer {
//   bool? isToggled;
//   Icon? untoggledIcon;
//   Icon? toggledIcon;
//   String? untoggledTooltip;
//   String? toggledTooltip;
//   UntoggledServiceEndpoint? untoggledServiceEndpoint;
//   ToggledServiceEndpoint? toggledServiceEndpoint;
//   Accessibility? untoggledAccessibility;
//   Accessibility? toggledAccessibility;
//   String? trackingParams;
//
//   ThumbnailOverlayToggleButtonRenderer(
//       {this.isToggled,
//         this.untoggledIcon,
//         this.toggledIcon,
//         this.untoggledTooltip,
//         this.toggledTooltip,
//         this.untoggledServiceEndpoint,
//         this.toggledServiceEndpoint,
//         this.untoggledAccessibility,
//         this.toggledAccessibility,
//         this.trackingParams});
//
//   ThumbnailOverlayToggleButtonRenderer.fromJson(Map<String, dynamic> json) {
//     isToggled = json['isToggled'];
//     untoggledIcon = json['untoggledIcon'] != null
//         ? Icon.fromJson(json['untoggledIcon'])
//         : null;
//     toggledIcon = json['toggledIcon'] != null
//         ? Icon.fromJson(json['toggledIcon'])
//         : null;
//     untoggledTooltip = json['untoggledTooltip'];
//     toggledTooltip = json['toggledTooltip'];
//     untoggledServiceEndpoint = json['untoggledServiceEndpoint'] != null
//         ? UntoggledServiceEndpoint.fromJson(
//         json['untoggledServiceEndpoint'])
//         : null;
//     toggledServiceEndpoint = json['toggledServiceEndpoint'] != null
//         ? ToggledServiceEndpoint.fromJson(json['toggledServiceEndpoint'])
//         : null;
//     untoggledAccessibility = json['untoggledAccessibility'] != null
//         ? Accessibility.fromJson(json['untoggledAccessibility'])
//         : null;
//     toggledAccessibility = json['toggledAccessibility'] != null
//         ? Accessibility.fromJson(json['toggledAccessibility'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['isToggled'] = isToggled;
//     if (untoggledIcon != null) {
//       data['untoggledIcon'] = untoggledIcon!.toJson();
//     }
//     if (toggledIcon != null) {
//       data['toggledIcon'] = toggledIcon!.toJson();
//     }
//     data['untoggledTooltip'] = untoggledTooltip;
//     data['toggledTooltip'] = toggledTooltip;
//     if (untoggledServiceEndpoint != null) {
//       data['untoggledServiceEndpoint'] =
//           untoggledServiceEndpoint!.toJson();
//     }
//     if (toggledServiceEndpoint != null) {
//       data['toggledServiceEndpoint'] = toggledServiceEndpoint!.toJson();
//     }
//     if (untoggledAccessibility != null) {
//       data['untoggledAccessibility'] = untoggledAccessibility!.toJson();
//     }
//     if (toggledAccessibility != null) {
//       data['toggledAccessibility'] = toggledAccessibility!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class UntoggledServiceEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   PlaylistEditEndpoint? playlistEditEndpoint;
//   SignalServiceEndpoint? signalServiceEndpoint;
//
//   UntoggledServiceEndpoint(
//       {this.clickTrackingParams,
//         this.commandMetadata,
//         this.playlistEditEndpoint,
//         this.signalServiceEndpoint});
//
//   UntoggledServiceEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     playlistEditEndpoint = json['playlistEditEndpoint'] != null
//         ? PlaylistEditEndpoint.fromJson(json['playlistEditEndpoint'])
//         : null;
//     signalServiceEndpoint = json['signalServiceEndpoint'] != null
//         ? SignalServiceEndpoint.fromJson(json['signalServiceEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (playlistEditEndpoint != null) {
//       data['playlistEditEndpoint'] = playlistEditEndpoint!.toJson();
//     }
//     if (signalServiceEndpoint != null) {
//       data['signalServiceEndpoint'] = signalServiceEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class PlaylistEditEndpoint {
//   String? playlistId;
//   List<Actions>? actions;
//
//   PlaylistEditEndpoint({this.playlistId, this.actions});
//
//   PlaylistEditEndpoint.fromJson(Map<String, dynamic> json) {
//     playlistId = json['playlistId'];
//     if (json['actions'] != null) {
//       actions = <Actions>[];
//       json['actions'].forEach((v) {
//         actions!.add(Actions.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['playlistId'] = playlistId;
//     if (actions != null) {
//       data['actions'] = actions!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Actions {
//   String? addedVideoId;
//   String? action;
//
//   Actions({this.addedVideoId, this.action});
//
//   Actions.fromJson(Map<String, dynamic> json) {
//     addedVideoId = json['addedVideoId'];
//     action = json['action'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['addedVideoId'] = this.addedVideoId;
//     data['action'] = this.action;
//     return data;
//   }
// }
//
// class Actions {
//   String? clickTrackingParams;
//   AddToPlaylistCommand? addToPlaylistCommand;
//
//   Actions({this.clickTrackingParams, this.addToPlaylistCommand});
//
//   Actions.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     addToPlaylistCommand = json['addToPlaylistCommand'] != null
//         ? AddToPlaylistCommand.fromJson(json['addToPlaylistCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (this.addToPlaylistCommand != null) {
//       data['addToPlaylistCommand'] = this.addToPlaylistCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class ToggledServiceEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   PlaylistEditEndpoint? playlistEditEndpoint;
//
//   ToggledServiceEndpoint(
//       {this.clickTrackingParams,
//         this.commandMetadata,
//         this.playlistEditEndpoint});
//
//   ToggledServiceEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     playlistEditEndpoint = json['playlistEditEndpoint'] != null
//         ? PlaylistEditEndpoint.fromJson(json['playlistEditEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (playlistEditEndpoint != null) {
//       data['playlistEditEndpoint'] = playlistEditEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class Actions {
//   String? action;
//   String? removedVideoId;
//
//   Actions({this.action, this.removedVideoId});
//
//   Actions.fromJson(Map<String, dynamic> json) {
//     action = json['action'];
//     removedVideoId = json['removedVideoId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['action'] = this.action;
//     data['removedVideoId'] = this.removedVideoId;
//     return data;
//   }
// }
//
// class ThumbnailOverlayNowPlayingRenderer {
//   Title? text;
//
//   ThumbnailOverlayNowPlayingRenderer({this.text});
//
//   ThumbnailOverlayNowPlayingRenderer.fromJson(Map<String, dynamic> json) {
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (text != null) {
//       data['text'] = text!.toJson();
//     }
//     return data;
//   }
// }
//
// class MetadataBadgeRenderer {
//   String? style;
//   String? label;
//   String? trackingParams;
//
//   MetadataBadgeRenderer({this.style, this.label, this.trackingParams});
//
//   MetadataBadgeRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     label = json['label'];
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['label'] = label;
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class ContinuationItemRenderer {
//   String? trigger;
//   ContinuationEndpoint? continuationEndpoint;
//   Button? button;
//
//   ContinuationItemRenderer(
//       {this.trigger, this.continuationEndpoint, this.button});
//
//   ContinuationItemRenderer.fromJson(Map<String, dynamic> json) {
//     trigger = json['trigger'];
//     continuationEndpoint = json['continuationEndpoint'] != null
//         ? ContinuationEndpoint.fromJson(json['continuationEndpoint'])
//         : null;
//     button =
//     json['button'] != null ? Button.fromJson(json['button']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['trigger'] = trigger;
//     if (continuationEndpoint != null) {
//       data['continuationEndpoint'] = continuationEndpoint!.toJson();
//     }
//     if (button != null) {
//       data['button'] = button!.toJson();
//     }
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   Title? text;
//   String? trackingParams;
//   ServiceEndpoint? command;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.text,
//         this.trackingParams,
//         this.command});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     trackingParams = json['trackingParams'];
//     command = json['command'] != null
//         ? ServiceEndpoint.fromJson(json['command'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (this.text != null) {
//       data['text'] = this.text!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (this.command != null) {
//       data['command'] = this.command!.toJson();
//     }
//     return data;
//   }
// }
//
// class Autoplay {
//   Autoplay? autoplay;
//
//   Autoplay({this.autoplay});
//
//   Autoplay.fromJson(Map<String, dynamic> json) {
//     autoplay = json['autoplay'] != null
//         ? Autoplay.fromJson(json['autoplay'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.autoplay != null) {
//       data['autoplay'] = this.autoplay!.toJson();
//     }
//     return data;
//   }
// }
//
// class Autoplay {
//   List<Sets>? sets;
//   int? countDownSecs;
//   String? trackingParams;
//
//   Autoplay({this.sets, this.countDownSecs, this.trackingParams});
//
//   Autoplay.fromJson(Map<String, dynamic> json) {
//     if (json['sets'] != null) {
//       sets = <Sets>[];
//       json['sets'].forEach((v) {
//         sets!.add(Sets.fromJson(v));
//       });
//     }
//     countDownSecs = json['countDownSecs'];
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.sets != null) {
//       data['sets'] = this.sets!.map((v) => v.toJson()).toList();
//     }
//     data['countDownSecs'] = this.countDownSecs;
//     data['trackingParams'] = this.trackingParams;
//     return data;
//   }
// }
//
// class Sets {
//   String? mode;
//   NavigationEndpoints? autoplayVideo;
//
//   Sets({this.mode, this.autoplayVideo});
//
//   Sets.fromJson(Map<String, dynamic> json) {
//     mode = json['mode'];
//     autoplayVideo = json['autoplayVideo'] != null
//         ? NavigationEndpoints.fromJson(json['autoplayVideo'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['mode'] = mode;
//     if (autoplayVideo != null) {
//       data['autoplayVideo'] = autoplayVideo!.toJson();
//     }
//     return data;
//   }
// }
//
// class PlayerOverlays {
//   PlayerOverlayRenderer? playerOverlayRenderer;
//
//   PlayerOverlays({this.playerOverlayRenderer});
//
//   PlayerOverlays.fromJson(Map<String, dynamic> json) {
//     playerOverlayRenderer = json['playerOverlayRenderer'] != null
//         ? PlayerOverlayRenderer.fromJson(json['playerOverlayRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (playerOverlayRenderer != null) {
//       data['playerOverlayRenderer'] = playerOverlayRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class PlayerOverlayRenderer {
//   EndScreen? endScreen;
//   Autoplay? autoplay;
//   Button? shareButton;
//   VideoActions? addToMenu;
//   VideoDetails? videoDetails;
//   AutonavToggle? autonavToggle;
//   DecoratedPlayerBarRenderer? decoratedPlayerBarRenderer;
//
//   PlayerOverlayRenderer(
//       {this.endScreen,
//         this.autoplay,
//         this.shareButton,
//         this.addToMenu,
//         this.videoDetails,
//         this.autonavToggle,
//         this.decoratedPlayerBarRenderer});
//
//   PlayerOverlayRenderer.fromJson(Map<String, dynamic> json) {
//     endScreen = json['endScreen'] != null
//         ? EndScreen.fromJson(json['endScreen'])
//         : null;
//     autoplay = json['autoplay'] != null
//         ? Autoplay.fromJson(json['autoplay'])
//         : null;
//     shareButton = json['shareButton'] != null
//         ? Button.fromJson(json['shareButton'])
//         : null;
//     addToMenu = json['addToMenu'] != null
//         ? VideoActions.fromJson(json['addToMenu'])
//         : null;
//     videoDetails = json['videoDetails'] != null
//         ? VideoDetails.fromJson(json['videoDetails'])
//         : null;
//     autonavToggle = json['autonavToggle'] != null
//         ? AutonavToggle.fromJson(json['autonavToggle'])
//         : null;
//     decoratedPlayerBarRenderer = json['decoratedPlayerBarRenderer'] != null
//         ? DecoratedPlayerBarRenderer.fromJson(
//         json['decoratedPlayerBarRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (endScreen != null) {
//       data['endScreen'] = endScreen!.toJson();
//     }
//     if (autoplay != null) {
//       data['autoplay'] = autoplay!.toJson();
//     }
//     if (shareButton != null) {
//       data['shareButton'] = shareButton!.toJson();
//     }
//     if (addToMenu != null) {
//       data['addToMenu'] = addToMenu!.toJson();
//     }
//     if (videoDetails != null) {
//       data['videoDetails'] = videoDetails!.toJson();
//     }
//     if (autonavToggle != null) {
//       data['autonavToggle'] = autonavToggle!.toJson();
//     }
//     if (decoratedPlayerBarRenderer != null) {
//       data['decoratedPlayerBarRenderer'] =
//           decoratedPlayerBarRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class EndScreen {
//   WatchNextEndScreenRenderer? watchNextEndScreenRenderer;
//
//   EndScreen({this.watchNextEndScreenRenderer});
//
//   EndScreen.fromJson(Map<String, dynamic> json) {
//     watchNextEndScreenRenderer = json['watchNextEndScreenRenderer'] != null
//         ? WatchNextEndScreenRenderer.fromJson(
//         json['watchNextEndScreenRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (watchNextEndScreenRenderer != null) {
//       data['watchNextEndScreenRenderer'] =
//           watchNextEndScreenRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class WatchNextEndScreenRenderer {
//   List<Results>? results;
//   Title? title;
//   String? trackingParams;
//
//   WatchNextEndScreenRenderer({this.results, this.title, this.trackingParams});
//
//   WatchNextEndScreenRenderer.fromJson(Map<String, dynamic> json) {
//     if (json['results'] != null) {
//       results = <Results>[];
//       json['results'].forEach((v) {
//         results!.add(Results.fromJson(v));
//       });
//     }
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (results != null) {
//       data['results'] = results!.map((v) => v.toJson()).toList();
//     }
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class Results {
//   EndScreenVideoRenderer? endScreenVideoRenderer;
//
//   Results({this.endScreenVideoRenderer});
//
//   Results.fromJson(Map<String, dynamic> json) {
//     endScreenVideoRenderer = json['endScreenVideoRenderer'] != null
//         ? EndScreenVideoRenderer.fromJson(json['endScreenVideoRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (endScreenVideoRenderer != null) {
//       data['endScreenVideoRenderer'] = endScreenVideoRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class EndScreenVideoRenderer {
//   String? videoId;
//   Thumbnail? thumbnail;
//   Title? title;
//   Title? shortBylineText;
//   DefaultText? lengthText;
//   int? lengthInSeconds;
//   NavigationEndpoint? navigationEndpoint;
//   String? trackingParams;
//   DefaultText? shortViewCountText;
//   ViewCount? publishedTimeText;
//   List<ThumbnailOverlays>? thumbnailOverlays;
//
//   EndScreenVideoRenderer(
//       {this.videoId,
//         this.thumbnail,
//         this.title,
//         this.shortBylineText,
//         this.lengthText,
//         this.lengthInSeconds,
//         this.navigationEndpoint,
//         this.trackingParams,
//         this.shortViewCountText,
//         this.publishedTimeText,
//         this.thumbnailOverlays});
//
//   EndScreenVideoRenderer.fromJson(Map<String, dynamic> json) {
//     videoId = json['videoId'];
//     thumbnail = json['thumbnail'] != null
//         ? Thumbnail.fromJson(json['thumbnail'])
//         : null;
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     shortBylineText = json['shortBylineText'] != null
//         ? Title.fromJson(json['shortBylineText'])
//         : null;
//     lengthText = json['lengthText'] != null
//         ? DefaultText.fromJson(json['lengthText'])
//         : null;
//     lengthInSeconds = json['lengthInSeconds'];
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     trackingParams = json['trackingParams'];
//     shortViewCountText = json['shortViewCountText'] != null
//         ? DefaultText.fromJson(json['shortViewCountText'])
//         : null;
//     publishedTimeText = json['publishedTimeText'] != null
//         ? ViewCount.fromJson(json['publishedTimeText'])
//         : null;
//     if (json['thumbnailOverlays'] != null) {
//       thumbnailOverlays = <ThumbnailOverlays>[];
//       json['thumbnailOverlays'].forEach((v) {
//         thumbnailOverlays!.add(ThumbnailOverlays.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['videoId'] = videoId;
//     if (thumbnail != null) {
//       data['thumbnail'] = thumbnail!.toJson();
//     }
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (shortBylineText != null) {
//       data['shortBylineText'] = shortBylineText!.toJson();
//     }
//     if (lengthText != null) {
//       data['lengthText'] = lengthText!.toJson();
//     }
//     data['lengthInSeconds'] = lengthInSeconds;
//     if (navigationEndpoint != null) {
//       data['navigationEndpoint'] = navigationEndpoint!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (shortViewCountText != null) {
//       data['shortViewCountText'] = shortViewCountText!.toJson();
//     }
//     if (publishedTimeText != null) {
//       data['publishedTimeText'] = publishedTimeText!.toJson();
//     }
//     if (thumbnailOverlays != null) {
//       data['thumbnailOverlays'] =
//           thumbnailOverlays!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class ThumbnailOverlays {
//   ThumbnailOverlayTimeStatusRenderer? thumbnailOverlayTimeStatusRenderer;
//   ThumbnailOverlayNowPlayingRenderer? thumbnailOverlayNowPlayingRenderer;
//
//   ThumbnailOverlays(
//       {this.thumbnailOverlayTimeStatusRenderer,
//         this.thumbnailOverlayNowPlayingRenderer});
//
//   ThumbnailOverlays.fromJson(Map<String, dynamic> json) {
//     thumbnailOverlayTimeStatusRenderer =
//     json['thumbnailOverlayTimeStatusRenderer'] != null
//         ? ThumbnailOverlayTimeStatusRenderer.fromJson(
//         json['thumbnailOverlayTimeStatusRenderer'])
//         : null;
//     thumbnailOverlayNowPlayingRenderer =
//     json['thumbnailOverlayNowPlayingRenderer'] != null
//         ? ThumbnailOverlayNowPlayingRenderer.fromJson(
//         json['thumbnailOverlayNowPlayingRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (thumbnailOverlayTimeStatusRenderer != null) {
//       data['thumbnailOverlayTimeStatusRenderer'] =
//           thumbnailOverlayTimeStatusRenderer!.toJson();
//     }
//     if (this.thumbnailOverlayNowPlayingRenderer != null) {
//       data['thumbnailOverlayNowPlayingRenderer'] =
//           this.thumbnailOverlayNowPlayingRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class Autoplay {
//   PlayerOverlayAutoplayRenderer? playerOverlayAutoplayRenderer;
//
//   Autoplay({this.playerOverlayAutoplayRenderer});
//
//   Autoplay.fromJson(Map<String, dynamic> json) {
//     playerOverlayAutoplayRenderer =
//     json['playerOverlayAutoplayRenderer'] != null
//         ? PlayerOverlayAutoplayRenderer.fromJson(
//         json['playerOverlayAutoplayRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (playerOverlayAutoplayRenderer != null) {
//       data['playerOverlayAutoplayRenderer'] =
//           playerOverlayAutoplayRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class PlayerOverlayAutoplayRenderer {
//   Title? title;
//   DefaultText? videoTitle;
//   Title? byline;
//   ViewCount? pauseText;
//   Thumbnail? background;
//   int? countDownSecs;
//   Button? cancelButton;
//   Button? nextButton;
//   String? trackingParams;
//   Button? closeButton;
//   List<ThumbnailOverlays>? thumbnailOverlays;
//   bool? preferImmediateRedirect;
//   String? videoId;
//   ViewCount? publishedTimeText;
//   bool? webShowNewAutonavCountdown;
//   bool? webShowBigThumbnailEndscreen;
//   DefaultText? shortViewCountText;
//   int? countDownSecsForFullscreen;
//
//   PlayerOverlayAutoplayRenderer(
//       {this.title,
//         this.videoTitle,
//         this.byline,
//         this.pauseText,
//         this.background,
//         this.countDownSecs,
//         this.cancelButton,
//         this.nextButton,
//         this.trackingParams,
//         this.closeButton,
//         this.thumbnailOverlays,
//         this.preferImmediateRedirect,
//         this.videoId,
//         this.publishedTimeText,
//         this.webShowNewAutonavCountdown,
//         this.webShowBigThumbnailEndscreen,
//         this.shortViewCountText,
//         this.countDownSecsForFullscreen});
//
//   PlayerOverlayAutoplayRenderer.fromJson(Map<String, dynamic> json) {
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     videoTitle = json['videoTitle'] != null
//         ? DefaultText.fromJson(json['videoTitle'])
//         : null;
//     byline = json['byline'] != null ? Title.fromJson(json['byline']) : null;
//     pauseText = json['pauseText'] != null
//         ? ViewCount.fromJson(json['pauseText'])
//         : null;
//     background = json['background'] != null
//         ? Thumbnail.fromJson(json['background'])
//         : null;
//     countDownSecs = json['countDownSecs'];
//     cancelButton = json['cancelButton'] != null
//         ? Button.fromJson(json['cancelButton'])
//         : null;
//     nextButton = json['nextButton'] != null
//         ? Button.fromJson(json['nextButton'])
//         : null;
//     trackingParams = json['trackingParams'];
//     closeButton = json['closeButton'] != null
//         ? Button.fromJson(json['closeButton'])
//         : null;
//     if (json['thumbnailOverlays'] != null) {
//       thumbnailOverlays = <ThumbnailOverlays>[];
//       json['thumbnailOverlays'].forEach((v) {
//         thumbnailOverlays!.add(ThumbnailOverlays.fromJson(v));
//       });
//     }
//     preferImmediateRedirect = json['preferImmediateRedirect'];
//     videoId = json['videoId'];
//     publishedTimeText = json['publishedTimeText'] != null
//         ? ViewCount.fromJson(json['publishedTimeText'])
//         : null;
//     webShowNewAutonavCountdown = json['webShowNewAutonavCountdown'];
//     webShowBigThumbnailEndscreen = json['webShowBigThumbnailEndscreen'];
//     shortViewCountText = json['shortViewCountText'] != null
//         ? DefaultText.fromJson(json['shortViewCountText'])
//         : null;
//     countDownSecsForFullscreen = json['countDownSecsForFullscreen'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (videoTitle != null) {
//       data['videoTitle'] = videoTitle!.toJson();
//     }
//     if (byline != null) {
//       data['byline'] = byline!.toJson();
//     }
//     if (pauseText != null) {
//       data['pauseText'] = pauseText!.toJson();
//     }
//     if (background != null) {
//       data['background'] = background!.toJson();
//     }
//     data['countDownSecs'] = countDownSecs;
//     if (cancelButton != null) {
//       data['cancelButton'] = cancelButton!.toJson();
//     }
//     if (nextButton != null) {
//       data['nextButton'] = nextButton!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (closeButton != null) {
//       data['closeButton'] = closeButton!.toJson();
//     }
//     if (thumbnailOverlays != null) {
//       data['thumbnailOverlays'] =
//           thumbnailOverlays!.map((v) => v.toJson()).toList();
//     }
//     data['preferImmediateRedirect'] = preferImmediateRedirect;
//     data['videoId'] = videoId;
//     if (publishedTimeText != null) {
//       data['publishedTimeText'] = publishedTimeText!.toJson();
//     }
//     data['webShowNewAutonavCountdown'] = webShowNewAutonavCountdown;
//     data['webShowBigThumbnailEndscreen'] = webShowBigThumbnailEndscreen;
//     if (shortViewCountText != null) {
//       data['shortViewCountText'] = shortViewCountText!.toJson();
//     }
//     data['countDownSecsForFullscreen'] = countDownSecsForFullscreen;
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   Title? text;
//   Accessibility? accessibility;
//   String? trackingParams;
//   AccessibilityData? accessibilityData;
//   ServiceEndpoint? command;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.text,
//         this.accessibility,
//         this.trackingParams,
//         this.accessibilityData,
//         this.command});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     trackingParams = json['trackingParams'];
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//     command = json['command'] != null
//         ? ServiceEndpoint.fromJson(json['command'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (this.text != null) {
//       data['text'] = this.text!.toJson();
//     }
//     if (this.accessibility != null) {
//       data['accessibility'] = this.accessibility!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (accessibilityData != null) {
//       data['accessibilityData'] = accessibilityData!.toJson();
//     }
//     if (this.command != null) {
//       data['command'] = this.command!.toJson();
//     }
//     return data;
//   }
// }
//
// class Command {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   GetSurveyCommand? getSurveyCommand;
//
//   Command(
//       {this.clickTrackingParams, this.commandMetadata, this.getSurveyCommand});
//
//   Command.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     getSurveyCommand = json['getSurveyCommand'] != null
//         ? GetSurveyCommand.fromJson(json['getSurveyCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (getSurveyCommand != null) {
//       data['getSurveyCommand'] = getSurveyCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class GetSurveyCommand {
//   NavigationEndpoint? endpoint;
//   String? action;
//
//   GetSurveyCommand({this.endpoint, this.action});
//
//   GetSurveyCommand.fromJson(Map<String, dynamic> json) {
//     endpoint = json['endpoint'] != null
//         ? NavigationEndpoint.fromJson(json['endpoint'])
//         : null;
//     action = json['action'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (endpoint != null) {
//       data['endpoint'] = endpoint!.toJson();
//     }
//     data['action'] = action;
//     return data;
//   }
// }
//
// class Endpoint {
//   SignInEndpoint? watch;
//
//   Endpoint({this.watch});
//
//   Endpoint.fromJson(Map<String, dynamic> json) {
//     watch = json['watch'] != null
//         ? SignInEndpoint.fromJson(json['watch'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (watch != null) {
//       data['watch'] = watch!.toJson();
//     }
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   NavigationEndpoint? navigationEndpoint;
//   Accessibility? accessibility;
//   String? trackingParams;
//   AccessibilityData? accessibilityData;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.navigationEndpoint,
//         this.accessibility,
//         this.trackingParams,
//         this.accessibilityData});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     trackingParams = json['trackingParams'];
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (this.navigationEndpoint != null) {
//       data['navigationEndpoint'] = this.navigationEndpoint!.toJson();
//     }
//     if (this.accessibility != null) {
//       data['accessibility'] = this.accessibility!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (accessibilityData != null) {
//       data['accessibilityData'] = accessibilityData!.toJson();
//     }
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   Icon? icon;
//   Accessibility? accessibility;
//   String? trackingParams;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.icon,
//         this.accessibility,
//         this.trackingParams});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     if (this.accessibility != null) {
//       data['accessibility'] = this.accessibility!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class ThumbnailOverlays {
//   ThumbnailOverlayTimeStatusRenderer? thumbnailOverlayTimeStatusRenderer;
//
//   ThumbnailOverlays({this.thumbnailOverlayTimeStatusRenderer});
//
//   ThumbnailOverlays.fromJson(Map<String, dynamic> json) {
//     thumbnailOverlayTimeStatusRenderer =
//     json['thumbnailOverlayTimeStatusRenderer'] != null
//         ? ThumbnailOverlayTimeStatusRenderer.fromJson(
//         json['thumbnailOverlayTimeStatusRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (thumbnailOverlayTimeStatusRenderer != null) {
//       data['thumbnailOverlayTimeStatusRenderer'] =
//           thumbnailOverlayTimeStatusRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   Icon? icon;
//   NavigationEndpoint? navigationEndpoint;
//   String? tooltip;
//   String? trackingParams;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.icon,
//         this.navigationEndpoint,
//         this.tooltip,
//         this.trackingParams});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     tooltip = json['tooltip'];
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     if (this.navigationEndpoint != null) {
//       data['navigationEndpoint'] = this.navigationEndpoint!.toJson();
//     }
//     data['tooltip'] = tooltip;
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class MenuRenderer {
//   String? trackingParams;
//
//   MenuRenderer({this.trackingParams});
//
//   MenuRenderer.fromJson(Map<String, dynamic> json) {
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class VideoDetails {
//   PlayerOverlayVideoDetailsRenderer? playerOverlayVideoDetailsRenderer;
//
//   VideoDetails({this.playerOverlayVideoDetailsRenderer});
//
//   VideoDetails.fromJson(Map<String, dynamic> json) {
//     playerOverlayVideoDetailsRenderer =
//     json['playerOverlayVideoDetailsRenderer'] != null
//         ? PlayerOverlayVideoDetailsRenderer.fromJson(
//         json['playerOverlayVideoDetailsRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (playerOverlayVideoDetailsRenderer != null) {
//       data['playerOverlayVideoDetailsRenderer'] =
//           playerOverlayVideoDetailsRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class PlayerOverlayVideoDetailsRenderer {
//   Title? title;
//   Title? subtitle;
//
//   PlayerOverlayVideoDetailsRenderer({this.title, this.subtitle});
//
//   PlayerOverlayVideoDetailsRenderer.fromJson(Map<String, dynamic> json) {
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     subtitle =
//     json['subtitle'] != null ? Title.fromJson(json['subtitle']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (subtitle != null) {
//       data['subtitle'] = subtitle!.toJson();
//     }
//     return data;
//   }
// }
//
// class AutonavToggle {
//   AutoplaySwitchButtonRenderer? autoplaySwitchButtonRenderer;
//
//   AutonavToggle({this.autoplaySwitchButtonRenderer});
//
//   AutonavToggle.fromJson(Map<String, dynamic> json) {
//     autoplaySwitchButtonRenderer = json['autoplaySwitchButtonRenderer'] != null
//         ? AutoplaySwitchButtonRenderer.fromJson(
//         json['autoplaySwitchButtonRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (autoplaySwitchButtonRenderer != null) {
//       data['autoplaySwitchButtonRenderer'] =
//           autoplaySwitchButtonRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class AutoplaySwitchButtonRenderer {
//   OnEnabledCommand? onEnabledCommand;
//   OnDisabledCommand? onDisabledCommand;
//   Accessibility? enabledAccessibilityData;
//   Accessibility? disabledAccessibilityData;
//   String? trackingParams;
//
//   AutoplaySwitchButtonRenderer(
//       {this.onEnabledCommand,
//         this.onDisabledCommand,
//         this.enabledAccessibilityData,
//         this.disabledAccessibilityData,
//         this.trackingParams});
//
//   AutoplaySwitchButtonRenderer.fromJson(Map<String, dynamic> json) {
//     onEnabledCommand = json['onEnabledCommand'] != null
//         ? OnEnabledCommand.fromJson(json['onEnabledCommand'])
//         : null;
//     onDisabledCommand = json['onDisabledCommand'] != null
//         ? OnDisabledCommand.fromJson(json['onDisabledCommand'])
//         : null;
//     enabledAccessibilityData = json['enabledAccessibilityData'] != null
//         ? Accessibility.fromJson(json['enabledAccessibilityData'])
//         : null;
//     disabledAccessibilityData = json['disabledAccessibilityData'] != null
//         ? Accessibility.fromJson(json['disabledAccessibilityData'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (onEnabledCommand != null) {
//       data['onEnabledCommand'] = onEnabledCommand!.toJson();
//     }
//     if (onDisabledCommand != null) {
//       data['onDisabledCommand'] = onDisabledCommand!.toJson();
//     }
//     if (enabledAccessibilityData != null) {
//       data['enabledAccessibilityData'] =
//           enabledAccessibilityData!.toJson();
//     }
//     if (disabledAccessibilityData != null) {
//       data['disabledAccessibilityData'] =
//           disabledAccessibilityData!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class OnEnabledCommand {
//   String? clickTrackingParams;
//   SignInEndpoint? enableAutoplayCommand;
//
//   OnEnabledCommand({this.clickTrackingParams, this.enableAutoplayCommand});
//
//   OnEnabledCommand.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     enableAutoplayCommand = json['enableAutoplayCommand'] != null
//         ? SignInEndpoint.fromJson(json['enableAutoplayCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (enableAutoplayCommand != null) {
//       data['enableAutoplayCommand'] = enableAutoplayCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class OnDisabledCommand {
//   String? clickTrackingParams;
//   SignInEndpoint? disableAutoplayCommand;
//
//   OnDisabledCommand({this.clickTrackingParams, this.disableAutoplayCommand});
//
//   OnDisabledCommand.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     disableAutoplayCommand = json['disableAutoplayCommand'] != null
//         ? SignInEndpoint.fromJson(json['disableAutoplayCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (disableAutoplayCommand != null) {
//       data['disableAutoplayCommand'] = disableAutoplayCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class DecoratedPlayerBarRenderer {
//   DecoratedPlayerBarRenderer? decoratedPlayerBarRenderer;
//
//   DecoratedPlayerBarRenderer({this.decoratedPlayerBarRenderer});
//
//   DecoratedPlayerBarRenderer.fromJson(Map<String, dynamic> json) {
//     decoratedPlayerBarRenderer = json['decoratedPlayerBarRenderer'] != null
//         ? DecoratedPlayerBarRenderer.fromJson(
//         json['decoratedPlayerBarRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.decoratedPlayerBarRenderer != null) {
//       data['decoratedPlayerBarRenderer'] =
//           this.decoratedPlayerBarRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class DecoratedPlayerBarRenderer {
//   PlayerBar? playerBar;
//
//   DecoratedPlayerBarRenderer({this.playerBar});
//
//   DecoratedPlayerBarRenderer.fromJson(Map<String, dynamic> json) {
//     playerBar = json['playerBar'] != null
//         ? PlayerBar.fromJson(json['playerBar'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (playerBar != null) {
//       data['playerBar'] = playerBar!.toJson();
//     }
//     return data;
//   }
// }
//
// class PlayerBar {
//   MultiMarkersPlayerBarRenderer? multiMarkersPlayerBarRenderer;
//
//   PlayerBar({this.multiMarkersPlayerBarRenderer});
//
//   PlayerBar.fromJson(Map<String, dynamic> json) {
//     multiMarkersPlayerBarRenderer =
//     json['multiMarkersPlayerBarRenderer'] != null
//         ? MultiMarkersPlayerBarRenderer.fromJson(
//         json['multiMarkersPlayerBarRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (multiMarkersPlayerBarRenderer != null) {
//       data['multiMarkersPlayerBarRenderer'] =
//           multiMarkersPlayerBarRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class MultiMarkersPlayerBarRenderer {
//   VisibleOnLoad? visibleOnLoad;
//   List<MarkersMap>? markersMap;
//
//   MultiMarkersPlayerBarRenderer({this.visibleOnLoad, this.markersMap});
//
//   MultiMarkersPlayerBarRenderer.fromJson(Map<String, dynamic> json) {
//     visibleOnLoad = json['visibleOnLoad'] != null
//         ? VisibleOnLoad.fromJson(json['visibleOnLoad'])
//         : null;
//     if (json['markersMap'] != null) {
//       markersMap = <MarkersMap>[];
//       json['markersMap'].forEach((v) {
//         markersMap!.add(MarkersMap.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (visibleOnLoad != null) {
//       data['visibleOnLoad'] = visibleOnLoad!.toJson();
//     }
//     if (markersMap != null) {
//       data['markersMap'] = markersMap!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class VisibleOnLoad {
//   String? key;
//
//   VisibleOnLoad({this.key});
//
//   VisibleOnLoad.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['key'] = key;
//     return data;
//   }
// }
//
// class MarkersMap {
//   String? key;
//   ViewCount? value;
//
//   MarkersMap({this.key, this.value});
//
//   MarkersMap.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     value =
//     json['value'] != null ? ViewCount.fromJson(json['value']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['key'] = key;
//     if (value != null) {
//       data['value'] = value!.toJson();
//     }
//     return data;
//   }
// }
//
// class Value {
//   String? trackingParams;
//   Heatmap? heatmap;
//
//   Value({this.trackingParams, this.heatmap});
//
//   Value.fromJson(Map<String, dynamic> json) {
//     trackingParams = json['trackingParams'];
//     heatmap =
//     json['heatmap'] != null ? Heatmap.fromJson(json['heatmap']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['trackingParams'] = trackingParams;
//     if (heatmap != null) {
//       data['heatmap'] = heatmap!.toJson();
//     }
//     return data;
//   }
// }
//
// class Heatmap {
//   HeatmapRenderer? heatmapRenderer;
//
//   Heatmap({this.heatmapRenderer});
//
//   Heatmap.fromJson(Map<String, dynamic> json) {
//     heatmapRenderer = json['heatmapRenderer'] != null
//         ? HeatmapRenderer.fromJson(json['heatmapRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (heatmapRenderer != null) {
//       data['heatmapRenderer'] = heatmapRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class HeatmapRenderer {
//   int? maxHeightDp;
//   int? minHeightDp;
//   int? showHideAnimationDurationMillis;
//   List<HeatMarkers>? heatMarkers;
//   List<HeatMarkersDecorations>? heatMarkersDecorations;
//
//   HeatmapRenderer(
//       {this.maxHeightDp,
//         this.minHeightDp,
//         this.showHideAnimationDurationMillis,
//         this.heatMarkers,
//         this.heatMarkersDecorations});
//
//   HeatmapRenderer.fromJson(Map<String, dynamic> json) {
//     maxHeightDp = json['maxHeightDp'];
//     minHeightDp = json['minHeightDp'];
//     showHideAnimationDurationMillis = json['showHideAnimationDurationMillis'];
//     if (json['heatMarkers'] != null) {
//       heatMarkers = <HeatMarkers>[];
//       json['heatMarkers'].forEach((v) {
//         heatMarkers!.add(HeatMarkers.fromJson(v));
//       });
//     }
//     if (json['heatMarkersDecorations'] != null) {
//       heatMarkersDecorations = <HeatMarkersDecorations>[];
//       json['heatMarkersDecorations'].forEach((v) {
//         heatMarkersDecorations!.add(HeatMarkersDecorations.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['maxHeightDp'] = maxHeightDp;
//     data['minHeightDp'] = minHeightDp;
//     data['showHideAnimationDurationMillis'] =
//         showHideAnimationDurationMillis;
//     if (heatMarkers != null) {
//       data['heatMarkers'] = heatMarkers!.map((v) => v.toJson()).toList();
//     }
//     if (heatMarkersDecorations != null) {
//       data['heatMarkersDecorations'] =
//           heatMarkersDecorations!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class HeatMarkers {
//   HeatMarkerRenderer? heatMarkerRenderer;
//
//   HeatMarkers({this.heatMarkerRenderer});
//
//   HeatMarkers.fromJson(Map<String, dynamic> json) {
//     heatMarkerRenderer = json['heatMarkerRenderer'] != null
//         ? HeatMarkerRenderer.fromJson(json['heatMarkerRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (heatMarkerRenderer != null) {
//       data['heatMarkerRenderer'] = heatMarkerRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class HeatMarkerRenderer {
//   int? timeRangeStartMillis;
//   int? markerDurationMillis;
//   double? heatMarkerIntensityScoreNormalized;
//
//   HeatMarkerRenderer(
//       {this.timeRangeStartMillis,
//         this.markerDurationMillis,
//         this.heatMarkerIntensityScoreNormalized});
//
//   HeatMarkerRenderer.fromJson(Map<String, dynamic> json) {
//     timeRangeStartMillis = json['timeRangeStartMillis'];
//     markerDurationMillis = json['markerDurationMillis'];
//     heatMarkerIntensityScoreNormalized =
//     json['heatMarkerIntensityScoreNormalized'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['timeRangeStartMillis'] = timeRangeStartMillis;
//     data['markerDurationMillis'] = markerDurationMillis;
//     data['heatMarkerIntensityScoreNormalized'] =
//         heatMarkerIntensityScoreNormalized;
//     return data;
//   }
// }
//
// class HeatMarkersDecorations {
//   TimedMarkerDecorationRenderer? timedMarkerDecorationRenderer;
//
//   HeatMarkersDecorations({this.timedMarkerDecorationRenderer});
//
//   HeatMarkersDecorations.fromJson(Map<String, dynamic> json) {
//     timedMarkerDecorationRenderer =
//     json['timedMarkerDecorationRenderer'] != null
//         ? TimedMarkerDecorationRenderer.fromJson(
//         json['timedMarkerDecorationRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (timedMarkerDecorationRenderer != null) {
//       data['timedMarkerDecorationRenderer'] =
//           timedMarkerDecorationRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class TimedMarkerDecorationRenderer {
//   int? visibleTimeRangeStartMillis;
//   int? visibleTimeRangeEndMillis;
//   int? decorationTimeMillis;
//   Title? label;
//   String? icon;
//   String? trackingParams;
//
//   TimedMarkerDecorationRenderer(
//       {this.visibleTimeRangeStartMillis,
//         this.visibleTimeRangeEndMillis,
//         this.decorationTimeMillis,
//         this.label,
//         this.icon,
//         this.trackingParams});
//
//   TimedMarkerDecorationRenderer.fromJson(Map<String, dynamic> json) {
//     visibleTimeRangeStartMillis = json['visibleTimeRangeStartMillis'];
//     visibleTimeRangeEndMillis = json['visibleTimeRangeEndMillis'];
//     decorationTimeMillis = json['decorationTimeMillis'];
//     label = json['label'] != null ? Title.fromJson(json['label']) : null;
//     icon = json['icon'];
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['visibleTimeRangeStartMillis'] = visibleTimeRangeStartMillis;
//     data['visibleTimeRangeEndMillis'] = visibleTimeRangeEndMillis;
//     data['decorationTimeMillis'] = decorationTimeMillis;
//     if (label != null) {
//       data['label'] = label!.toJson();
//     }
//     data['icon'] = icon;
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class Overlay {
//   TooltipRenderer? tooltipRenderer;
//
//   Overlay({this.tooltipRenderer});
//
//   Overlay.fromJson(Map<String, dynamic> json) {
//     tooltipRenderer = json['tooltipRenderer'] != null
//         ? TooltipRenderer.fromJson(json['tooltipRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (tooltipRenderer != null) {
//       data['tooltipRenderer'] = tooltipRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class TooltipRenderer {
//   PromoConfig? promoConfig;
//   String? targetId;
//   Title? text;
//   Title? detailsText;
//   Button? dismissButton;
//   SubscriptionButton? suggestedPosition;
//   SubscriptionButton? dismissStrategy;
//   String? dwellTimeMs;
//   String? trackingParams;
//
//   TooltipRenderer(
//       {this.promoConfig,
//         this.targetId,
//         this.text,
//         this.detailsText,
//         this.dismissButton,
//         this.suggestedPosition,
//         this.dismissStrategy,
//         this.dwellTimeMs,
//         this.trackingParams});
//
//   TooltipRenderer.fromJson(Map<String, dynamic> json) {
//     promoConfig = json['promoConfig'] != null
//         ? PromoConfig.fromJson(json['promoConfig'])
//         : null;
//     targetId = json['targetId'];
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     detailsText = json['detailsText'] != null
//         ? Title.fromJson(json['detailsText'])
//         : null;
//     dismissButton = json['dismissButton'] != null
//         ? Button.fromJson(json['dismissButton'])
//         : null;
//     suggestedPosition = json['suggestedPosition'] != null
//         ? SubscriptionButton.fromJson(json['suggestedPosition'])
//         : null;
//     dismissStrategy = json['dismissStrategy'] != null
//         ? SubscriptionButton.fromJson(json['dismissStrategy'])
//         : null;
//     dwellTimeMs = json['dwellTimeMs'];
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (promoConfig != null) {
//       data['promoConfig'] = promoConfig!.toJson();
//     }
//     data['targetId'] = targetId;
//     if (text != null) {
//       data['text'] = text!.toJson();
//     }
//     if (detailsText != null) {
//       data['detailsText'] = detailsText!.toJson();
//     }
//     if (dismissButton != null) {
//       data['dismissButton'] = dismissButton!.toJson();
//     }
//     if (suggestedPosition != null) {
//       data['suggestedPosition'] = suggestedPosition!.toJson();
//     }
//     if (dismissStrategy != null) {
//       data['dismissStrategy'] = dismissStrategy!.toJson();
//     }
//     data['dwellTimeMs'] = dwellTimeMs;
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class PromoConfig {
//   String? promoId;
//   List<ImpressionEndpoints>? impressionEndpoints;
//   ImpressionEndpoints? acceptCommand;
//   ImpressionEndpoints? dismissCommand;
//
//   PromoConfig(
//       {this.promoId,
//         this.impressionEndpoints,
//         this.acceptCommand,
//         this.dismissCommand});
//
//   PromoConfig.fromJson(Map<String, dynamic> json) {
//     promoId = json['promoId'];
//     if (json['impressionEndpoints'] != null) {
//       impressionEndpoints = <ImpressionEndpoints>[];
//       json['impressionEndpoints'].forEach((v) {
//         impressionEndpoints!.add(ImpressionEndpoints.fromJson(v));
//       });
//     }
//     acceptCommand = json['acceptCommand'] != null
//         ? ImpressionEndpoints.fromJson(json['acceptCommand'])
//         : null;
//     dismissCommand = json['dismissCommand'] != null
//         ? ImpressionEndpoints.fromJson(json['dismissCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['promoId'] = promoId;
//     if (impressionEndpoints != null) {
//       data['impressionEndpoints'] =
//           impressionEndpoints!.map((v) => v.toJson()).toList();
//     }
//     if (acceptCommand != null) {
//       data['acceptCommand'] = acceptCommand!.toJson();
//     }
//     if (dismissCommand != null) {
//       data['dismissCommand'] = dismissCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class ImpressionEndpoints {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   FeedbackEndpoint? feedbackEndpoint;
//
//   ImpressionEndpoints(
//       {this.clickTrackingParams, this.commandMetadata, this.feedbackEndpoint});
//
//   ImpressionEndpoints.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     feedbackEndpoint = json['feedbackEndpoint'] != null
//         ? FeedbackEndpoint.fromJson(json['feedbackEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (feedbackEndpoint != null) {
//       data['feedbackEndpoint'] = feedbackEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class FeedbackEndpoint {
//   String? feedbackToken;
//   UiActions? uiActions;
//
//   FeedbackEndpoint({this.feedbackToken, this.uiActions});
//
//   FeedbackEndpoint.fromJson(Map<String, dynamic> json) {
//     feedbackToken = json['feedbackToken'];
//     uiActions = json['uiActions'] != null
//         ? UiActions.fromJson(json['uiActions'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['feedbackToken'] = feedbackToken;
//     if (uiActions != null) {
//       data['uiActions'] = uiActions!.toJson();
//     }
//     return data;
//   }
// }
//
// class UiActions {
//   bool? hideEnclosingContainer;
//
//   UiActions({this.hideEnclosingContainer});
//
//   UiActions.fromJson(Map<String, dynamic> json) {
//     hideEnclosingContainer = json['hideEnclosingContainer'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['hideEnclosingContainer'] = hideEnclosingContainer;
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   Title? text;
//   String? trackingParams;
//   ServiceEndpoint? command;
//
//   ButtonRenderer(
//       {this.style, this.size, this.text, this.trackingParams, this.command});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     trackingParams = json['trackingParams'];
//     command = json['command'] != null
//         ? ServiceEndpoint.fromJson(json['command'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     if (this.text != null) {
//       data['text'] = this.text!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (this.command != null) {
//       data['command'] = this.command!.toJson();
//     }
//     return data;
//   }
// }
//
// class OnResponseReceivedEndpoints {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   SignalServiceEndpoint? signalServiceEndpoint;
//   ChangeKeyedMarkersVisibilityCommand? changeKeyedMarkersVisibilityCommand;
//   LoadMarkersCommand? loadMarkersCommand;
//
//   OnResponseReceivedEndpoints(
//       {this.clickTrackingParams,
//         this.commandMetadata,
//         this.signalServiceEndpoint,
//         this.changeKeyedMarkersVisibilityCommand,
//         this.loadMarkersCommand});
//
//   OnResponseReceivedEndpoints.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     signalServiceEndpoint = json['signalServiceEndpoint'] != null
//         ? SignalServiceEndpoint.fromJson(json['signalServiceEndpoint'])
//         : null;
//     changeKeyedMarkersVisibilityCommand =
//     json['changeKeyedMarkersVisibilityCommand'] != null
//         ? ChangeKeyedMarkersVisibilityCommand.fromJson(
//         json['changeKeyedMarkersVisibilityCommand'])
//         : null;
//     loadMarkersCommand = json['loadMarkersCommand'] != null
//         ? LoadMarkersCommand.fromJson(json['loadMarkersCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (signalServiceEndpoint != null) {
//       data['signalServiceEndpoint'] = signalServiceEndpoint!.toJson();
//     }
//     if (changeKeyedMarkersVisibilityCommand != null) {
//       data['changeKeyedMarkersVisibilityCommand'] =
//           changeKeyedMarkersVisibilityCommand!.toJson();
//     }
//     if (loadMarkersCommand != null) {
//       data['loadMarkersCommand'] = loadMarkersCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class Actions {
//   String? clickTrackingParams;
//   SignalAction? signalAction;
//
//   Actions({this.clickTrackingParams, this.signalAction});
//
//   Actions.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     signalAction = json['signalAction'] != null
//         ? SignalAction.fromJson(json['signalAction'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (signalAction != null) {
//       data['signalAction'] = signalAction!.toJson();
//     }
//     return data;
//   }
// }
//
// class SignalAction {
//   String? signal;
//
//   SignalAction({this.signal});
//
//   SignalAction.fromJson(Map<String, dynamic> json) {
//     signal = json['signal'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['signal'] = signal;
//     return data;
//   }
// }
//
// class ChangeKeyedMarkersVisibilityCommand {
//   bool? isVisible;
//   String? key;
//
//   ChangeKeyedMarkersVisibilityCommand({this.isVisible, this.key});
//
//   ChangeKeyedMarkersVisibilityCommand.fromJson(Map<String, dynamic> json) {
//     isVisible = json['isVisible'];
//     key = json['key'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['isVisible'] = isVisible;
//     data['key'] = key;
//     return data;
//   }
// }
//
// class LoadMarkersCommand {
//   List<String>? entityKeys;
//
//   LoadMarkersCommand({this.entityKeys});
//
//   LoadMarkersCommand.fromJson(Map<String, dynamic> json) {
//     entityKeys = json['entityKeys'].cast<String>();
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['entityKeys'] = entityKeys;
//     return data;
//   }
// }
//
// class EngagementPanels {
//   EngagementPanelSectionListRenderer? engagementPanelSectionListRenderer;
//
//   EngagementPanels({this.engagementPanelSectionListRenderer});
//
//   EngagementPanels.fromJson(Map<String, dynamic> json) {
//     engagementPanelSectionListRenderer =
//     json['engagementPanelSectionListRenderer'] != null
//         ? EngagementPanelSectionListRenderer.fromJson(
//         json['engagementPanelSectionListRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (engagementPanelSectionListRenderer != null) {
//       data['engagementPanelSectionListRenderer'] =
//           engagementPanelSectionListRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class EngagementPanelSectionListRenderer {
//   ViewCount? content;
//   String? targetId;
//   String? visibility;
//   LoggingDirectives? loggingDirectives;
//   String? panelIdentifier;
//   Header? header;
//   int? veType;
//   List<OnShowCommands>? onShowCommands;
//
//   EngagementPanelSectionListRenderer(
//       {this.content,
//         this.targetId,
//         this.visibility,
//         this.loggingDirectives,
//         this.panelIdentifier,
//         this.header,
//         this.veType,
//         this.onShowCommands});
//
//   EngagementPanelSectionListRenderer.fromJson(Map<String, dynamic> json) {
//     content = json['content'] != null
//         ? ViewCount.fromJson(json['content'])
//         : null;
//     targetId = json['targetId'];
//     visibility = json['visibility'];
//     loggingDirectives = json['loggingDirectives'] != null
//         ? LoggingDirectives.fromJson(json['loggingDirectives'])
//         : null;
//     panelIdentifier = json['panelIdentifier'];
//     header =
//     json['header'] != null ? Header.fromJson(json['header']) : null;
//     veType = json['veType'];
//     if (json['onShowCommands'] != null) {
//       onShowCommands = <OnShowCommands>[];
//       json['onShowCommands'].forEach((v) {
//         onShowCommands!.add(OnShowCommands.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (content != null) {
//       data['content'] = content!.toJson();
//     }
//     data['targetId'] = targetId;
//     data['visibility'] = visibility;
//     if (loggingDirectives != null) {
//       data['loggingDirectives'] = loggingDirectives!.toJson();
//     }
//     data['panelIdentifier'] = panelIdentifier;
//     if (header != null) {
//       data['header'] = header!.toJson();
//     }
//     data['veType'] = veType;
//     if (onShowCommands != null) {
//       data['onShowCommands'] =
//           onShowCommands!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Content {
//   SignInEndpoint? adsEngagementPanelContentRenderer;
//   StructuredDescriptionContentRenderer? structuredDescriptionContentRenderer;
//   Results? sectionListRenderer;
//   ContinuationItemRenderer? continuationItemRenderer;
//
//   Content(
//       {this.adsEngagementPanelContentRenderer,
//         this.structuredDescriptionContentRenderer,
//         this.sectionListRenderer,
//         this.continuationItemRenderer});
//
//   Content.fromJson(Map<String, dynamic> json) {
//     adsEngagementPanelContentRenderer =
//     json['adsEngagementPanelContentRenderer'] != null
//         ? SignInEndpoint.fromJson(
//         json['adsEngagementPanelContentRenderer'])
//         : null;
//     structuredDescriptionContentRenderer =
//     json['structuredDescriptionContentRenderer'] != null
//         ? StructuredDescriptionContentRenderer.fromJson(
//         json['structuredDescriptionContentRenderer'])
//         : null;
//     sectionListRenderer = json['sectionListRenderer'] != null
//         ? Results.fromJson(json['sectionListRenderer'])
//         : null;
//     continuationItemRenderer = json['continuationItemRenderer'] != null
//         ? ContinuationItemRenderer.fromJson(
//         json['continuationItemRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (adsEngagementPanelContentRenderer != null) {
//       data['adsEngagementPanelContentRenderer'] =
//           adsEngagementPanelContentRenderer!.toJson();
//     }
//     if (structuredDescriptionContentRenderer != null) {
//       data['structuredDescriptionContentRenderer'] =
//           structuredDescriptionContentRenderer!.toJson();
//     }
//     if (sectionListRenderer != null) {
//       data['sectionListRenderer'] = sectionListRenderer!.toJson();
//     }
//     if (continuationItemRenderer != null) {
//       data['continuationItemRenderer'] =
//           continuationItemRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class StructuredDescriptionContentRenderer {
//   List<Items>? items;
//
//   StructuredDescriptionContentRenderer({this.items});
//
//   StructuredDescriptionContentRenderer.fromJson(Map<String, dynamic> json) {
//     if (json['items'] != null) {
//       items = <Items>[];
//       json['items'].forEach((v) {
//         items!.add(Items.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (items != null) {
//       data['items'] = items!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Items {
//   VideoDescriptionHeaderRenderer? videoDescriptionHeaderRenderer;
//   ExpandableVideoDescriptionBodyRenderer?
//   expandableVideoDescriptionBodyRenderer;
//   VideoDescriptionMusicSectionRenderer? videoDescriptionMusicSectionRenderer;
//
//   Items(
//       {this.videoDescriptionHeaderRenderer,
//         this.expandableVideoDescriptionBodyRenderer,
//         this.videoDescriptionMusicSectionRenderer});
//
//   Items.fromJson(Map<String, dynamic> json) {
//     videoDescriptionHeaderRenderer =
//     json['videoDescriptionHeaderRenderer'] != null
//         ? VideoDescriptionHeaderRenderer.fromJson(
//         json['videoDescriptionHeaderRenderer'])
//         : null;
//     expandableVideoDescriptionBodyRenderer =
//     json['expandableVideoDescriptionBodyRenderer'] != null
//         ? ExpandableVideoDescriptionBodyRenderer.fromJson(
//         json['expandableVideoDescriptionBodyRenderer'])
//         : null;
//     videoDescriptionMusicSectionRenderer =
//     json['videoDescriptionMusicSectionRenderer'] != null
//         ? VideoDescriptionMusicSectionRenderer.fromJson(
//         json['videoDescriptionMusicSectionRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (videoDescriptionHeaderRenderer != null) {
//       data['videoDescriptionHeaderRenderer'] =
//           videoDescriptionHeaderRenderer!.toJson();
//     }
//     if (expandableVideoDescriptionBodyRenderer != null) {
//       data['expandableVideoDescriptionBodyRenderer'] =
//           expandableVideoDescriptionBodyRenderer!.toJson();
//     }
//     if (videoDescriptionMusicSectionRenderer != null) {
//       data['videoDescriptionMusicSectionRenderer'] =
//           videoDescriptionMusicSectionRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class VideoDescriptionHeaderRenderer {
//   Title? title;
//   ViewCount? channel;
//   ViewCount? views;
//   ViewCount? publishDate;
//   List<Factoid>? factoid;
//   NavigationEndpoint? channelNavigationEndpoint;
//   Thumbnail? channelThumbnail;
//
//   VideoDescriptionHeaderRenderer(
//       {this.title,
//         this.channel,
//         this.views,
//         this.publishDate,
//         this.factoid,
//         this.channelNavigationEndpoint,
//         this.channelThumbnail});
//
//   VideoDescriptionHeaderRenderer.fromJson(Map<String, dynamic> json) {
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     channel = json['channel'] != null
//         ? ViewCount.fromJson(json['channel'])
//         : null;
//     views =
//     json['views'] != null ? ViewCount.fromJson(json['views']) : null;
//     publishDate = json['publishDate'] != null
//         ? ViewCount.fromJson(json['publishDate'])
//         : null;
//     if (json['factoid'] != null) {
//       factoid = <Factoid>[];
//       json['factoid'].forEach((v) {
//         factoid!.add(Factoid.fromJson(v));
//       });
//     }
//     channelNavigationEndpoint = json['channelNavigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['channelNavigationEndpoint'])
//         : null;
//     channelThumbnail = json['channelThumbnail'] != null
//         ? Thumbnail.fromJson(json['channelThumbnail'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (channel != null) {
//       data['channel'] = channel!.toJson();
//     }
//     if (views != null) {
//       data['views'] = views!.toJson();
//     }
//     if (publishDate != null) {
//       data['publishDate'] = publishDate!.toJson();
//     }
//     if (factoid != null) {
//       data['factoid'] = factoid!.map((v) => v.toJson()).toList();
//     }
//     if (channelNavigationEndpoint != null) {
//       data['channelNavigationEndpoint'] =
//           channelNavigationEndpoint!.toJson();
//     }
//     if (channelThumbnail != null) {
//       data['channelThumbnail'] = channelThumbnail!.toJson();
//     }
//     return data;
//   }
// }
//
// class Factoid {
//   FactoidRenderer? factoidRenderer;
//
//   Factoid({this.factoidRenderer});
//
//   Factoid.fromJson(Map<String, dynamic> json) {
//     factoidRenderer = json['factoidRenderer'] != null
//         ? FactoidRenderer.fromJson(json['factoidRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (factoidRenderer != null) {
//       data['factoidRenderer'] = factoidRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class FactoidRenderer {
//   ViewCount? value;
//   Title? label;
//   String? accessibilityText;
//
//   FactoidRenderer({this.value, this.label, this.accessibilityText});
//
//   FactoidRenderer.fromJson(Map<String, dynamic> json) {
//     value =
//     json['value'] != null ? ViewCount.fromJson(json['value']) : null;
//     label = json['label'] != null ? Title.fromJson(json['label']) : null;
//     accessibilityText = json['accessibilityText'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (value != null) {
//       data['value'] = value!.toJson();
//     }
//     if (label != null) {
//       data['label'] = label!.toJson();
//     }
//     data['accessibilityText'] = accessibilityText;
//     return data;
//   }
// }
//
// class ExpandableVideoDescriptionBodyRenderer {
//   Title? descriptionBodyText;
//   ViewCount? showMoreText;
//   ViewCount? showLessText;
//
//   ExpandableVideoDescriptionBodyRenderer(
//       {this.descriptionBodyText, this.showMoreText, this.showLessText});
//
//   ExpandableVideoDescriptionBodyRenderer.fromJson(Map<String, dynamic> json) {
//     descriptionBodyText = json['descriptionBodyText'] != null
//         ? Title.fromJson(json['descriptionBodyText'])
//         : null;
//     showMoreText = json['showMoreText'] != null
//         ? ViewCount.fromJson(json['showMoreText'])
//         : null;
//     showLessText = json['showLessText'] != null
//         ? ViewCount.fromJson(json['showLessText'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (descriptionBodyText != null) {
//       data['descriptionBodyText'] = descriptionBodyText!.toJson();
//     }
//     if (showMoreText != null) {
//       data['showMoreText'] = showMoreText!.toJson();
//     }
//     if (showLessText != null) {
//       data['showLessText'] = showLessText!.toJson();
//     }
//     return data;
//   }
// }
//
// class VideoDescriptionMusicSectionRenderer {
//   ViewCount? sectionTitle;
//   List<CarouselLockups>? carouselLockups;
//   TopicLink? topicLink;
//   Title? premiumUpsellLink;
//
//   VideoDescriptionMusicSectionRenderer(
//       {this.sectionTitle,
//         this.carouselLockups,
//         this.topicLink,
//         this.premiumUpsellLink});
//
//   VideoDescriptionMusicSectionRenderer.fromJson(Map<String, dynamic> json) {
//     sectionTitle = json['sectionTitle'] != null
//         ? ViewCount.fromJson(json['sectionTitle'])
//         : null;
//     if (json['carouselLockups'] != null) {
//       carouselLockups = <CarouselLockups>[];
//       json['carouselLockups'].forEach((v) {
//         carouselLockups!.add(CarouselLockups.fromJson(v));
//       });
//     }
//     topicLink = json['topicLink'] != null
//         ? TopicLink.fromJson(json['topicLink'])
//         : null;
//     premiumUpsellLink = json['premiumUpsellLink'] != null
//         ? Title.fromJson(json['premiumUpsellLink'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (sectionTitle != null) {
//       data['sectionTitle'] = sectionTitle!.toJson();
//     }
//     if (carouselLockups != null) {
//       data['carouselLockups'] =
//           carouselLockups!.map((v) => v.toJson()).toList();
//     }
//     if (topicLink != null) {
//       data['topicLink'] = topicLink!.toJson();
//     }
//     if (premiumUpsellLink != null) {
//       data['premiumUpsellLink'] = premiumUpsellLink!.toJson();
//     }
//     return data;
//   }
// }
//
// class CarouselLockups {
//   CarouselLockupRenderer? carouselLockupRenderer;
//
//   CarouselLockups({this.carouselLockupRenderer});
//
//   CarouselLockups.fromJson(Map<String, dynamic> json) {
//     carouselLockupRenderer = json['carouselLockupRenderer'] != null
//         ? CarouselLockupRenderer.fromJson(json['carouselLockupRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (carouselLockupRenderer != null) {
//       data['carouselLockupRenderer'] = carouselLockupRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class CarouselLockupRenderer {
//   List<InfoRows>? infoRows;
//
//   CarouselLockupRenderer({this.infoRows});
//
//   CarouselLockupRenderer.fromJson(Map<String, dynamic> json) {
//     if (json['infoRows'] != null) {
//       infoRows = <InfoRows>[];
//       json['infoRows'].forEach((v) {
//         infoRows!.add(InfoRows.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (infoRows != null) {
//       data['infoRows'] = infoRows!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class InfoRows {
//   InfoRowRenderer? infoRowRenderer;
//
//   InfoRows({this.infoRowRenderer});
//
//   InfoRows.fromJson(Map<String, dynamic> json) {
//     infoRowRenderer = json['infoRowRenderer'] != null
//         ? InfoRowRenderer.fromJson(json['infoRowRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (infoRowRenderer != null) {
//       data['infoRowRenderer'] = infoRowRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class InfoRowRenderer {
//   Title? title;
//   ViewCount? expandedMetadata;
//   Icon? expandIcon;
//   String? trackingParams;
//   String? infoRowExpandStatusKey;
//
//   InfoRowRenderer(
//       {this.title,
//         this.expandedMetadata,
//         this.expandIcon,
//         this.trackingParams,
//         this.infoRowExpandStatusKey});
//
//   InfoRowRenderer.fromJson(Map<String, dynamic> json) {
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     expandedMetadata = json['expandedMetadata'] != null
//         ? ViewCount.fromJson(json['expandedMetadata'])
//         : null;
//     expandIcon = json['expandIcon'] != null
//         ? Icon.fromJson(json['expandIcon'])
//         : null;
//     trackingParams = json['trackingParams'];
//     infoRowExpandStatusKey = json['infoRowExpandStatusKey'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (expandedMetadata != null) {
//       data['expandedMetadata'] = expandedMetadata!.toJson();
//     }
//     if (expandIcon != null) {
//       data['expandIcon'] = expandIcon!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     data['infoRowExpandStatusKey'] = infoRowExpandStatusKey;
//     return data;
//   }
// }
//
// class TopicLink {
//   TopicLinkRenderer? topicLinkRenderer;
//
//   TopicLink({this.topicLinkRenderer});
//
//   TopicLink.fromJson(Map<String, dynamic> json) {
//     topicLinkRenderer = json['topicLinkRenderer'] != null
//         ? TopicLinkRenderer.fromJson(json['topicLinkRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (topicLinkRenderer != null) {
//       data['topicLinkRenderer'] = topicLinkRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class TopicLinkRenderer {
//   Title? title;
//   Thumbnail? thumbnailDetails;
//   NavigationEndpoint? endpoint;
//   Icon? callToActionIcon;
//   String? trackingParams;
//
//   TopicLinkRenderer(
//       {this.title,
//         this.thumbnailDetails,
//         this.endpoint,
//         this.callToActionIcon,
//         this.trackingParams});
//
//   TopicLinkRenderer.fromJson(Map<String, dynamic> json) {
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     thumbnailDetails = json['thumbnailDetails'] != null
//         ? Thumbnail.fromJson(json['thumbnailDetails'])
//         : null;
//     endpoint = json['endpoint'] != null
//         ? NavigationEndpoint.fromJson(json['endpoint'])
//         : null;
//     callToActionIcon = json['callToActionIcon'] != null
//         ? Icon.fromJson(json['callToActionIcon'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (thumbnailDetails != null) {
//       data['thumbnailDetails'] = thumbnailDetails!.toJson();
//     }
//     if (endpoint != null) {
//       data['endpoint'] = endpoint!.toJson();
//     }
//     if (callToActionIcon != null) {
//       data['callToActionIcon'] = callToActionIcon!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class BrowseEndpoint {
//   String? browseId;
//
//   BrowseEndpoint({this.browseId});
//
//   BrowseEndpoint.fromJson(Map<String, dynamic> json) {
//     browseId = json['browseId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['browseId'] = browseId;
//     return data;
//   }
// }
//
// class Contents {
//   ItemSectionRenderer? itemSectionRenderer;
//
//   Contents({this.itemSectionRenderer});
//
//   Contents.fromJson(Map<String, dynamic> json) {
//     itemSectionRenderer = json['itemSectionRenderer'] != null
//         ? ItemSectionRenderer.fromJson(json['itemSectionRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.itemSectionRenderer != null) {
//       data['itemSectionRenderer'] = this.itemSectionRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class Contents {
//   ContinuationItemRenderer? continuationItemRenderer;
//
//   Contents({this.continuationItemRenderer});
//
//   Contents.fromJson(Map<String, dynamic> json) {
//     continuationItemRenderer = json['continuationItemRenderer'] != null
//         ? ContinuationItemRenderer.fromJson(
//         json['continuationItemRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (continuationItemRenderer != null) {
//       data['continuationItemRenderer'] =
//           continuationItemRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class ContinuationEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   GetTranscriptEndpoint? getTranscriptEndpoint;
//
//   ContinuationEndpoint(
//       {this.clickTrackingParams,
//         this.commandMetadata,
//         this.getTranscriptEndpoint});
//
//   ContinuationEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     getTranscriptEndpoint = json['getTranscriptEndpoint'] != null
//         ? GetTranscriptEndpoint.fromJson(json['getTranscriptEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (commandMetadata != null) {
//       data['commandMetadata'] = commandMetadata!.toJson();
//     }
//     if (getTranscriptEndpoint != null) {
//       data['getTranscriptEndpoint'] = getTranscriptEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class GetTranscriptEndpoint {
//   String? params;
//
//   GetTranscriptEndpoint({this.params});
//
//   GetTranscriptEndpoint.fromJson(Map<String, dynamic> json) {
//     params = json['params'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['params'] = params;
//     return data;
//   }
// }
//
// class Header {
//   EngagementPanelTitleHeaderRenderer? engagementPanelTitleHeaderRenderer;
//
//   Header({this.engagementPanelTitleHeaderRenderer});
//
//   Header.fromJson(Map<String, dynamic> json) {
//     engagementPanelTitleHeaderRenderer =
//     json['engagementPanelTitleHeaderRenderer'] != null
//         ? EngagementPanelTitleHeaderRenderer.fromJson(
//         json['engagementPanelTitleHeaderRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (engagementPanelTitleHeaderRenderer != null) {
//       data['engagementPanelTitleHeaderRenderer'] =
//           engagementPanelTitleHeaderRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class EngagementPanelTitleHeaderRenderer {
//   Title? title;
//   Button? visibilityButton;
//   String? trackingParams;
//   Title? contextualInfo;
//   VideoActions? menu;
//
//   EngagementPanelTitleHeaderRenderer(
//       {this.title,
//         this.visibilityButton,
//         this.trackingParams,
//         this.contextualInfo,
//         this.menu});
//
//   EngagementPanelTitleHeaderRenderer.fromJson(Map<String, dynamic> json) {
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     visibilityButton = json['visibilityButton'] != null
//         ? Button.fromJson(json['visibilityButton'])
//         : null;
//     trackingParams = json['trackingParams'];
//     contextualInfo = json['contextualInfo'] != null
//         ? Title.fromJson(json['contextualInfo'])
//         : null;
//     menu =
//     json['menu'] != null ? VideoActions.fromJson(json['menu']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (visibilityButton != null) {
//       data['visibilityButton'] = visibilityButton!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (contextualInfo != null) {
//       data['contextualInfo'] = contextualInfo!.toJson();
//     }
//     if (menu != null) {
//       data['menu'] = menu!.toJson();
//     }
//     return data;
//   }
// }
//
// class Title {
//   String? simpleText;
//   List<Runs>? runs;
//
//   Title({this.simpleText, this.runs});
//
//   Title.fromJson(Map<String, dynamic> json) {
//     simpleText = json['simpleText'];
//     if (json['runs'] != null) {
//       runs = <Runs>[];
//       json['runs'].forEach((v) {
//         runs!.add(Runs.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['simpleText'] = simpleText;
//     if (runs != null) {
//       data['runs'] = runs!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   Icon? icon;
//   String? trackingParams;
//   AccessibilityData? accessibilityData;
//   ServiceEndpoint? command;
//   String? style;
//   String? size;
//   Accessibility? accessibility;
//
//   ButtonRenderer(
//       {this.icon,
//         this.trackingParams,
//         this.accessibilityData,
//         this.command,
//         this.style,
//         this.size,
//         this.accessibility});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     trackingParams = json['trackingParams'];
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//     command = json['command'] != null
//         ? ServiceEndpoint.fromJson(json['command'])
//         : null;
//     style = json['style'];
//     size = json['size'];
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (accessibilityData != null) {
//       data['accessibilityData'] = accessibilityData!.toJson();
//     }
//     if (this.command != null) {
//       data['command'] = this.command!.toJson();
//     }
//     data['style'] = style;
//     data['size'] = size;
//     if (this.accessibility != null) {
//       data['accessibility'] = this.accessibility!.toJson();
//     }
//     return data;
//   }
// }
//
// class Command {
//   String? clickTrackingParams;
//   CommandExecutorCommand? commandExecutorCommand;
//   ChangeEngagementPanelVisibilityAction? changeEngagementPanelVisibilityAction;
//
//   Command(
//       {this.clickTrackingParams,
//         this.commandExecutorCommand,
//         this.changeEngagementPanelVisibilityAction});
//
//   Command.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandExecutorCommand = json['commandExecutorCommand'] != null
//         ? CommandExecutorCommand.fromJson(json['commandExecutorCommand'])
//         : null;
//     changeEngagementPanelVisibilityAction =
//     json['changeEngagementPanelVisibilityAction'] != null
//         ? ChangeEngagementPanelVisibilityAction.fromJson(
//         json['changeEngagementPanelVisibilityAction'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (this.commandExecutorCommand != null) {
//       data['commandExecutorCommand'] = this.commandExecutorCommand!.toJson();
//     }
//     if (this.changeEngagementPanelVisibilityAction != null) {
//       data['changeEngagementPanelVisibilityAction'] =
//           this.changeEngagementPanelVisibilityAction!.toJson();
//     }
//     return data;
//   }
// }
//
// class Commands {
//   String? clickTrackingParams;
//   ChangeEngagementPanelVisibilityAction? changeEngagementPanelVisibilityAction;
//   UpdateToggleButtonStateCommand? updateToggleButtonStateCommand;
//
//   Commands(
//       {this.clickTrackingParams,
//         this.changeEngagementPanelVisibilityAction,
//         this.updateToggleButtonStateCommand});
//
//   Commands.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     changeEngagementPanelVisibilityAction =
//     json['changeEngagementPanelVisibilityAction'] != null
//         ? ChangeEngagementPanelVisibilityAction.fromJson(
//         json['changeEngagementPanelVisibilityAction'])
//         : null;
//     updateToggleButtonStateCommand =
//     json['updateToggleButtonStateCommand'] != null
//         ? UpdateToggleButtonStateCommand.fromJson(
//         json['updateToggleButtonStateCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (changeEngagementPanelVisibilityAction != null) {
//       data['changeEngagementPanelVisibilityAction'] =
//           changeEngagementPanelVisibilityAction!.toJson();
//     }
//     if (updateToggleButtonStateCommand != null) {
//       data['updateToggleButtonStateCommand'] =
//           updateToggleButtonStateCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class UpdateToggleButtonStateCommand {
//   bool? toggled;
//   String? buttonId;
//
//   UpdateToggleButtonStateCommand({this.toggled, this.buttonId});
//
//   UpdateToggleButtonStateCommand.fromJson(Map<String, dynamic> json) {
//     toggled = json['toggled'];
//     buttonId = json['buttonId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['toggled'] = toggled;
//     data['buttonId'] = buttonId;
//     return data;
//   }
// }
//
// class Menu {
//   SortFilterSubMenuRenderer? sortFilterSubMenuRenderer;
//   MenuRenderer? menuRenderer;
//
//   Menu({this.sortFilterSubMenuRenderer, this.menuRenderer});
//
//   Menu.fromJson(Map<String, dynamic> json) {
//     sortFilterSubMenuRenderer = json['sortFilterSubMenuRenderer'] != null
//         ? SortFilterSubMenuRenderer.fromJson(
//         json['sortFilterSubMenuRenderer'])
//         : null;
//     menuRenderer = json['menuRenderer'] != null
//         ? MenuRenderer.fromJson(json['menuRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (sortFilterSubMenuRenderer != null) {
//       data['sortFilterSubMenuRenderer'] =
//           sortFilterSubMenuRenderer!.toJson();
//     }
//     if (menuRenderer != null) {
//       data['menuRenderer'] = menuRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class SortFilterSubMenuRenderer {
//   List<SubMenuItems>? subMenuItems;
//   Icon? icon;
//   Accessibility? accessibility;
//   String? trackingParams;
//
//   SortFilterSubMenuRenderer(
//       {this.subMenuItems, this.icon, this.accessibility, this.trackingParams});
//
//   SortFilterSubMenuRenderer.fromJson(Map<String, dynamic> json) {
//     if (json['subMenuItems'] != null) {
//       subMenuItems = <SubMenuItems>[];
//       json['subMenuItems'].forEach((v) {
//         subMenuItems!.add(SubMenuItems.fromJson(v));
//       });
//     }
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (subMenuItems != null) {
//       data['subMenuItems'] = subMenuItems!.map((v) => v.toJson()).toList();
//     }
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     if (accessibility != null) {
//       data['accessibility'] = accessibility!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class SubMenuItems {
//   String? title;
//   bool? selected;
//   ServiceEndpoint? serviceEndpoint;
//   String? trackingParams;
//
//   SubMenuItems(
//       {this.title, this.selected, this.serviceEndpoint, this.trackingParams});
//
//   SubMenuItems.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     selected = json['selected'];
//     serviceEndpoint = json['serviceEndpoint'] != null
//         ? ServiceEndpoint.fromJson(json['serviceEndpoint'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['title'] = title;
//     data['selected'] = selected;
//     if (serviceEndpoint != null) {
//       data['serviceEndpoint'] = serviceEndpoint!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class ContinuationCommand {
//   String? token;
//   String? request;
//   ServiceEndpoint? command;
//
//   ContinuationCommand({this.token, this.request, this.command});
//
//   ContinuationCommand.fromJson(Map<String, dynamic> json) {
//     token = json['token'];
//     request = json['request'];
//     command = json['command'] != null
//         ? ServiceEndpoint.fromJson(json['command'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['token'] = token;
//     data['request'] = request;
//     if (this.command != null) {
//       data['command'] = this.command!.toJson();
//     }
//     return data;
//   }
// }
//
// class Command {
//   String? clickTrackingParams;
//   ScrollToEngagementPanelCommand? showReloadUiCommand;
//
//   Command({this.clickTrackingParams, this.showReloadUiCommand});
//
//   Command.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     showReloadUiCommand = json['showReloadUiCommand'] != null
//         ? ScrollToEngagementPanelCommand.fromJson(
//         json['showReloadUiCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (this.showReloadUiCommand != null) {
//       data['showReloadUiCommand'] = this.showReloadUiCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class MenuRenderer {
//   List<Items>? items;
//   String? trackingParams;
//   Accessibility? accessibility;
//
//   MenuRenderer({this.items, this.trackingParams, this.accessibility});
//
//   MenuRenderer.fromJson(Map<String, dynamic> json) {
//     if (json['items'] != null) {
//       items = <Items>[];
//       json['items'].forEach((v) {
//         items!.add(Items.fromJson(v));
//       });
//     }
//     trackingParams = json['trackingParams'];
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (items != null) {
//       data['items'] = items!.map((v) => v.toJson()).toList();
//     }
//     data['trackingParams'] = trackingParams;
//     if (accessibility != null) {
//       data['accessibility'] = accessibility!.toJson();
//     }
//     return data;
//   }
// }
//
// class MenuServiceItemRenderer {
//   Title? text;
//   ServiceEndpoint? serviceEndpoint;
//   String? trackingParams;
//
//   MenuServiceItemRenderer(
//       {this.text, this.serviceEndpoint, this.trackingParams});
//
//   MenuServiceItemRenderer.fromJson(Map<String, dynamic> json) {
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     serviceEndpoint = json['serviceEndpoint'] != null
//         ? ServiceEndpoint.fromJson(json['serviceEndpoint'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (text != null) {
//       data['text'] = text!.toJson();
//     }
//     if (serviceEndpoint != null) {
//       data['serviceEndpoint'] = serviceEndpoint!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class OnShowCommands {
//   String? clickTrackingParams;
//   ScrollToEngagementPanelCommand? scrollToEngagementPanelCommand;
//
//   OnShowCommands(
//       {this.clickTrackingParams, this.scrollToEngagementPanelCommand});
//
//   OnShowCommands.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     scrollToEngagementPanelCommand =
//     json['scrollToEngagementPanelCommand'] != null
//         ? ScrollToEngagementPanelCommand.fromJson(
//         json['scrollToEngagementPanelCommand'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = clickTrackingParams;
//     if (scrollToEngagementPanelCommand != null) {
//       data['scrollToEngagementPanelCommand'] =
//           scrollToEngagementPanelCommand!.toJson();
//     }
//     return data;
//   }
// }
//
// class Topbar {
//   DesktopTopbarRenderer? desktopTopbarRenderer;
//
//   Topbar({this.desktopTopbarRenderer});
//
//   Topbar.fromJson(Map<String, dynamic> json) {
//     desktopTopbarRenderer = json['desktopTopbarRenderer'] != null
//         ? DesktopTopbarRenderer.fromJson(json['desktopTopbarRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (desktopTopbarRenderer != null) {
//       data['desktopTopbarRenderer'] = desktopTopbarRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class DesktopTopbarRenderer {
//   Logo? logo;
//   Searchbox? searchbox;
//   String? trackingParams;
//   String? countryCode;
//   List<TopbarButtons>? topbarButtons;
//   HotkeyDialog? hotkeyDialog;
//   Button? backButton;
//   Button? forwardButton;
//   Button? a11ySkipNavigationButton;
//   Button? voiceSearchButton;
//
//   DesktopTopbarRenderer(
//       {this.logo,
//         this.searchbox,
//         this.trackingParams,
//         this.countryCode,
//         this.topbarButtons,
//         this.hotkeyDialog,
//         this.backButton,
//         this.forwardButton,
//         this.a11ySkipNavigationButton,
//         this.voiceSearchButton});
//
//   DesktopTopbarRenderer.fromJson(Map<String, dynamic> json) {
//     logo = json['logo'] != null ? Logo.fromJson(json['logo']) : null;
//     searchbox = json['searchbox'] != null
//         ? Searchbox.fromJson(json['searchbox'])
//         : null;
//     trackingParams = json['trackingParams'];
//     countryCode = json['countryCode'];
//     if (json['topbarButtons'] != null) {
//       topbarButtons = <TopbarButtons>[];
//       json['topbarButtons'].forEach((v) {
//         topbarButtons!.add(TopbarButtons.fromJson(v));
//       });
//     }
//     hotkeyDialog = json['hotkeyDialog'] != null
//         ? HotkeyDialog.fromJson(json['hotkeyDialog'])
//         : null;
//     backButton = json['backButton'] != null
//         ? Button.fromJson(json['backButton'])
//         : null;
//     forwardButton = json['forwardButton'] != null
//         ? Button.fromJson(json['forwardButton'])
//         : null;
//     a11ySkipNavigationButton = json['a11ySkipNavigationButton'] != null
//         ? Button.fromJson(json['a11ySkipNavigationButton'])
//         : null;
//     voiceSearchButton = json['voiceSearchButton'] != null
//         ? Button.fromJson(json['voiceSearchButton'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (logo != null) {
//       data['logo'] = logo!.toJson();
//     }
//     if (searchbox != null) {
//       data['searchbox'] = searchbox!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     data['countryCode'] = countryCode;
//     if (topbarButtons != null) {
//       data['topbarButtons'] =
//           topbarButtons!.map((v) => v.toJson()).toList();
//     }
//     if (hotkeyDialog != null) {
//       data['hotkeyDialog'] = hotkeyDialog!.toJson();
//     }
//     if (backButton != null) {
//       data['backButton'] = backButton!.toJson();
//     }
//     if (forwardButton != null) {
//       data['forwardButton'] = forwardButton!.toJson();
//     }
//     if (a11ySkipNavigationButton != null) {
//       data['a11ySkipNavigationButton'] =
//           a11ySkipNavigationButton!.toJson();
//     }
//     if (voiceSearchButton != null) {
//       data['voiceSearchButton'] = voiceSearchButton!.toJson();
//     }
//     return data;
//   }
// }
//
// class Logo {
//   TopbarLogoRenderer? topbarLogoRenderer;
//
//   Logo({this.topbarLogoRenderer});
//
//   Logo.fromJson(Map<String, dynamic> json) {
//     topbarLogoRenderer = json['topbarLogoRenderer'] != null
//         ? TopbarLogoRenderer.fromJson(json['topbarLogoRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (topbarLogoRenderer != null) {
//       data['topbarLogoRenderer'] = topbarLogoRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class TopbarLogoRenderer {
//   Icon? iconImage;
//   Title? tooltipText;
//   NavigationEndpoint? endpoint;
//   String? trackingParams;
//   String? overrideEntityKey;
//
//   TopbarLogoRenderer(
//       {this.iconImage,
//         this.tooltipText,
//         this.endpoint,
//         this.trackingParams,
//         this.overrideEntityKey});
//
//   TopbarLogoRenderer.fromJson(Map<String, dynamic> json) {
//     iconImage =
//     json['iconImage'] != null ? Icon.fromJson(json['iconImage']) : null;
//     tooltipText = json['tooltipText'] != null
//         ? Title.fromJson(json['tooltipText'])
//         : null;
//     endpoint = json['endpoint'] != null
//         ? NavigationEndpoint.fromJson(json['endpoint'])
//         : null;
//     trackingParams = json['trackingParams'];
//     overrideEntityKey = json['overrideEntityKey'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (iconImage != null) {
//       data['iconImage'] = iconImage!.toJson();
//     }
//     if (tooltipText != null) {
//       data['tooltipText'] = tooltipText!.toJson();
//     }
//     if (endpoint != null) {
//       data['endpoint'] = endpoint!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     data['overrideEntityKey'] = overrideEntityKey;
//     return data;
//   }
// }
//
// class Searchbox {
//   FusionSearchboxRenderer? fusionSearchboxRenderer;
//
//   Searchbox({this.fusionSearchboxRenderer});
//
//   Searchbox.fromJson(Map<String, dynamic> json) {
//     fusionSearchboxRenderer = json['fusionSearchboxRenderer'] != null
//         ? FusionSearchboxRenderer.fromJson(json['fusionSearchboxRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (fusionSearchboxRenderer != null) {
//       data['fusionSearchboxRenderer'] = fusionSearchboxRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class FusionSearchboxRenderer {
//   Icon? icon;
//   Title? placeholderText;
//   Config? config;
//   String? trackingParams;
//   SearchEndpoint? searchEndpoint;
//   Button? clearButton;
//
//   FusionSearchboxRenderer(
//       {this.icon,
//         this.placeholderText,
//         this.config,
//         this.trackingParams,
//         this.searchEndpoint,
//         this.clearButton});
//
//   FusionSearchboxRenderer.fromJson(Map<String, dynamic> json) {
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     placeholderText = json['placeholderText'] != null
//         ? Title.fromJson(json['placeholderText'])
//         : null;
//     config =
//     json['config'] != null ? Config.fromJson(json['config']) : null;
//     trackingParams = json['trackingParams'];
//     searchEndpoint = json['searchEndpoint'] != null
//         ? SearchEndpoint.fromJson(json['searchEndpoint'])
//         : null;
//     clearButton = json['clearButton'] != null
//         ? Button.fromJson(json['clearButton'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     if (placeholderText != null) {
//       data['placeholderText'] = placeholderText!.toJson();
//     }
//     if (config != null) {
//       data['config'] = config!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (searchEndpoint != null) {
//       data['searchEndpoint'] = searchEndpoint!.toJson();
//     }
//     if (clearButton != null) {
//       data['clearButton'] = clearButton!.toJson();
//     }
//     return data;
//   }
// }
//
// class Config {
//   WebSearchboxConfig? webSearchboxConfig;
//
//   Config({this.webSearchboxConfig});
//
//   Config.fromJson(Map<String, dynamic> json) {
//     webSearchboxConfig = json['webSearchboxConfig'] != null
//         ? WebSearchboxConfig.fromJson(json['webSearchboxConfig'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.webSearchboxConfig != null) {
//       data['webSearchboxConfig'] = this.webSearchboxConfig!.toJson();
//     }
//     return data;
//   }
// }
//
// class WebSearchboxConfig {
//   String? requestLanguage;
//   String? requestDomain;
//   bool? hasOnscreenKeyboard;
//   bool? focusSearchbox;
//
//   WebSearchboxConfig(
//       {this.requestLanguage,
//         this.requestDomain,
//         this.hasOnscreenKeyboard,
//         this.focusSearchbox});
//
//   WebSearchboxConfig.fromJson(Map<String, dynamic> json) {
//     requestLanguage = json['requestLanguage'];
//     requestDomain = json['requestDomain'];
//     hasOnscreenKeyboard = json['hasOnscreenKeyboard'];
//     focusSearchbox = json['focusSearchbox'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['requestLanguage'] = requestLanguage;
//     data['requestDomain'] = requestDomain;
//     data['hasOnscreenKeyboard'] = hasOnscreenKeyboard;
//     data['focusSearchbox'] = focusSearchbox;
//     return data;
//   }
// }
//
// class SearchEndpoint {
//   String? clickTrackingParams;
//   CommandMetadata? commandMetadata;
//   SearchEndpoint? searchEndpoint;
//
//   SearchEndpoint(
//       {this.clickTrackingParams, this.commandMetadata, this.searchEndpoint});
//
//   SearchEndpoint.fromJson(Map<String, dynamic> json) {
//     clickTrackingParams = json['clickTrackingParams'];
//     commandMetadata = json['commandMetadata'] != null
//         ? CommandMetadata.fromJson(json['commandMetadata'])
//         : null;
//     searchEndpoint = json['searchEndpoint'] != null
//         ? SearchEndpoint.fromJson(json['searchEndpoint'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['clickTrackingParams'] = this.clickTrackingParams;
//     if (this.commandMetadata != null) {
//       data['commandMetadata'] = this.commandMetadata!.toJson();
//     }
//     if (this.searchEndpoint != null) {
//       data['searchEndpoint'] = this.searchEndpoint!.toJson();
//     }
//     return data;
//   }
// }
//
// class SearchEndpoint {
//   String? query;
//
//   SearchEndpoint({this.query});
//
//   SearchEndpoint.fromJson(Map<String, dynamic> json) {
//     query = json['query'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['query'] = query;
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   Icon? icon;
//   String? trackingParams;
//   AccessibilityData? accessibilityData;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.icon,
//         this.trackingParams,
//         this.accessibilityData});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     trackingParams = json['trackingParams'];
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (accessibilityData != null) {
//       data['accessibilityData'] = accessibilityData!.toJson();
//     }
//     return data;
//   }
// }
//
// class TopbarButtons {
//   TopbarMenuButtonRenderer? topbarMenuButtonRenderer;
//   ButtonRenderer? buttonRenderer;
//
//   TopbarButtons({this.topbarMenuButtonRenderer, this.buttonRenderer});
//
//   TopbarButtons.fromJson(Map<String, dynamic> json) {
//     topbarMenuButtonRenderer = json['topbarMenuButtonRenderer'] != null
//         ? TopbarMenuButtonRenderer.fromJson(
//         json['topbarMenuButtonRenderer'])
//         : null;
//     buttonRenderer = json['buttonRenderer'] != null
//         ? ButtonRenderer.fromJson(json['buttonRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (topbarMenuButtonRenderer != null) {
//       data['topbarMenuButtonRenderer'] =
//           topbarMenuButtonRenderer!.toJson();
//     }
//     if (buttonRenderer != null) {
//       data['buttonRenderer'] = buttonRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class TopbarMenuButtonRenderer {
//   Icon? icon;
//   ServiceEndpoint? menuRequest;
//   String? trackingParams;
//   Accessibility? accessibility;
//   String? tooltip;
//   String? style;
//
//   TopbarMenuButtonRenderer(
//       {this.icon,
//         this.menuRequest,
//         this.trackingParams,
//         this.accessibility,
//         this.tooltip,
//         this.style});
//
//   TopbarMenuButtonRenderer.fromJson(Map<String, dynamic> json) {
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     menuRequest = json['menuRequest'] != null
//         ? ServiceEndpoint.fromJson(json['menuRequest'])
//         : null;
//     trackingParams = json['trackingParams'];
//     accessibility = json['accessibility'] != null
//         ? Accessibility.fromJson(json['accessibility'])
//         : null;
//     tooltip = json['tooltip'];
//     style = json['style'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     if (menuRequest != null) {
//       data['menuRequest'] = menuRequest!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (accessibility != null) {
//       data['accessibility'] = accessibility!.toJson();
//     }
//     data['tooltip'] = tooltip;
//     data['style'] = style;
//     return data;
//   }
// }
//
// class Popup {
//   MultiPageMenuRenderer? multiPageMenuRenderer;
//
//   Popup({this.multiPageMenuRenderer});
//
//   Popup.fromJson(Map<String, dynamic> json) {
//     multiPageMenuRenderer = json['multiPageMenuRenderer'] != null
//         ? MultiPageMenuRenderer.fromJson(json['multiPageMenuRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.multiPageMenuRenderer != null) {
//       data['multiPageMenuRenderer'] = this.multiPageMenuRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class MultiPageMenuRenderer {
//   String? trackingParams;
//   String? style;
//   bool? showLoadingSpinner;
//
//   MultiPageMenuRenderer(
//       {this.trackingParams, this.style, this.showLoadingSpinner});
//
//   MultiPageMenuRenderer.fromJson(Map<String, dynamic> json) {
//     trackingParams = json['trackingParams'];
//     style = json['style'];
//     showLoadingSpinner = json['showLoadingSpinner'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['trackingParams'] = trackingParams;
//     data['style'] = style;
//     data['showLoadingSpinner'] = showLoadingSpinner;
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   Title? text;
//   Icon? icon;
//   NavigationEndpoint? navigationEndpoint;
//   String? trackingParams;
//   String? targetId;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.text,
//         this.icon,
//         this.navigationEndpoint,
//         this.trackingParams,
//         this.targetId});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     navigationEndpoint = json['navigationEndpoint'] != null
//         ? NavigationEndpoint.fromJson(json['navigationEndpoint'])
//         : null;
//     trackingParams = json['trackingParams'];
//     targetId = json['targetId'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     if (this.text != null) {
//       data['text'] = this.text!.toJson();
//     }
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     if (this.navigationEndpoint != null) {
//       data['navigationEndpoint'] = this.navigationEndpoint!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     data['targetId'] = this.targetId;
//     return data;
//   }
// }
//
// class SignInEndpoint {
//   String? idamTag;
//
//   SignInEndpoint({this.idamTag});
//
//   SignInEndpoint.fromJson(Map<String, dynamic> json) {
//     idamTag = json['idamTag'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['idamTag'] = this.idamTag;
//     return data;
//   }
// }
//
// class HotkeyDialog {
//   HotkeyDialogRenderer? hotkeyDialogRenderer;
//
//   HotkeyDialog({this.hotkeyDialogRenderer});
//
//   HotkeyDialog.fromJson(Map<String, dynamic> json) {
//     hotkeyDialogRenderer = json['hotkeyDialogRenderer'] != null
//         ? HotkeyDialogRenderer.fromJson(json['hotkeyDialogRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (hotkeyDialogRenderer != null) {
//       data['hotkeyDialogRenderer'] = hotkeyDialogRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class HotkeyDialogRenderer {
//   Title? title;
//   List<Sections>? sections;
//   Button? dismissButton;
//   String? trackingParams;
//
//   HotkeyDialogRenderer(
//       {this.title, this.sections, this.dismissButton, this.trackingParams});
//
//   HotkeyDialogRenderer.fromJson(Map<String, dynamic> json) {
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     if (json['sections'] != null) {
//       sections = <Sections>[];
//       json['sections'].forEach((v) {
//         sections!.add(Sections.fromJson(v));
//       });
//     }
//     dismissButton = json['dismissButton'] != null
//         ? Button.fromJson(json['dismissButton'])
//         : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (sections != null) {
//       data['sections'] = sections!.map((v) => v.toJson()).toList();
//     }
//     if (dismissButton != null) {
//       data['dismissButton'] = dismissButton!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class Sections {
//   HotkeyDialogSectionRenderer? hotkeyDialogSectionRenderer;
//
//   Sections({this.hotkeyDialogSectionRenderer});
//
//   Sections.fromJson(Map<String, dynamic> json) {
//     hotkeyDialogSectionRenderer = json['hotkeyDialogSectionRenderer'] != null
//         ? HotkeyDialogSectionRenderer.fromJson(
//         json['hotkeyDialogSectionRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (hotkeyDialogSectionRenderer != null) {
//       data['hotkeyDialogSectionRenderer'] =
//           hotkeyDialogSectionRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class HotkeyDialogSectionRenderer {
//   Title? title;
//   List<Options>? options;
//
//   HotkeyDialogSectionRenderer({this.title, this.options});
//
//   HotkeyDialogSectionRenderer.fromJson(Map<String, dynamic> json) {
//     title = json['title'] != null ? Title.fromJson(json['title']) : null;
//     if (json['options'] != null) {
//       options = <Options>[];
//       json['options'].forEach((v) {
//         options!.add(Options.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (options != null) {
//       data['options'] = options!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Options {
//   HotkeyDialogSectionOptionRenderer? hotkeyDialogSectionOptionRenderer;
//
//   Options({this.hotkeyDialogSectionOptionRenderer});
//
//   Options.fromJson(Map<String, dynamic> json) {
//     hotkeyDialogSectionOptionRenderer =
//     json['hotkeyDialogSectionOptionRenderer'] != null
//         ? HotkeyDialogSectionOptionRenderer.fromJson(
//         json['hotkeyDialogSectionOptionRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.hotkeyDialogSectionOptionRenderer != null) {
//       data['hotkeyDialogSectionOptionRenderer'] =
//           this.hotkeyDialogSectionOptionRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class HotkeyDialogSectionOptionRenderer {
//   Title? label;
//   String? hotkey;
//   Accessibility? hotkeyAccessibilityLabel;
//
//   HotkeyDialogSectionOptionRenderer(
//       {this.label, this.hotkey, this.hotkeyAccessibilityLabel});
//
//   HotkeyDialogSectionOptionRenderer.fromJson(Map<String, dynamic> json) {
//     label = json['label'] != null ? Title.fromJson(json['label']) : null;
//     hotkey = json['hotkey'];
//     hotkeyAccessibilityLabel = json['hotkeyAccessibilityLabel'] != null
//         ? Accessibility.fromJson(json['hotkeyAccessibilityLabel'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (label != null) {
//       data['label'] = label!.toJson();
//     }
//     data['hotkey'] = hotkey;
//     if (hotkeyAccessibilityLabel != null) {
//       data['hotkeyAccessibilityLabel'] =
//           hotkeyAccessibilityLabel!.toJson();
//     }
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   Title? text;
//   String? trackingParams;
//
//   ButtonRenderer(
//       {this.style, this.size, this.isDisabled, this.text, this.trackingParams});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     text = json['text'] != null ? Title.fromJson(json['text']) : null;
//     trackingParams = json['trackingParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (this.text != null) {
//       data['text'] = this.text!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? trackingParams;
//   ServiceEndpoint? command;
//
//   ButtonRenderer({this.trackingParams, this.command});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     trackingParams = json['trackingParams'];
//     command = json['command'] != null
//         ? ServiceEndpoint.fromJson(json['command'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['trackingParams'] = trackingParams;
//     if (this.command != null) {
//       data['command'] = this.command!.toJson();
//     }
//     return data;
//   }
// }
//
// class ButtonRenderer {
//   String? style;
//   String? size;
//   bool? isDisabled;
//   ServiceEndpoint? serviceEndpoint;
//   Icon? icon;
//   String? tooltip;
//   String? trackingParams;
//   AccessibilityData? accessibilityData;
//
//   ButtonRenderer(
//       {this.style,
//         this.size,
//         this.isDisabled,
//         this.serviceEndpoint,
//         this.icon,
//         this.tooltip,
//         this.trackingParams,
//         this.accessibilityData});
//
//   ButtonRenderer.fromJson(Map<String, dynamic> json) {
//     style = json['style'];
//     size = json['size'];
//     isDisabled = json['isDisabled'];
//     serviceEndpoint = json['serviceEndpoint'] != null
//         ? ServiceEndpoint.fromJson(json['serviceEndpoint'])
//         : null;
//     icon = json['icon'] != null ? Icon.fromJson(json['icon']) : null;
//     tooltip = json['tooltip'];
//     trackingParams = json['trackingParams'];
//     accessibilityData = json['accessibilityData'] != null
//         ? AccessibilityData.fromJson(json['accessibilityData'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['style'] = style;
//     data['size'] = size;
//     data['isDisabled'] = isDisabled;
//     if (serviceEndpoint != null) {
//       data['serviceEndpoint'] = serviceEndpoint!.toJson();
//     }
//     if (icon != null) {
//       data['icon'] = icon!.toJson();
//     }
//     data['tooltip'] = tooltip;
//     data['trackingParams'] = trackingParams;
//     if (accessibilityData != null) {
//       data['accessibilityData'] = accessibilityData!.toJson();
//     }
//     return data;
//   }
// }
//
// class Popup {
//   VoiceSearchDialogRenderer? voiceSearchDialogRenderer;
//
//   Popup({this.voiceSearchDialogRenderer});
//
//   Popup.fromJson(Map<String, dynamic> json) {
//     voiceSearchDialogRenderer = json['voiceSearchDialogRenderer'] != null
//         ? VoiceSearchDialogRenderer.fromJson(
//         json['voiceSearchDialogRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (voiceSearchDialogRenderer != null) {
//       data['voiceSearchDialogRenderer'] =
//           voiceSearchDialogRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class VoiceSearchDialogRenderer {
//   Title? placeholderHeader;
//   Title? promptHeader;
//   Title? exampleQuery1;
//   Title? exampleQuery2;
//   Title? promptMicrophoneLabel;
//   Title? loadingHeader;
//   Title? connectionErrorHeader;
//   Title? connectionErrorMicrophoneLabel;
//   Title? permissionsHeader;
//   Title? permissionsSubtext;
//   Title? disabledHeader;
//   Title? disabledSubtext;
//   Title? microphoneButtonAriaLabel;
//   Button? exitButton;
//   String? trackingParams;
//   Title? microphoneOffPromptHeader;
//
//   VoiceSearchDialogRenderer(
//       {this.placeholderHeader,
//         this.promptHeader,
//         this.exampleQuery1,
//         this.exampleQuery2,
//         this.promptMicrophoneLabel,
//         this.loadingHeader,
//         this.connectionErrorHeader,
//         this.connectionErrorMicrophoneLabel,
//         this.permissionsHeader,
//         this.permissionsSubtext,
//         this.disabledHeader,
//         this.disabledSubtext,
//         this.microphoneButtonAriaLabel,
//         this.exitButton,
//         this.trackingParams,
//         this.microphoneOffPromptHeader});
//
//   VoiceSearchDialogRenderer.fromJson(Map<String, dynamic> json) {
//     placeholderHeader = json['placeholderHeader'] != null
//         ? Title.fromJson(json['placeholderHeader'])
//         : null;
//     promptHeader = json['promptHeader'] != null
//         ? Title.fromJson(json['promptHeader'])
//         : null;
//     exampleQuery1 = json['exampleQuery1'] != null
//         ? Title.fromJson(json['exampleQuery1'])
//         : null;
//     exampleQuery2 = json['exampleQuery2'] != null
//         ? Title.fromJson(json['exampleQuery2'])
//         : null;
//     promptMicrophoneLabel = json['promptMicrophoneLabel'] != null
//         ? Title.fromJson(json['promptMicrophoneLabel'])
//         : null;
//     loadingHeader = json['loadingHeader'] != null
//         ? Title.fromJson(json['loadingHeader'])
//         : null;
//     connectionErrorHeader = json['connectionErrorHeader'] != null
//         ? Title.fromJson(json['connectionErrorHeader'])
//         : null;
//     connectionErrorMicrophoneLabel =
//     json['connectionErrorMicrophoneLabel'] != null
//         ? Title.fromJson(json['connectionErrorMicrophoneLabel'])
//         : null;
//     permissionsHeader = json['permissionsHeader'] != null
//         ? Title.fromJson(json['permissionsHeader'])
//         : null;
//     permissionsSubtext = json['permissionsSubtext'] != null
//         ? Title.fromJson(json['permissionsSubtext'])
//         : null;
//     disabledHeader = json['disabledHeader'] != null
//         ? Title.fromJson(json['disabledHeader'])
//         : null;
//     disabledSubtext = json['disabledSubtext'] != null
//         ? Title.fromJson(json['disabledSubtext'])
//         : null;
//     microphoneButtonAriaLabel = json['microphoneButtonAriaLabel'] != null
//         ? Title.fromJson(json['microphoneButtonAriaLabel'])
//         : null;
//     exitButton = json['exitButton'] != null
//         ? Button.fromJson(json['exitButton'])
//         : null;
//     trackingParams = json['trackingParams'];
//     microphoneOffPromptHeader = json['microphoneOffPromptHeader'] != null
//         ? Title.fromJson(json['microphoneOffPromptHeader'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (placeholderHeader != null) {
//       data['placeholderHeader'] = placeholderHeader!.toJson();
//     }
//     if (promptHeader != null) {
//       data['promptHeader'] = promptHeader!.toJson();
//     }
//     if (exampleQuery1 != null) {
//       data['exampleQuery1'] = exampleQuery1!.toJson();
//     }
//     if (exampleQuery2 != null) {
//       data['exampleQuery2'] = exampleQuery2!.toJson();
//     }
//     if (promptMicrophoneLabel != null) {
//       data['promptMicrophoneLabel'] = promptMicrophoneLabel!.toJson();
//     }
//     if (loadingHeader != null) {
//       data['loadingHeader'] = loadingHeader!.toJson();
//     }
//     if (connectionErrorHeader != null) {
//       data['connectionErrorHeader'] = connectionErrorHeader!.toJson();
//     }
//     if (connectionErrorMicrophoneLabel != null) {
//       data['connectionErrorMicrophoneLabel'] =
//           connectionErrorMicrophoneLabel!.toJson();
//     }
//     if (permissionsHeader != null) {
//       data['permissionsHeader'] = permissionsHeader!.toJson();
//     }
//     if (permissionsSubtext != null) {
//       data['permissionsSubtext'] = permissionsSubtext!.toJson();
//     }
//     if (disabledHeader != null) {
//       data['disabledHeader'] = disabledHeader!.toJson();
//     }
//     if (disabledSubtext != null) {
//       data['disabledSubtext'] = disabledSubtext!.toJson();
//     }
//     if (microphoneButtonAriaLabel != null) {
//       data['microphoneButtonAriaLabel'] =
//           microphoneButtonAriaLabel!.toJson();
//     }
//     if (exitButton != null) {
//       data['exitButton'] = exitButton!.toJson();
//     }
//     data['trackingParams'] = trackingParams;
//     if (microphoneOffPromptHeader != null) {
//       data['microphoneOffPromptHeader'] =
//           microphoneOffPromptHeader!.toJson();
//     }
//     return data;
//   }
// }
//
// class PageVisualEffects {
//   CinematicContainerRenderer? cinematicContainerRenderer;
//
//   PageVisualEffects({this.cinematicContainerRenderer});
//
//   PageVisualEffects.fromJson(Map<String, dynamic> json) {
//     cinematicContainerRenderer = json['cinematicContainerRenderer'] != null
//         ? CinematicContainerRenderer.fromJson(
//         json['cinematicContainerRenderer'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (cinematicContainerRenderer != null) {
//       data['cinematicContainerRenderer'] =
//           cinematicContainerRenderer!.toJson();
//     }
//     return data;
//   }
// }
//
// class CinematicContainerRenderer {
//   List<GradientColorConfig>? gradientColorConfig;
//   String? presentationStyle;
//   Config? config;
//
//   CinematicContainerRenderer(
//       {this.gradientColorConfig, this.presentationStyle, this.config});
//
//   CinematicContainerRenderer.fromJson(Map<String, dynamic> json) {
//     if (json['gradientColorConfig'] != null) {
//       gradientColorConfig = <GradientColorConfig>[];
//       json['gradientColorConfig'].forEach((v) {
//         gradientColorConfig!.add(GradientColorConfig.fromJson(v));
//       });
//     }
//     presentationStyle = json['presentationStyle'];
//     config =
//     json['config'] != null ? Config.fromJson(json['config']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (gradientColorConfig != null) {
//       data['gradientColorConfig'] =
//           gradientColorConfig!.map((v) => v.toJson()).toList();
//     }
//     data['presentationStyle'] = presentationStyle;
//     if (config != null) {
//       data['config'] = config!.toJson();
//     }
//     return data;
//   }
// }
//
// class GradientColorConfig {
//   int? darkThemeColor;
//   int? startLocation;
//
//   GradientColorConfig({this.darkThemeColor, this.startLocation});
//
//   GradientColorConfig.fromJson(Map<String, dynamic> json) {
//     darkThemeColor = json['darkThemeColor'];
//     startLocation = json['startLocation'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['darkThemeColor'] = darkThemeColor;
//     data['startLocation'] = startLocation;
//     return data;
//   }
// }
//
// class Config {
//   int? lightThemeBackgroundColor;
//   int? darkThemeBackgroundColor;
//   AnimationConfig? animationConfig;
//   double? colorSourceSizeMultiplier;
//   bool? applyClientImageBlur;
//   double? bottomColorSourceHeightMultiplier;
//   int? maxBottomColorSourceHeight;
//   double? colorSourceWidthMultiplier;
//   int? colorSourceHeightMultiplier;
//   int? blurStrength;
//
//   Config(
//       {this.lightThemeBackgroundColor,
//         this.darkThemeBackgroundColor,
//         this.animationConfig,
//         this.colorSourceSizeMultiplier,
//         this.applyClientImageBlur,
//         this.bottomColorSourceHeightMultiplier,
//         this.maxBottomColorSourceHeight,
//         this.colorSourceWidthMultiplier,
//         this.colorSourceHeightMultiplier,
//         this.blurStrength});
//
//   Config.fromJson(Map<String, dynamic> json) {
//     lightThemeBackgroundColor = json['lightThemeBackgroundColor'];
//     darkThemeBackgroundColor = json['darkThemeBackgroundColor'];
//     animationConfig = json['animationConfig'] != null
//         ? AnimationConfig.fromJson(json['animationConfig'])
//         : null;
//     colorSourceSizeMultiplier = json['colorSourceSizeMultiplier'];
//     applyClientImageBlur = json['applyClientImageBlur'];
//     bottomColorSourceHeightMultiplier =
//     json['bottomColorSourceHeightMultiplier'];
//     maxBottomColorSourceHeight = json['maxBottomColorSourceHeight'];
//     colorSourceWidthMultiplier = json['colorSourceWidthMultiplier'];
//     colorSourceHeightMultiplier = json['colorSourceHeightMultiplier'];
//     blurStrength = json['blurStrength'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['lightThemeBackgroundColor'] = lightThemeBackgroundColor;
//     data['darkThemeBackgroundColor'] = darkThemeBackgroundColor;
//     if (animationConfig != null) {
//       data['animationConfig'] = animationConfig!.toJson();
//     }
//     data['colorSourceSizeMultiplier'] = colorSourceSizeMultiplier;
//     data['applyClientImageBlur'] = applyClientImageBlur;
//     data['bottomColorSourceHeightMultiplier'] =
//         bottomColorSourceHeightMultiplier;
//     data['maxBottomColorSourceHeight'] = maxBottomColorSourceHeight;
//     data['colorSourceWidthMultiplier'] = colorSourceWidthMultiplier;
//     data['colorSourceHeightMultiplier'] = colorSourceHeightMultiplier;
//     data['blurStrength'] = blurStrength;
//     return data;
//   }
// }
//
// class AnimationConfig {
//   int? minImageUpdateIntervalMs;
//   int? crossfadeDurationMs;
//   int? crossfadeStartOffset;
//   int? maxFrameRate;
//
//   AnimationConfig(
//       {this.minImageUpdateIntervalMs,
//         this.crossfadeDurationMs,
//         this.crossfadeStartOffset,
//         this.maxFrameRate});
//
//   AnimationConfig.fromJson(Map<String, dynamic> json) {
//     minImageUpdateIntervalMs = json['minImageUpdateIntervalMs'];
//     crossfadeDurationMs = json['crossfadeDurationMs'];
//     crossfadeStartOffset = json['crossfadeStartOffset'];
//     maxFrameRate = json['maxFrameRate'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['minImageUpdateIntervalMs'] = minImageUpdateIntervalMs;
//     data['crossfadeDurationMs'] = crossfadeDurationMs;
//     data['crossfadeStartOffset'] = crossfadeStartOffset;
//     data['maxFrameRate'] = maxFrameRate;
//     return data;
//   }
// }
//
// class FrameworkUpdates {
//   EntityBatchUpdate? entityBatchUpdate;
//   ElementUpdate? elementUpdate;
//
//   FrameworkUpdates({this.entityBatchUpdate, this.elementUpdate});
//
//   FrameworkUpdates.fromJson(Map<String, dynamic> json) {
//     entityBatchUpdate = json['entityBatchUpdate'] != null
//         ? EntityBatchUpdate.fromJson(json['entityBatchUpdate'])
//         : null;
//     elementUpdate = json['elementUpdate'] != null
//         ? ElementUpdate.fromJson(json['elementUpdate'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (entityBatchUpdate != null) {
//       data['entityBatchUpdate'] = entityBatchUpdate!.toJson();
//     }
//     if (elementUpdate != null) {
//       data['elementUpdate'] = elementUpdate!.toJson();
//     }
//     return data;
//   }
// }
//
// class EntityBatchUpdate {
//   List<Mutations>? mutations;
//   Timestamp? timestamp;
//
//   EntityBatchUpdate({this.mutations, this.timestamp});
//
//   EntityBatchUpdate.fromJson(Map<String, dynamic> json) {
//     if (json['mutations'] != null) {
//       mutations = <Mutations>[];
//       json['mutations'].forEach((v) {
//         mutations!.add(Mutations.fromJson(v));
//       });
//     }
//     timestamp = json['timestamp'] != null
//         ? Timestamp.fromJson(json['timestamp'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (mutations != null) {
//       data['mutations'] = mutations!.map((v) => v.toJson()).toList();
//     }
//     if (timestamp != null) {
//       data['timestamp'] = timestamp!.toJson();
//     }
//     return data;
//   }
// }
//
// class Mutations {
//   String? entityKey;
//   String? type;
//   Options? options;
//   Payload? payload;
//
//   Mutations({this.entityKey, this.type, this.options, this.payload});
//
//   Mutations.fromJson(Map<String, dynamic> json) {
//     entityKey = json['entityKey'];
//     type = json['type'];
//     options =
//     json['options'] != null ? Options.fromJson(json['options']) : null;
//     payload =
//     json['payload'] != null ? Payload.fromJson(json['payload']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['entityKey'] = entityKey;
//     data['type'] = type;
//     if (options != null) {
//       data['options'] = options!.toJson();
//     }
//     if (payload != null) {
//       data['payload'] = payload!.toJson();
//     }
//     return data;
//   }
// }
//
// class Options {
//   String? persistenceOption;
//
//   Options({this.persistenceOption});
//
//   Options.fromJson(Map<String, dynamic> json) {
//     persistenceOption = json['persistenceOption'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['persistenceOption'] = persistenceOption;
//     return data;
//   }
// }
//
// class Payload {
//   TranscriptTrackSelectionEntity? transcriptTrackSelectionEntity;
//   TranscriptSearchBoxStateEntity? transcriptSearchBoxStateEntity;
//
//   Payload(
//       {this.transcriptTrackSelectionEntity,
//         this.transcriptSearchBoxStateEntity});
//
//   Payload.fromJson(Map<String, dynamic> json) {
//     transcriptTrackSelectionEntity =
//     json['transcriptTrackSelectionEntity'] != null
//         ? TranscriptTrackSelectionEntity.fromJson(
//         json['transcriptTrackSelectionEntity'])
//         : null;
//     transcriptSearchBoxStateEntity =
//     json['transcriptSearchBoxStateEntity'] != null
//         ? TranscriptSearchBoxStateEntity.fromJson(
//         json['transcriptSearchBoxStateEntity'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (transcriptTrackSelectionEntity != null) {
//       data['transcriptTrackSelectionEntity'] =
//           transcriptTrackSelectionEntity!.toJson();
//     }
//     if (transcriptSearchBoxStateEntity != null) {
//       data['transcriptSearchBoxStateEntity'] =
//           transcriptSearchBoxStateEntity!.toJson();
//     }
//     return data;
//   }
// }
//
// class TranscriptTrackSelectionEntity {
//   String? key;
//   int? selectedTrackIndex;
//   String? serializedParams;
//
//   TranscriptTrackSelectionEntity(
//       {this.key, this.selectedTrackIndex, this.serializedParams});
//
//   TranscriptTrackSelectionEntity.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     selectedTrackIndex = json['selectedTrackIndex'];
//     serializedParams = json['serializedParams'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['key'] = key;
//     data['selectedTrackIndex'] = selectedTrackIndex;
//     data['serializedParams'] = serializedParams;
//     return data;
//   }
// }
//
// class TranscriptSearchBoxStateEntity {
//   String? key;
//   bool? isHidden;
//
//   TranscriptSearchBoxStateEntity({this.key, this.isHidden});
//
//   TranscriptSearchBoxStateEntity.fromJson(Map<String, dynamic> json) {
//     key = json['key'];
//     isHidden = json['isHidden'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['key'] = key;
//     data['isHidden'] = isHidden;
//     return data;
//   }
// }
//
// class Timestamp {
//   String? seconds;
//   int? nanos;
//
//   Timestamp({this.seconds, this.nanos});
//
//   Timestamp.fromJson(Map<String, dynamic> json) {
//     seconds = json['seconds'];
//     nanos = json['nanos'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['seconds'] = seconds;
//     data['nanos'] = nanos;
//     return data;
//   }
// }
//
// class ElementUpdate {
//   List<Updates>? updates;
//
//   ElementUpdate({this.updates});
//
//   ElementUpdate.fromJson(Map<String, dynamic> json) {
//     if (json['updates'] != null) {
//       updates = <Updates>[];
//       json['updates'].forEach((v) {
//         updates!.add(Updates.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (updates != null) {
//       data['updates'] = updates!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Updates {
//   TemplateUpdate? templateUpdate;
//   ResourceStatusInResponseCheck? resourceStatusInResponseCheck;
//
//   Updates({this.templateUpdate, this.resourceStatusInResponseCheck});
//
//   Updates.fromJson(Map<String, dynamic> json) {
//     templateUpdate = json['templateUpdate'] != null
//         ? TemplateUpdate.fromJson(json['templateUpdate'])
//         : null;
//     resourceStatusInResponseCheck =
//     json['resourceStatusInResponseCheck'] != null
//         ? ResourceStatusInResponseCheck.fromJson(
//         json['resourceStatusInResponseCheck'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (templateUpdate != null) {
//       data['templateUpdate'] = templateUpdate!.toJson();
//     }
//     if (resourceStatusInResponseCheck != null) {
//       data['resourceStatusInResponseCheck'] =
//           resourceStatusInResponseCheck!.toJson();
//     }
//     return data;
//   }
// }
//
// class TemplateUpdate {
//   String? identifier;
//   String? serializedTemplateConfig;
//   List<String>? dependencies;
//
//   TemplateUpdate(
//       {this.identifier, this.serializedTemplateConfig, this.dependencies});
//
//   TemplateUpdate.fromJson(Map<String, dynamic> json) {
//     identifier = json['identifier'];
//     serializedTemplateConfig = json['serializedTemplateConfig'];
//     dependencies = json['dependencies'].cast<String>();
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['identifier'] = identifier;
//     data['serializedTemplateConfig'] = serializedTemplateConfig;
//     data['dependencies'] = dependencies;
//     return data;
//   }
// }
//
// class ResourceStatusInResponseCheck {
//   List<ResourceStatuses>? resourceStatuses;
//   String? serverBuildLabel;
//
//   ResourceStatusInResponseCheck({this.resourceStatuses, this.serverBuildLabel});
//
//   ResourceStatusInResponseCheck.fromJson(Map<String, dynamic> json) {
//     if (json['resourceStatuses'] != null) {
//       resourceStatuses = <ResourceStatuses>[];
//       json['resourceStatuses'].forEach((v) {
//         resourceStatuses!.add(ResourceStatuses.fromJson(v));
//       });
//     }
//     serverBuildLabel = json['serverBuildLabel'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (resourceStatuses != null) {
//       data['resourceStatuses'] =
//           resourceStatuses!.map((v) => v.toJson()).toList();
//     }
//     data['serverBuildLabel'] = serverBuildLabel;
//     return data;
//   }
// }
//
// class ResourceStatuses {
//   String? identifier;
//   String? status;
//
//   ResourceStatuses({this.identifier, this.status});
//
//   ResourceStatuses.fromJson(Map<String, dynamic> json) {
//     identifier = json['identifier'];
//     status = json['status'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['identifier'] = identifier;
//     data['status'] = status;
//     return data;
//   }
// }