# Notification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**type** | **Int** | Notification type, following the &#x60;UserNotificationType&#x60; enum: - &#x60;1&#x60; NEW_VIDEO_FROM_SUBSCRIPTION - &#x60;2&#x60; NEW_COMMENT_ON_MY_VIDEO - &#x60;3&#x60; NEW_ABUSE_FOR_MODERATORS - &#x60;4&#x60; BLACKLIST_ON_MY_VIDEO - &#x60;5&#x60; UNBLACKLIST_ON_MY_VIDEO - &#x60;6&#x60; MY_VIDEO_PUBLISHED - &#x60;7&#x60; MY_VIDEO_IMPORT_SUCCESS - &#x60;8&#x60; MY_VIDEO_IMPORT_ERROR - &#x60;9&#x60; NEW_USER_REGISTRATION - &#x60;10&#x60; NEW_FOLLOW - &#x60;11&#x60; COMMENT_MENTION - &#x60;12&#x60; VIDEO_AUTO_BLACKLIST_FOR_MODERATORS - &#x60;13&#x60; NEW_INSTANCE_FOLLOWER - &#x60;14&#x60; AUTO_INSTANCE_FOLLOWING - &#x60;15&#x60; ABUSE_STATE_CHANGE - &#x60;16&#x60; ABUSE_NEW_MESSAGE - &#x60;17&#x60; NEW_PLUGIN_VERSION - &#x60;18&#x60; NEW_PEERTUBE_VERSION  | [optional] 
**read** | **Bool** |  | [optional] 
**video** | [**NotificationVideo**](NotificationVideo.md) |  | [optional] 
**videoImport** | [**NotificationVideoImport**](NotificationVideoImport.md) |  | [optional] 
**comment** | [**NotificationComment**](NotificationComment.md) |  | [optional] 
**videoAbuse** | [**NotificationVideoAbuse**](NotificationVideoAbuse.md) |  | [optional] 
**videoBlacklist** | [**NotificationVideoAbuse**](NotificationVideoAbuse.md) |  | [optional] 
**account** | [**ActorInfo**](ActorInfo.md) |  | [optional] 
**actorFollow** | [**NotificationActorFollow**](NotificationActorFollow.md) |  | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


