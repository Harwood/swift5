# Video

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**uuid** | **UUID** |  | [optional] 
**shortUUID** | **String** | translation of a uuid v4 with a bigger alphabet to have a shorter uuid | [optional] 
**isLive** | **Bool** |  | [optional] 
**createdAt** | **Date** | time at which the video object was first drafted | [optional] 
**publishedAt** | **Date** | time at which the video was marked as ready for playback (with restrictions depending on &#x60;privacy&#x60;). Usually set after a &#x60;state&#x60; evolution. | [optional] 
**updatedAt** | **Date** | last time the video&#39;s metadata was modified | [optional] 
**originallyPublishedAt** | **Date** | used to represent a date of first publication, prior to the practical publication date of &#x60;publishedAt&#x60; | [optional] 
**category** | [**VideoConstantNumberCategory**](VideoConstantNumberCategory.md) |  | [optional] 
**licence** | [**VideoConstantNumberLicence**](VideoConstantNumberLicence.md) |  | [optional] 
**language** | [**VideoConstantStringLanguage**](VideoConstantStringLanguage.md) |  | [optional] 
**privacy** | [**VideoPrivacyConstant**](VideoPrivacyConstant.md) |  | [optional] 
**description** | **String** | truncated description of the video, written in Markdown. Resolve &#x60;descriptionPath&#x60; to get the full description of maximum &#x60;10000&#x60; characters.  | [optional] 
**duration** | **Int** | duration of the video in seconds | [optional] 
**isLocal** | **Bool** |  | [optional] 
**name** | **String** | title of the video | [optional] 
**thumbnailPath** | **String** |  | [optional] 
**previewPath** | **String** |  | [optional] 
**embedPath** | **String** |  | [optional] 
**views** | **Int** |  | [optional] 
**likes** | **Int** |  | [optional] 
**dislikes** | **Int** |  | [optional] 
**nsfw** | **Bool** |  | [optional] 
**waitTranscoding** | **Bool** |  | [optional] 
**state** | [**VideoStateConstant**](VideoStateConstant.md) |  | [optional] 
**scheduledUpdate** | [**VideoScheduledUpdate**](VideoScheduledUpdate.md) |  | [optional] 
**blacklisted** | **Bool** |  | [optional] 
**blacklistedReason** | **String** |  | [optional] 
**account** | [**AccountSummary**](AccountSummary.md) |  | [optional] 
**channel** | [**VideoChannelSummary**](VideoChannelSummary.md) |  | [optional] 
**userHistory** | [**VideoUserHistory**](VideoUserHistory.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


