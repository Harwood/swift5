# VideosForXMLInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**link** | **String** | video watch page URL | [optional] 
**guid** | **String** | video canonical URL | [optional] 
**pubDate** | **Date** | video publication date | [optional] 
**description** | **String** | video description | [optional] 
**contentencoded** | **String** | video description | [optional] 
**dccreator** | **String** | publisher user name | [optional] 
**mediacategory** | **Int** | video category (MRSS) | [optional] 
**mediacommunity** | [**VideosForXMLInnerMediaCommunity**](VideosForXMLInnerMediaCommunity.md) |  | [optional] 
**mediaembed** | [**VideosForXMLInnerMediaEmbed**](VideosForXMLInnerMediaEmbed.md) |  | [optional] 
**mediaplayer** | [**VideosForXMLInnerMediaPlayer**](VideosForXMLInnerMediaPlayer.md) |  | [optional] 
**mediathumbnail** | [**VideosForXMLInnerMediaThumbnail**](VideosForXMLInnerMediaThumbnail.md) |  | [optional] 
**mediatitle** | **String** | see [media:title](https://www.rssboard.org/media-rss#media-title) (MRSS). We only use &#x60;plain&#x60; titles. | [optional] 
**mediadescription** | **String** |  | [optional] 
**mediarating** | **String** | see [media:rating](https://www.rssboard.org/media-rss#media-rating) (MRSS) | [optional] 
**enclosure** | [**VideosForXMLInnerEnclosure**](VideosForXMLInnerEnclosure.md) |  | [optional] 
**mediagroup** | [VideosForXMLInnerMediaGroupInner] | list of streamable files for the video. see [media:peerLink](https://www.rssboard.org/media-rss#media-peerlink) and [media:content](https://www.rssboard.org/media-rss#media-content) or  (MRSS) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


