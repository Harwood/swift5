# GetUser200Response

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | [**Account**](Account.md) |  | [optional] 
**autoPlayNextVideo** | **Bool** | Automatically start playing the upcoming video after the currently playing video | [optional] 
**autoPlayNextVideoPlaylist** | **Bool** | Automatically start playing the video on the playlist after the currently playing video | [optional] 
**autoPlayVideo** | **Bool** | Automatically start playing the video on the watch page | [optional] 
**blocked** | **Bool** |  | [optional] 
**blockedReason** | **String** |  | [optional] 
**createdAt** | **String** |  | [optional] 
**email** | **String** | The user email | [optional] 
**emailVerified** | **Bool** | Has the user confirmed their email address? | [optional] 
**id** | **Int** |  | [optional] [readonly] 
**pluginAuth** | **String** | Auth plugin to use to authenticate the user | [optional] 
**lastLoginDate** | **Date** |  | [optional] 
**noInstanceConfigWarningModal** | **Bool** |  | [optional] 
**noAccountSetupWarningModal** | **Bool** |  | [optional] 
**noWelcomeModal** | **Bool** |  | [optional] 
**nsfwPolicy** | [**NSFWPolicy**](NSFWPolicy.md) |  | [optional] 
**role** | [**UserRole**](UserRole.md) |  | [optional] 
**theme** | **String** | Theme enabled by this user | [optional] 
**username** | **String** | immutable name of the user, used to find or mention its actor | [optional] 
**videoChannels** | [VideoChannel] |  | [optional] 
**videoQuota** | **Int** | The user video quota in bytes | [optional] 
**videoQuotaDaily** | **Int** | The user daily video quota in bytes | [optional] 
**p2pEnabled** | **Bool** | Enable P2P in the player | [optional] 
**videosCount** | **Int** | Count of videos published | [optional] 
**abusesCount** | **Int** | Count of reports/abuses of which the user is a target | [optional] 
**abusesAcceptedCount** | **Int** | Count of reports/abuses created by the user and accepted/acted upon by the moderation team | [optional] 
**abusesCreatedCount** | **Int** | Count of reports/abuses created by the user | [optional] 
**videoCommentsCount** | **Int** | Count of comments published | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


