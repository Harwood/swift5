# Swift5 API client for OpenAPIClient

The PeerTube API is built on HTTP(S) and is RESTful. You can use your favorite
HTTP/REST library for your programming language to use PeerTube. The spec API is fully compatible with
[openapi-generator](https://github.com/OpenAPITools/openapi-generator/wiki/API-client-generator-HOWTO)
which generates a client SDK in the language of your choice - we generate some client SDKs automatically:

- [Python](https://framagit.org/framasoft/peertube/clients/python)
- [Go](https://framagit.org/framasoft/peertube/clients/go)
- [Kotlin](https://framagit.org/framasoft/peertube/clients/kotlin)

See the [REST API quick start](https://docs.joinpeertube.org/api/rest-getting-started) for a few
examples of using the PeerTube API.

# Authentication

When you sign up for an account on a PeerTube instance, you are given the possibility
to generate sessions on it, and authenticate there using an access token. Only __one
access token can currently be used at a time__.

## Roles

Accounts are given permissions based on their role. There are three roles on
PeerTube: Administrator, Moderator, and User. See the [roles guide](https://docs.joinpeertube.org/admin/managing-users#roles) for a detail of their permissions.

# Errors

The API uses standard HTTP status codes to indicate the success or failure
of the API call, completed by a [RFC7807-compliant](https://tools.ietf.org/html/rfc7807) response body.

```
HTTP 1.1 404 Not Found
Content-Type: application/problem+json; charset=utf-8

{
  \"detail\": \"Video not found\",
  \"docs\": \"https://docs.joinpeertube.org/api-rest-reference.html#operation/getVideo\",
  \"status\": 404,
  \"title\": \"Not Found\",
  \"type\": \"about:blank\"
}
```

We provide error `type` values for [a growing number of cases](https://github.com/Chocobozzz/PeerTube/blob/develop/packages/models/src/server/core-error-code.enum.ts),
but it is still optional. Types are used to disambiguate errors that bear the same status code
and are non-obvious:

```
HTTP 1.1 403 Forbidden
Content-Type: application/problem+json; charset=utf-8

{
  \"detail\": \"Cannot get this video regarding follow constraints\",
  \"docs\": \"https://docs.joinpeertube.org/api-rest-reference.html#operation/getVideo\",
  \"status\": 403,
  \"title\": \"Forbidden\",
  \"type\": \"https://docs.joinpeertube.org/api-rest-reference.html#section/Errors/does_not_respect_follow_constraints\"
}
```

Here a 403 error could otherwise mean that the video is private or blocklisted.

### Validation errors

Each parameter is evaluated on its own against a set of rules before the route validator
proceeds with potential testing involving parameter combinations. Errors coming from validation
errors appear earlier and benefit from a more detailed error description:

```
HTTP 1.1 400 Bad Request
Content-Type: application/problem+json; charset=utf-8

{
  \"detail\": \"Incorrect request parameters: id\",
  \"docs\": \"https://docs.joinpeertube.org/api-rest-reference.html#operation/getVideo\",
  \"instance\": \"/api/v1/videos/9c9de5e8-0a1e-484a-b099-e80766180\",
  \"invalid-params\": {
    \"id\": {
      \"location\": \"params\",
      \"msg\": \"Invalid value\",
      \"param\": \"id\",
      \"value\": \"9c9de5e8-0a1e-484a-b099-e80766180\"
    }
  },
  \"status\": 400,
  \"title\": \"Bad Request\",
  \"type\": \"about:blank\"
}
```

Where `id` is the name of the field concerned by the error, within the route definition.
`invalid-params.<field>.location` can be either 'params', 'body', 'header', 'query' or 'cookies', and
`invalid-params.<field>.value` reports the value that didn't pass validation whose `invalid-params.<field>.msg`
is about.

### Deprecated error fields

Some fields could be included with previous versions. They are still included but their use is deprecated:
- `error`: superseded by `detail`
- `code`: superseded by `type` (which is now an URI)

# Rate limits

We are rate-limiting all endpoints of PeerTube's API. Custom values can be set by administrators:

| Endpoint (prefix: `/api/v1`) | Calls         | Time frame   |
|------------------------------|---------------|--------------|
| `/_*`                         | 50            | 10 seconds   |
| `POST /users/token`          | 15            | 5 minutes    |
| `POST /users/register`       | 2<sup>*</sup> | 5 minutes    |
| `POST /users/ask-send-verify-email` | 3      | 5 minutes    |

Depending on the endpoint, <sup>*</sup>failed requests are not taken into account. A service
limit is announced by a `429 Too Many Requests` status code.

You can get details about the current state of your rate limit by reading the
following headers:

| Header                  | Description                                                |
|-------------------------|------------------------------------------------------------|
| `X-RateLimit-Limit`     | Number of max requests allowed in the current time period  |
| `X-RateLimit-Remaining` | Number of remaining requests in the current time period    |
| `X-RateLimit-Reset`     | Timestamp of end of current time period as UNIX timestamp  |
| `Retry-After`           | Seconds to delay after the first `429` is received         |

# CORS

This API features [Cross-Origin Resource Sharing (CORS)](https://fetch.spec.whatwg.org/),
allowing cross-domain communication from the browser for some routes:

| Endpoint                    |
|------------------------- ---|
| `/api/_*`                    |
| `/download/_*`               |
| `/lazy-static/_*`            |
| `/.well-known/webfinger`    |

In addition, all routes serving ActivityPub are CORS-enabled for all origins.


## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec](https://github.com/OAI/OpenAPI-Specification) from a remote server, you can easily generate an API client.

- API version: 5.2.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift5ClientCodegen
For more information, please visit [https://joinpeertube.org](https://joinpeertube.org)

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *https://peertube2.cpy.re*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AbusesAPI* | [**apiV1AbusesAbuseIdDelete**](docs/AbusesAPI.md#apiv1abusesabuseiddelete) | **DELETE** /api/v1/abuses/{abuseId} | Delete an abuse
*AbusesAPI* | [**apiV1AbusesAbuseIdMessagesAbuseMessageIdDelete**](docs/AbusesAPI.md#apiv1abusesabuseidmessagesabusemessageiddelete) | **DELETE** /api/v1/abuses/{abuseId}/messages/{abuseMessageId} | Delete an abuse message
*AbusesAPI* | [**apiV1AbusesAbuseIdMessagesGet**](docs/AbusesAPI.md#apiv1abusesabuseidmessagesget) | **GET** /api/v1/abuses/{abuseId}/messages | List messages of an abuse
*AbusesAPI* | [**apiV1AbusesAbuseIdMessagesPost**](docs/AbusesAPI.md#apiv1abusesabuseidmessagespost) | **POST** /api/v1/abuses/{abuseId}/messages | Add message to an abuse
*AbusesAPI* | [**apiV1AbusesAbuseIdPut**](docs/AbusesAPI.md#apiv1abusesabuseidput) | **PUT** /api/v1/abuses/{abuseId} | Update an abuse
*AbusesAPI* | [**apiV1AbusesPost**](docs/AbusesAPI.md#apiv1abusespost) | **POST** /api/v1/abuses | Report an abuse
*AbusesAPI* | [**getAbuses**](docs/AbusesAPI.md#getabuses) | **GET** /api/v1/abuses | List abuses
*AbusesAPI* | [**getMyAbuses**](docs/AbusesAPI.md#getmyabuses) | **GET** /api/v1/users/me/abuses | List my abuses
*AccountBlocksAPI* | [**apiV1BlocklistStatusGet**](docs/AccountBlocksAPI.md#apiv1blockliststatusget) | **GET** /api/v1/blocklist/status | Get block status of accounts/hosts
*AccountBlocksAPI* | [**apiV1ServerBlocklistAccountsAccountNameDelete**](docs/AccountBlocksAPI.md#apiv1serverblocklistaccountsaccountnamedelete) | **DELETE** /api/v1/server/blocklist/accounts/{accountName} | Unblock an account by its handle
*AccountBlocksAPI* | [**apiV1ServerBlocklistAccountsGet**](docs/AccountBlocksAPI.md#apiv1serverblocklistaccountsget) | **GET** /api/v1/server/blocklist/accounts | List account blocks
*AccountBlocksAPI* | [**apiV1ServerBlocklistAccountsPost**](docs/AccountBlocksAPI.md#apiv1serverblocklistaccountspost) | **POST** /api/v1/server/blocklist/accounts | Block an account
*AccountsAPI* | [**apiV1AccountsNameRatingsGet**](docs/AccountsAPI.md#apiv1accountsnameratingsget) | **GET** /api/v1/accounts/{name}/ratings | List ratings of an account
*AccountsAPI* | [**apiV1AccountsNameVideoChannelSyncsGet**](docs/AccountsAPI.md#apiv1accountsnamevideochannelsyncsget) | **GET** /api/v1/accounts/{name}/video-channel-syncs | List the synchronizations of video channels of an account
*AccountsAPI* | [**apiV1AccountsNameVideoChannelsGet**](docs/AccountsAPI.md#apiv1accountsnamevideochannelsget) | **GET** /api/v1/accounts/{name}/video-channels | List video channels of an account
*AccountsAPI* | [**apiV1AccountsNameVideoPlaylistsGet**](docs/AccountsAPI.md#apiv1accountsnamevideoplaylistsget) | **GET** /api/v1/accounts/{name}/video-playlists | List playlists of an account
*AccountsAPI* | [**getAccount**](docs/AccountsAPI.md#getaccount) | **GET** /api/v1/accounts/{name} | Get an account
*AccountsAPI* | [**getAccountFollowers**](docs/AccountsAPI.md#getaccountfollowers) | **GET** /api/v1/accounts/{name}/followers | List followers of an account
*AccountsAPI* | [**getAccountVideos**](docs/AccountsAPI.md#getaccountvideos) | **GET** /api/v1/accounts/{name}/videos | List videos of an account
*AccountsAPI* | [**getAccounts**](docs/AccountsAPI.md#getaccounts) | **GET** /api/v1/accounts | List accounts
*ChannelsSyncAPI* | [**addVideoChannelSync**](docs/ChannelsSyncAPI.md#addvideochannelsync) | **POST** /api/v1/video-channel-syncs | Create a synchronization for a video channel
*ChannelsSyncAPI* | [**apiV1AccountsNameVideoChannelSyncsGet**](docs/ChannelsSyncAPI.md#apiv1accountsnamevideochannelsyncsget) | **GET** /api/v1/accounts/{name}/video-channel-syncs | List the synchronizations of video channels of an account
*ChannelsSyncAPI* | [**apiV1VideoChannelsChannelHandleImportVideosPost**](docs/ChannelsSyncAPI.md#apiv1videochannelschannelhandleimportvideospost) | **POST** /api/v1/video-channels/{channelHandle}/import-videos | Import videos in channel
*ChannelsSyncAPI* | [**delVideoChannelSync**](docs/ChannelsSyncAPI.md#delvideochannelsync) | **DELETE** /api/v1/video-channel-syncs/{channelSyncId} | Delete a video channel synchronization
*ChannelsSyncAPI* | [**triggerVideoChannelSync**](docs/ChannelsSyncAPI.md#triggervideochannelsync) | **POST** /api/v1/video-channel-syncs/{channelSyncId}/sync | Triggers the channel synchronization job, fetching all the videos from the remote channel
*ConfigAPI* | [**delCustomConfig**](docs/ConfigAPI.md#delcustomconfig) | **DELETE** /api/v1/config/custom | Delete instance runtime configuration
*ConfigAPI* | [**getAbout**](docs/ConfigAPI.md#getabout) | **GET** /api/v1/config/about | Get instance \&quot;About\&quot; information
*ConfigAPI* | [**getConfig**](docs/ConfigAPI.md#getconfig) | **GET** /api/v1/config | Get instance public configuration
*ConfigAPI* | [**getCustomConfig**](docs/ConfigAPI.md#getcustomconfig) | **GET** /api/v1/config/custom | Get instance runtime configuration
*ConfigAPI* | [**putCustomConfig**](docs/ConfigAPI.md#putcustomconfig) | **PUT** /api/v1/config/custom | Set instance runtime configuration
*HomepageAPI* | [**apiV1CustomPagesHomepageInstanceGet**](docs/HomepageAPI.md#apiv1custompageshomepageinstanceget) | **GET** /api/v1/custom-pages/homepage/instance | Get instance custom homepage
*HomepageAPI* | [**apiV1CustomPagesHomepageInstancePut**](docs/HomepageAPI.md#apiv1custompageshomepageinstanceput) | **PUT** /api/v1/custom-pages/homepage/instance | Set instance custom homepage
*InstanceFollowsAPI* | [**apiV1ServerFollowersGet**](docs/InstanceFollowsAPI.md#apiv1serverfollowersget) | **GET** /api/v1/server/followers | List instances following the server
*InstanceFollowsAPI* | [**apiV1ServerFollowersNameWithHostAcceptPost**](docs/InstanceFollowsAPI.md#apiv1serverfollowersnamewithhostacceptpost) | **POST** /api/v1/server/followers/{nameWithHost}/accept | Accept a pending follower to your server
*InstanceFollowsAPI* | [**apiV1ServerFollowersNameWithHostDelete**](docs/InstanceFollowsAPI.md#apiv1serverfollowersnamewithhostdelete) | **DELETE** /api/v1/server/followers/{nameWithHost} | Remove or reject a follower to your server
*InstanceFollowsAPI* | [**apiV1ServerFollowersNameWithHostRejectPost**](docs/InstanceFollowsAPI.md#apiv1serverfollowersnamewithhostrejectpost) | **POST** /api/v1/server/followers/{nameWithHost}/reject | Reject a pending follower to your server
*InstanceFollowsAPI* | [**apiV1ServerFollowingGet**](docs/InstanceFollowsAPI.md#apiv1serverfollowingget) | **GET** /api/v1/server/following | List instances followed by the server
*InstanceFollowsAPI* | [**apiV1ServerFollowingHostOrHandleDelete**](docs/InstanceFollowsAPI.md#apiv1serverfollowinghostorhandledelete) | **DELETE** /api/v1/server/following/{hostOrHandle} | Unfollow an actor (PeerTube instance, channel or account)
*InstanceFollowsAPI* | [**apiV1ServerFollowingPost**](docs/InstanceFollowsAPI.md#apiv1serverfollowingpost) | **POST** /api/v1/server/following | Follow a list of actors (PeerTube instance, channel or account)
*InstanceRedundancyAPI* | [**apiV1ServerRedundancyHostPut**](docs/InstanceRedundancyAPI.md#apiv1serverredundancyhostput) | **PUT** /api/v1/server/redundancy/{host} | Update a server redundancy policy
*JobAPI* | [**apiV1JobsPausePost**](docs/JobAPI.md#apiv1jobspausepost) | **POST** /api/v1/jobs/pause | Pause job queue
*JobAPI* | [**apiV1JobsResumePost**](docs/JobAPI.md#apiv1jobsresumepost) | **POST** /api/v1/jobs/resume | Resume job queue
*JobAPI* | [**getJobs**](docs/JobAPI.md#getjobs) | **GET** /api/v1/jobs/{state} | List instance jobs
*LiveVideosAPI* | [**addLive**](docs/LiveVideosAPI.md#addlive) | **POST** /api/v1/videos/live | Create a live
*LiveVideosAPI* | [**apiV1VideosIdLiveSessionGet**](docs/LiveVideosAPI.md#apiv1videosidlivesessionget) | **GET** /api/v1/videos/{id}/live-session | Get live session of a replay
*LiveVideosAPI* | [**apiV1VideosLiveIdSessionsGet**](docs/LiveVideosAPI.md#apiv1videosliveidsessionsget) | **GET** /api/v1/videos/live/{id}/sessions | List live sessions
*LiveVideosAPI* | [**getLiveId**](docs/LiveVideosAPI.md#getliveid) | **GET** /api/v1/videos/live/{id} | Get information about a live
*LiveVideosAPI* | [**updateLiveId**](docs/LiveVideosAPI.md#updateliveid) | **PUT** /api/v1/videos/live/{id} | Update information about a live
*LogsAPI* | [**getInstanceAuditLogs**](docs/LogsAPI.md#getinstanceauditlogs) | **GET** /api/v1/server/audit-logs | Get instance audit logs
*LogsAPI* | [**getInstanceLogs**](docs/LogsAPI.md#getinstancelogs) | **GET** /api/v1/server/logs | Get instance logs
*LogsAPI* | [**sendClientLog**](docs/LogsAPI.md#sendclientlog) | **POST** /api/v1/server/logs/client | Send client log
*MyHistoryAPI* | [**apiV1UsersMeHistoryVideosGet**](docs/MyHistoryAPI.md#apiv1usersmehistoryvideosget) | **GET** /api/v1/users/me/history/videos | List watched videos history
*MyHistoryAPI* | [**apiV1UsersMeHistoryVideosRemovePost**](docs/MyHistoryAPI.md#apiv1usersmehistoryvideosremovepost) | **POST** /api/v1/users/me/history/videos/remove | Clear video history
*MyHistoryAPI* | [**apiV1UsersMeHistoryVideosVideoIdDelete**](docs/MyHistoryAPI.md#apiv1usersmehistoryvideosvideoiddelete) | **DELETE** /api/v1/users/me/history/videos/{videoId} | Delete history element
*MyNotificationsAPI* | [**apiV1UsersMeNotificationSettingsPut**](docs/MyNotificationsAPI.md#apiv1usersmenotificationsettingsput) | **PUT** /api/v1/users/me/notification-settings | Update my notification settings
*MyNotificationsAPI* | [**apiV1UsersMeNotificationsGet**](docs/MyNotificationsAPI.md#apiv1usersmenotificationsget) | **GET** /api/v1/users/me/notifications | List my notifications
*MyNotificationsAPI* | [**apiV1UsersMeNotificationsReadAllPost**](docs/MyNotificationsAPI.md#apiv1usersmenotificationsreadallpost) | **POST** /api/v1/users/me/notifications/read-all | Mark all my notification as read
*MyNotificationsAPI* | [**apiV1UsersMeNotificationsReadPost**](docs/MyNotificationsAPI.md#apiv1usersmenotificationsreadpost) | **POST** /api/v1/users/me/notifications/read | Mark notifications as read by their id
*MySubscriptionsAPI* | [**apiV1UsersMeSubscriptionsExistGet**](docs/MySubscriptionsAPI.md#apiv1usersmesubscriptionsexistget) | **GET** /api/v1/users/me/subscriptions/exist | Get if subscriptions exist for my user
*MySubscriptionsAPI* | [**apiV1UsersMeSubscriptionsGet**](docs/MySubscriptionsAPI.md#apiv1usersmesubscriptionsget) | **GET** /api/v1/users/me/subscriptions | Get my user subscriptions
*MySubscriptionsAPI* | [**apiV1UsersMeSubscriptionsPost**](docs/MySubscriptionsAPI.md#apiv1usersmesubscriptionspost) | **POST** /api/v1/users/me/subscriptions | Add subscription to my user
*MySubscriptionsAPI* | [**apiV1UsersMeSubscriptionsSubscriptionHandleDelete**](docs/MySubscriptionsAPI.md#apiv1usersmesubscriptionssubscriptionhandledelete) | **DELETE** /api/v1/users/me/subscriptions/{subscriptionHandle} | Delete subscription of my user
*MySubscriptionsAPI* | [**apiV1UsersMeSubscriptionsSubscriptionHandleGet**](docs/MySubscriptionsAPI.md#apiv1usersmesubscriptionssubscriptionhandleget) | **GET** /api/v1/users/me/subscriptions/{subscriptionHandle} | Get subscription of my user
*MySubscriptionsAPI* | [**apiV1UsersMeSubscriptionsVideosGet**](docs/MySubscriptionsAPI.md#apiv1usersmesubscriptionsvideosget) | **GET** /api/v1/users/me/subscriptions/videos | List videos of subscriptions of my user
*MyUserAPI* | [**apiV1UsersMeAvatarDelete**](docs/MyUserAPI.md#apiv1usersmeavatardelete) | **DELETE** /api/v1/users/me/avatar | Delete my avatar
*MyUserAPI* | [**apiV1UsersMeAvatarPickPost**](docs/MyUserAPI.md#apiv1usersmeavatarpickpost) | **POST** /api/v1/users/me/avatar/pick | Update my user avatar
*MyUserAPI* | [**apiV1UsersMeVideoQuotaUsedGet**](docs/MyUserAPI.md#apiv1usersmevideoquotausedget) | **GET** /api/v1/users/me/video-quota-used | Get my user used quota
*MyUserAPI* | [**apiV1UsersMeVideosGet**](docs/MyUserAPI.md#apiv1usersmevideosget) | **GET** /api/v1/users/me/videos | Get videos of my user
*MyUserAPI* | [**apiV1UsersMeVideosImportsGet**](docs/MyUserAPI.md#apiv1usersmevideosimportsget) | **GET** /api/v1/users/me/videos/imports | Get video imports of my user
*MyUserAPI* | [**apiV1UsersMeVideosVideoIdRatingGet**](docs/MyUserAPI.md#apiv1usersmevideosvideoidratingget) | **GET** /api/v1/users/me/videos/{videoId}/rating | Get rate of my user for a video
*MyUserAPI* | [**getMyAbuses**](docs/MyUserAPI.md#getmyabuses) | **GET** /api/v1/users/me/abuses | List my abuses
*MyUserAPI* | [**getUserInfo**](docs/MyUserAPI.md#getuserinfo) | **GET** /api/v1/users/me | Get my user information
*MyUserAPI* | [**putUserInfo**](docs/MyUserAPI.md#putuserinfo) | **PUT** /api/v1/users/me | Update my user information
*PluginsAPI* | [**addPlugin**](docs/PluginsAPI.md#addplugin) | **POST** /api/v1/plugins/install | Install a plugin
*PluginsAPI* | [**apiV1PluginsNpmNamePublicSettingsGet**](docs/PluginsAPI.md#apiv1pluginsnpmnamepublicsettingsget) | **GET** /api/v1/plugins/{npmName}/public-settings | Get a plugin&#39;s public settings
*PluginsAPI* | [**apiV1PluginsNpmNameRegisteredSettingsGet**](docs/PluginsAPI.md#apiv1pluginsnpmnameregisteredsettingsget) | **GET** /api/v1/plugins/{npmName}/registered-settings | Get a plugin&#39;s registered settings
*PluginsAPI* | [**apiV1PluginsNpmNameSettingsPut**](docs/PluginsAPI.md#apiv1pluginsnpmnamesettingsput) | **PUT** /api/v1/plugins/{npmName}/settings | Set a plugin&#39;s settings
*PluginsAPI* | [**getAvailablePlugins**](docs/PluginsAPI.md#getavailableplugins) | **GET** /api/v1/plugins/available | List available plugins
*PluginsAPI* | [**getPlugin**](docs/PluginsAPI.md#getplugin) | **GET** /api/v1/plugins/{npmName} | Get a plugin
*PluginsAPI* | [**getPlugins**](docs/PluginsAPI.md#getplugins) | **GET** /api/v1/plugins | List plugins
*PluginsAPI* | [**uninstallPlugin**](docs/PluginsAPI.md#uninstallplugin) | **POST** /api/v1/plugins/uninstall | Uninstall a plugin
*PluginsAPI* | [**updatePlugin**](docs/PluginsAPI.md#updateplugin) | **POST** /api/v1/plugins/update | Update a plugin
*RegisterAPI* | [**acceptRegistration**](docs/RegisterAPI.md#acceptregistration) | **POST** /api/v1/users/registrations/{registrationId}/accept | Accept registration
*RegisterAPI* | [**deleteRegistration**](docs/RegisterAPI.md#deleteregistration) | **DELETE** /api/v1/users/registrations/{registrationId} | Delete registration
*RegisterAPI* | [**listRegistrations**](docs/RegisterAPI.md#listregistrations) | **GET** /api/v1/users/registrations | List registrations
*RegisterAPI* | [**registerUser**](docs/RegisterAPI.md#registeruser) | **POST** /api/v1/users/register | Register a user
*RegisterAPI* | [**rejectRegistration**](docs/RegisterAPI.md#rejectregistration) | **POST** /api/v1/users/registrations/{registrationId}/reject | Reject registration
*RegisterAPI* | [**requestRegistration**](docs/RegisterAPI.md#requestregistration) | **POST** /api/v1/users/registrations/request | Request registration
*RegisterAPI* | [**resendEmailToVerifyRegistration**](docs/RegisterAPI.md#resendemailtoverifyregistration) | **POST** /api/v1/users/registrations/ask-send-verify-email | Resend verification link to registration email
*RegisterAPI* | [**resendEmailToVerifyUser**](docs/RegisterAPI.md#resendemailtoverifyuser) | **POST** /api/v1/users/ask-send-verify-email | Resend user verification link
*RegisterAPI* | [**verifyRegistrationEmail**](docs/RegisterAPI.md#verifyregistrationemail) | **POST** /api/v1/users/registrations/{registrationId}/verify-email | Verify a registration email
*RegisterAPI* | [**verifyUser**](docs/RegisterAPI.md#verifyuser) | **POST** /api/v1/users/{id}/verify-email | Verify a user
*RunnerJobsAPI* | [**apiV1RunnersJobsGet**](docs/RunnerJobsAPI.md#apiv1runnersjobsget) | **GET** /api/v1/runners/jobs | List jobs
*RunnerJobsAPI* | [**apiV1RunnersJobsJobUUIDAbortPost**](docs/RunnerJobsAPI.md#apiv1runnersjobsjobuuidabortpost) | **POST** /api/v1/runners/jobs/{jobUUID}/abort | Abort job
*RunnerJobsAPI* | [**apiV1RunnersJobsJobUUIDAcceptPost**](docs/RunnerJobsAPI.md#apiv1runnersjobsjobuuidacceptpost) | **POST** /api/v1/runners/jobs/{jobUUID}/accept | Accept job
*RunnerJobsAPI* | [**apiV1RunnersJobsJobUUIDCancelGet**](docs/RunnerJobsAPI.md#apiv1runnersjobsjobuuidcancelget) | **GET** /api/v1/runners/jobs/{jobUUID}/cancel | Cancel a job
*RunnerJobsAPI* | [**apiV1RunnersJobsJobUUIDDelete**](docs/RunnerJobsAPI.md#apiv1runnersjobsjobuuiddelete) | **DELETE** /api/v1/runners/jobs/{jobUUID} | Delete a job
*RunnerJobsAPI* | [**apiV1RunnersJobsJobUUIDErrorPost**](docs/RunnerJobsAPI.md#apiv1runnersjobsjobuuiderrorpost) | **POST** /api/v1/runners/jobs/{jobUUID}/error | Post job error
*RunnerJobsAPI* | [**apiV1RunnersJobsJobUUIDSuccessPost**](docs/RunnerJobsAPI.md#apiv1runnersjobsjobuuidsuccesspost) | **POST** /api/v1/runners/jobs/{jobUUID}/success | Post job success
*RunnerJobsAPI* | [**apiV1RunnersJobsJobUUIDUpdatePost**](docs/RunnerJobsAPI.md#apiv1runnersjobsjobuuidupdatepost) | **POST** /api/v1/runners/jobs/{jobUUID}/update | Update job
*RunnerJobsAPI* | [**apiV1RunnersJobsRequestPost**](docs/RunnerJobsAPI.md#apiv1runnersjobsrequestpost) | **POST** /api/v1/runners/jobs/request | Request a new job
*RunnerRegistrationTokenAPI* | [**apiV1RunnersRegistrationTokensGeneratePost**](docs/RunnerRegistrationTokenAPI.md#apiv1runnersregistrationtokensgeneratepost) | **POST** /api/v1/runners/registration-tokens/generate | Generate registration token
*RunnerRegistrationTokenAPI* | [**apiV1RunnersRegistrationTokensGet**](docs/RunnerRegistrationTokenAPI.md#apiv1runnersregistrationtokensget) | **GET** /api/v1/runners/registration-tokens | List registration tokens
*RunnerRegistrationTokenAPI* | [**apiV1RunnersRegistrationTokensRegistrationTokenIdDelete**](docs/RunnerRegistrationTokenAPI.md#apiv1runnersregistrationtokensregistrationtokeniddelete) | **DELETE** /api/v1/runners/registration-tokens/{registrationTokenId} | Remove registration token
*RunnersAPI* | [**apiV1RunnersGet**](docs/RunnersAPI.md#apiv1runnersget) | **GET** /api/v1/runners | List runners
*RunnersAPI* | [**apiV1RunnersRegisterPost**](docs/RunnersAPI.md#apiv1runnersregisterpost) | **POST** /api/v1/runners/register | Register a new runner
*RunnersAPI* | [**apiV1RunnersRunnerIdDelete**](docs/RunnersAPI.md#apiv1runnersrunneriddelete) | **DELETE** /api/v1/runners/{runnerId} | Delete a runner
*RunnersAPI* | [**apiV1RunnersUnregisterPost**](docs/RunnersAPI.md#apiv1runnersunregisterpost) | **POST** /api/v1/runners/unregister | Unregister a runner
*SearchAPI* | [**searchChannels**](docs/SearchAPI.md#searchchannels) | **GET** /api/v1/search/video-channels | Search channels
*SearchAPI* | [**searchPlaylists**](docs/SearchAPI.md#searchplaylists) | **GET** /api/v1/search/video-playlists | Search playlists
*SearchAPI* | [**searchVideos**](docs/SearchAPI.md#searchvideos) | **GET** /api/v1/search/videos | Search videos
*ServerBlocksAPI* | [**apiV1BlocklistStatusGet**](docs/ServerBlocksAPI.md#apiv1blockliststatusget) | **GET** /api/v1/blocklist/status | Get block status of accounts/hosts
*ServerBlocksAPI* | [**apiV1ServerBlocklistServersGet**](docs/ServerBlocksAPI.md#apiv1serverblocklistserversget) | **GET** /api/v1/server/blocklist/servers | List server blocks
*ServerBlocksAPI* | [**apiV1ServerBlocklistServersHostDelete**](docs/ServerBlocksAPI.md#apiv1serverblocklistservershostdelete) | **DELETE** /api/v1/server/blocklist/servers/{host} | Unblock a server by its domain
*ServerBlocksAPI* | [**apiV1ServerBlocklistServersPost**](docs/ServerBlocksAPI.md#apiv1serverblocklistserverspost) | **POST** /api/v1/server/blocklist/servers | Block a server
*SessionAPI* | [**getOAuthClient**](docs/SessionAPI.md#getoauthclient) | **GET** /api/v1/oauth-clients/local | Login prerequisite
*SessionAPI* | [**getOAuthToken**](docs/SessionAPI.md#getoauthtoken) | **POST** /api/v1/users/token | Login
*SessionAPI* | [**revokeOAuthToken**](docs/SessionAPI.md#revokeoauthtoken) | **POST** /api/v1/users/revoke-token | Logout
*StaticVideoFilesAPI* | [**staticStreamingPlaylistsHlsFilenameGet**](docs/StaticVideoFilesAPI.md#staticstreamingplaylistshlsfilenameget) | **GET** /static/streaming-playlists/hls/{filename} | Get public HLS video file
*StaticVideoFilesAPI* | [**staticStreamingPlaylistsHlsPrivateFilenameGet**](docs/StaticVideoFilesAPI.md#staticstreamingplaylistshlsprivatefilenameget) | **GET** /static/streaming-playlists/hls/private/{filename} | Get private HLS video file
*StaticVideoFilesAPI* | [**staticWebVideosFilenameGet**](docs/StaticVideoFilesAPI.md#staticwebvideosfilenameget) | **GET** /static/web-videos/{filename} | Get public Web Video file
*StaticVideoFilesAPI* | [**staticWebVideosPrivateFilenameGet**](docs/StaticVideoFilesAPI.md#staticwebvideosprivatefilenameget) | **GET** /static/web-videos/private/{filename} | Get private Web Video file
*StatsAPI* | [**apiV1MetricsPlaybackPost**](docs/StatsAPI.md#apiv1metricsplaybackpost) | **POST** /api/v1/metrics/playback | Create playback metrics
*StatsAPI* | [**getInstanceStats**](docs/StatsAPI.md#getinstancestats) | **GET** /api/v1/server/stats | Get instance stats
*UsersAPI* | [**addUser**](docs/UsersAPI.md#adduser) | **POST** /api/v1/users | Create a user
*UsersAPI* | [**confirmTwoFactorRequest**](docs/UsersAPI.md#confirmtwofactorrequest) | **POST** /api/v1/users/{id}/two-factor/confirm-request | Confirm two factor auth
*UsersAPI* | [**delUser**](docs/UsersAPI.md#deluser) | **DELETE** /api/v1/users/{id} | Delete a user
*UsersAPI* | [**disableTwoFactor**](docs/UsersAPI.md#disabletwofactor) | **POST** /api/v1/users/{id}/two-factor/disable | Disable two factor auth
*UsersAPI* | [**getUser**](docs/UsersAPI.md#getuser) | **GET** /api/v1/users/{id} | Get a user
*UsersAPI* | [**getUsers**](docs/UsersAPI.md#getusers) | **GET** /api/v1/users | List users
*UsersAPI* | [**putUser**](docs/UsersAPI.md#putuser) | **PUT** /api/v1/users/{id} | Update a user
*UsersAPI* | [**requestTwoFactor**](docs/UsersAPI.md#requesttwofactor) | **POST** /api/v1/users/{id}/two-factor/request | Request two factor auth
*UsersAPI* | [**resendEmailToVerifyUser**](docs/UsersAPI.md#resendemailtoverifyuser) | **POST** /api/v1/users/ask-send-verify-email | Resend user verification link
*UsersAPI* | [**verifyUser**](docs/UsersAPI.md#verifyuser) | **POST** /api/v1/users/{id}/verify-email | Verify a user
*VideoAPI* | [**addLive**](docs/VideoAPI.md#addlive) | **POST** /api/v1/videos/live | Create a live
*VideoAPI* | [**addView**](docs/VideoAPI.md#addview) | **POST** /api/v1/videos/{id}/views | Notify user is watching a video
*VideoAPI* | [**apiV1VideosIdStudioEditPost**](docs/VideoAPI.md#apiv1videosidstudioeditpost) | **POST** /api/v1/videos/{id}/studio/edit | Create a studio task
*VideoAPI* | [**apiV1VideosIdWatchingPut**](docs/VideoAPI.md#apiv1videosidwatchingput) | **PUT** /api/v1/videos/{id}/watching | Set watching progress of a video
*VideoAPI* | [**delVideo**](docs/VideoAPI.md#delvideo) | **DELETE** /api/v1/videos/{id} | Delete a video
*VideoAPI* | [**getAccountVideos**](docs/VideoAPI.md#getaccountvideos) | **GET** /api/v1/accounts/{name}/videos | List videos of an account
*VideoAPI* | [**getCategories**](docs/VideoAPI.md#getcategories) | **GET** /api/v1/videos/categories | List available video categories
*VideoAPI* | [**getLanguages**](docs/VideoAPI.md#getlanguages) | **GET** /api/v1/videos/languages | List available video languages
*VideoAPI* | [**getLicences**](docs/VideoAPI.md#getlicences) | **GET** /api/v1/videos/licences | List available video licences
*VideoAPI* | [**getLiveId**](docs/VideoAPI.md#getliveid) | **GET** /api/v1/videos/live/{id} | Get information about a live
*VideoAPI* | [**getVideo**](docs/VideoAPI.md#getvideo) | **GET** /api/v1/videos/{id} | Get a video
*VideoAPI* | [**getVideoChannelVideos**](docs/VideoAPI.md#getvideochannelvideos) | **GET** /api/v1/video-channels/{channelHandle}/videos | List videos of a video channel
*VideoAPI* | [**getVideoDesc**](docs/VideoAPI.md#getvideodesc) | **GET** /api/v1/videos/{id}/description | Get complete video description
*VideoAPI* | [**getVideoPrivacyPolicies**](docs/VideoAPI.md#getvideoprivacypolicies) | **GET** /api/v1/videos/privacies | List available video privacy policies
*VideoAPI* | [**getVideoSource**](docs/VideoAPI.md#getvideosource) | **GET** /api/v1/videos/{id}/source | Get video source file metadata
*VideoAPI* | [**getVideos**](docs/VideoAPI.md#getvideos) | **GET** /api/v1/videos | List videos
*VideoAPI* | [**listVideoStoryboards**](docs/VideoAPI.md#listvideostoryboards) | **GET** /api/v1/videos/{id}/storyboards | List storyboards of a video
*VideoAPI* | [**putVideo**](docs/VideoAPI.md#putvideo) | **PUT** /api/v1/videos/{id} | Update a video
*VideoAPI* | [**replaceVideoSourceResumable**](docs/VideoAPI.md#replacevideosourceresumable) | **PUT** /api/v1/videos/{id}/source/replace-resumable | Send chunk for the resumable replacement of a video
*VideoAPI* | [**replaceVideoSourceResumableCancel**](docs/VideoAPI.md#replacevideosourceresumablecancel) | **DELETE** /api/v1/videos/{id}/source/replace-resumable | Cancel the resumable replacement of a video
*VideoAPI* | [**replaceVideoSourceResumableInit**](docs/VideoAPI.md#replacevideosourceresumableinit) | **POST** /api/v1/videos/{id}/source/replace-resumable | Initialize the resumable replacement of a video
*VideoAPI* | [**requestVideoToken**](docs/VideoAPI.md#requestvideotoken) | **POST** /api/v1/videos/{id}/token | Request video token
*VideoAPI* | [**updateLiveId**](docs/VideoAPI.md#updateliveid) | **PUT** /api/v1/videos/live/{id} | Update information about a live
*VideoAPI* | [**uploadLegacy**](docs/VideoAPI.md#uploadlegacy) | **POST** /api/v1/videos/upload | Upload a video
*VideoAPI* | [**uploadResumable**](docs/VideoAPI.md#uploadresumable) | **PUT** /api/v1/videos/upload-resumable | Send chunk for the resumable upload of a video
*VideoAPI* | [**uploadResumableCancel**](docs/VideoAPI.md#uploadresumablecancel) | **DELETE** /api/v1/videos/upload-resumable | Cancel the resumable upload of a video, deleting any data uploaded so far
*VideoAPI* | [**uploadResumableInit**](docs/VideoAPI.md#uploadresumableinit) | **POST** /api/v1/videos/upload-resumable | Initialize the resumable upload of a video
*VideoBlocksAPI* | [**addVideoBlock**](docs/VideoBlocksAPI.md#addvideoblock) | **POST** /api/v1/videos/{id}/blacklist | Block a video
*VideoBlocksAPI* | [**delVideoBlock**](docs/VideoBlocksAPI.md#delvideoblock) | **DELETE** /api/v1/videos/{id}/blacklist | Unblock a video by its id
*VideoBlocksAPI* | [**getVideoBlocks**](docs/VideoBlocksAPI.md#getvideoblocks) | **GET** /api/v1/videos/blacklist | List video blocks
*VideoCaptionsAPI* | [**addVideoCaption**](docs/VideoCaptionsAPI.md#addvideocaption) | **PUT** /api/v1/videos/{id}/captions/{captionLanguage} | Add or replace a video caption
*VideoCaptionsAPI* | [**delVideoCaption**](docs/VideoCaptionsAPI.md#delvideocaption) | **DELETE** /api/v1/videos/{id}/captions/{captionLanguage} | Delete a video caption
*VideoCaptionsAPI* | [**getVideoCaptions**](docs/VideoCaptionsAPI.md#getvideocaptions) | **GET** /api/v1/videos/{id}/captions | List captions of a video
*VideoChannelsAPI* | [**addVideoChannel**](docs/VideoChannelsAPI.md#addvideochannel) | **POST** /api/v1/video-channels | Create a video channel
*VideoChannelsAPI* | [**apiV1AccountsNameVideoChannelSyncsGet**](docs/VideoChannelsAPI.md#apiv1accountsnamevideochannelsyncsget) | **GET** /api/v1/accounts/{name}/video-channel-syncs | List the synchronizations of video channels of an account
*VideoChannelsAPI* | [**apiV1AccountsNameVideoChannelsGet**](docs/VideoChannelsAPI.md#apiv1accountsnamevideochannelsget) | **GET** /api/v1/accounts/{name}/video-channels | List video channels of an account
*VideoChannelsAPI* | [**apiV1VideoChannelsChannelHandleAvatarDelete**](docs/VideoChannelsAPI.md#apiv1videochannelschannelhandleavatardelete) | **DELETE** /api/v1/video-channels/{channelHandle}/avatar | Delete channel avatar
*VideoChannelsAPI* | [**apiV1VideoChannelsChannelHandleAvatarPickPost**](docs/VideoChannelsAPI.md#apiv1videochannelschannelhandleavatarpickpost) | **POST** /api/v1/video-channels/{channelHandle}/avatar/pick | Update channel avatar
*VideoChannelsAPI* | [**apiV1VideoChannelsChannelHandleBannerDelete**](docs/VideoChannelsAPI.md#apiv1videochannelschannelhandlebannerdelete) | **DELETE** /api/v1/video-channels/{channelHandle}/banner | Delete channel banner
*VideoChannelsAPI* | [**apiV1VideoChannelsChannelHandleBannerPickPost**](docs/VideoChannelsAPI.md#apiv1videochannelschannelhandlebannerpickpost) | **POST** /api/v1/video-channels/{channelHandle}/banner/pick | Update channel banner
*VideoChannelsAPI* | [**apiV1VideoChannelsChannelHandleImportVideosPost**](docs/VideoChannelsAPI.md#apiv1videochannelschannelhandleimportvideospost) | **POST** /api/v1/video-channels/{channelHandle}/import-videos | Import videos in channel
*VideoChannelsAPI* | [**apiV1VideoChannelsChannelHandleVideoPlaylistsGet**](docs/VideoChannelsAPI.md#apiv1videochannelschannelhandlevideoplaylistsget) | **GET** /api/v1/video-channels/{channelHandle}/video-playlists | List playlists of a channel
*VideoChannelsAPI* | [**delVideoChannel**](docs/VideoChannelsAPI.md#delvideochannel) | **DELETE** /api/v1/video-channels/{channelHandle} | Delete a video channel
*VideoChannelsAPI* | [**getVideoChannel**](docs/VideoChannelsAPI.md#getvideochannel) | **GET** /api/v1/video-channels/{channelHandle} | Get a video channel
*VideoChannelsAPI* | [**getVideoChannelFollowers**](docs/VideoChannelsAPI.md#getvideochannelfollowers) | **GET** /api/v1/video-channels/{channelHandle}/followers | List followers of a video channel
*VideoChannelsAPI* | [**getVideoChannelVideos**](docs/VideoChannelsAPI.md#getvideochannelvideos) | **GET** /api/v1/video-channels/{channelHandle}/videos | List videos of a video channel
*VideoChannelsAPI* | [**getVideoChannels**](docs/VideoChannelsAPI.md#getvideochannels) | **GET** /api/v1/video-channels | List video channels
*VideoChannelsAPI* | [**putVideoChannel**](docs/VideoChannelsAPI.md#putvideochannel) | **PUT** /api/v1/video-channels/{channelHandle} | Update a video channel
*VideoChaptersAPI* | [**getVideoChapters**](docs/VideoChaptersAPI.md#getvideochapters) | **GET** /api/v1/videos/{id}/chapters | Get chapters of a video
*VideoChaptersAPI* | [**replaceVideoChapters**](docs/VideoChaptersAPI.md#replacevideochapters) | **PUT** /api/v1/videos/{id}/chapters | Replace video chapters
*VideoCommentsAPI* | [**apiV1VideosIdCommentThreadsGet**](docs/VideoCommentsAPI.md#apiv1videosidcommentthreadsget) | **GET** /api/v1/videos/{id}/comment-threads | List threads of a video
*VideoCommentsAPI* | [**apiV1VideosIdCommentThreadsPost**](docs/VideoCommentsAPI.md#apiv1videosidcommentthreadspost) | **POST** /api/v1/videos/{id}/comment-threads | Create a thread
*VideoCommentsAPI* | [**apiV1VideosIdCommentThreadsThreadIdGet**](docs/VideoCommentsAPI.md#apiv1videosidcommentthreadsthreadidget) | **GET** /api/v1/videos/{id}/comment-threads/{threadId} | Get a thread
*VideoCommentsAPI* | [**apiV1VideosIdCommentsCommentIdDelete**](docs/VideoCommentsAPI.md#apiv1videosidcommentscommentiddelete) | **DELETE** /api/v1/videos/{id}/comments/{commentId} | Delete a comment or a reply
*VideoCommentsAPI* | [**apiV1VideosIdCommentsCommentIdPost**](docs/VideoCommentsAPI.md#apiv1videosidcommentscommentidpost) | **POST** /api/v1/videos/{id}/comments/{commentId} | Reply to a thread of a video
*VideoFeedsAPI* | [**getSyndicatedComments**](docs/VideoFeedsAPI.md#getsyndicatedcomments) | **GET** /feeds/video-comments.{format} | Comments on videos feeds
*VideoFeedsAPI* | [**getSyndicatedSubscriptionVideos**](docs/VideoFeedsAPI.md#getsyndicatedsubscriptionvideos) | **GET** /feeds/subscriptions.{format} | Videos of subscriptions feeds
*VideoFeedsAPI* | [**getSyndicatedVideos**](docs/VideoFeedsAPI.md#getsyndicatedvideos) | **GET** /feeds/videos.{format} | Common videos feeds
*VideoFeedsAPI* | [**getVideosPodcastFeed**](docs/VideoFeedsAPI.md#getvideospodcastfeed) | **GET** /feeds/podcast/videos.xml | Videos podcast feed
*VideoFilesAPI* | [**delVideoHLS**](docs/VideoFilesAPI.md#delvideohls) | **DELETE** /api/v1/videos/{id}/hls | Delete video HLS files
*VideoFilesAPI* | [**delVideoWebVideos**](docs/VideoFilesAPI.md#delvideowebvideos) | **DELETE** /api/v1/videos/{id}/web-videos | Delete video Web Video files
*VideoImportsAPI* | [**apiV1VideosImportsIdCancelPost**](docs/VideoImportsAPI.md#apiv1videosimportsidcancelpost) | **POST** /api/v1/videos/imports/{id}/cancel | Cancel video import
*VideoImportsAPI* | [**apiV1VideosImportsIdDelete**](docs/VideoImportsAPI.md#apiv1videosimportsiddelete) | **DELETE** /api/v1/videos/imports/{id} | Delete video import
*VideoImportsAPI* | [**importVideo**](docs/VideoImportsAPI.md#importvideo) | **POST** /api/v1/videos/imports | Import a video
*VideoMirroringAPI* | [**delMirroredVideo**](docs/VideoMirroringAPI.md#delmirroredvideo) | **DELETE** /api/v1/server/redundancy/videos/{redundancyId} | Delete a mirror done on a video
*VideoMirroringAPI* | [**getMirroredVideos**](docs/VideoMirroringAPI.md#getmirroredvideos) | **GET** /api/v1/server/redundancy/videos | List videos being mirrored
*VideoMirroringAPI* | [**putMirroredVideo**](docs/VideoMirroringAPI.md#putmirroredvideo) | **POST** /api/v1/server/redundancy/videos | Mirror a video
*VideoOwnershipChangeAPI* | [**apiV1VideosIdGiveOwnershipPost**](docs/VideoOwnershipChangeAPI.md#apiv1videosidgiveownershippost) | **POST** /api/v1/videos/{id}/give-ownership | Request ownership change
*VideoOwnershipChangeAPI* | [**apiV1VideosOwnershipGet**](docs/VideoOwnershipChangeAPI.md#apiv1videosownershipget) | **GET** /api/v1/videos/ownership | List video ownership changes
*VideoOwnershipChangeAPI* | [**apiV1VideosOwnershipIdAcceptPost**](docs/VideoOwnershipChangeAPI.md#apiv1videosownershipidacceptpost) | **POST** /api/v1/videos/ownership/{id}/accept | Accept ownership change request
*VideoOwnershipChangeAPI* | [**apiV1VideosOwnershipIdRefusePost**](docs/VideoOwnershipChangeAPI.md#apiv1videosownershipidrefusepost) | **POST** /api/v1/videos/ownership/{id}/refuse | Refuse ownership change request
*VideoPasswordsAPI* | [**apiV1VideosIdPasswordsGet**](docs/VideoPasswordsAPI.md#apiv1videosidpasswordsget) | **GET** /api/v1/videos/{id}/passwords | List video passwords
*VideoPasswordsAPI* | [**apiV1VideosIdPasswordsPut**](docs/VideoPasswordsAPI.md#apiv1videosidpasswordsput) | **PUT** /api/v1/videos/{id}/passwords | Update video passwords
*VideoPasswordsAPI* | [**apiV1VideosIdPasswordsVideoPasswordIdDelete**](docs/VideoPasswordsAPI.md#apiv1videosidpasswordsvideopasswordiddelete) | **DELETE** /api/v1/videos/{id}/passwords/{videoPasswordId} | Delete a video password
*VideoPlaylistsAPI* | [**addPlaylist**](docs/VideoPlaylistsAPI.md#addplaylist) | **POST** /api/v1/video-playlists | Create a video playlist
*VideoPlaylistsAPI* | [**addVideoPlaylistVideo**](docs/VideoPlaylistsAPI.md#addvideoplaylistvideo) | **POST** /api/v1/video-playlists/{playlistId}/videos | Add a video in a playlist
*VideoPlaylistsAPI* | [**apiV1AccountsNameVideoPlaylistsGet**](docs/VideoPlaylistsAPI.md#apiv1accountsnamevideoplaylistsget) | **GET** /api/v1/accounts/{name}/video-playlists | List playlists of an account
*VideoPlaylistsAPI* | [**apiV1UsersMeVideoPlaylistsVideosExistGet**](docs/VideoPlaylistsAPI.md#apiv1usersmevideoplaylistsvideosexistget) | **GET** /api/v1/users/me/video-playlists/videos-exist | Check video exists in my playlists
*VideoPlaylistsAPI* | [**apiV1VideoChannelsChannelHandleVideoPlaylistsGet**](docs/VideoPlaylistsAPI.md#apiv1videochannelschannelhandlevideoplaylistsget) | **GET** /api/v1/video-channels/{channelHandle}/video-playlists | List playlists of a channel
*VideoPlaylistsAPI* | [**apiV1VideoPlaylistsPlaylistIdDelete**](docs/VideoPlaylistsAPI.md#apiv1videoplaylistsplaylistiddelete) | **DELETE** /api/v1/video-playlists/{playlistId} | Delete a video playlist
*VideoPlaylistsAPI* | [**apiV1VideoPlaylistsPlaylistIdGet**](docs/VideoPlaylistsAPI.md#apiv1videoplaylistsplaylistidget) | **GET** /api/v1/video-playlists/{playlistId} | Get a video playlist
*VideoPlaylistsAPI* | [**apiV1VideoPlaylistsPlaylistIdPut**](docs/VideoPlaylistsAPI.md#apiv1videoplaylistsplaylistidput) | **PUT** /api/v1/video-playlists/{playlistId} | Update a video playlist
*VideoPlaylistsAPI* | [**delVideoPlaylistVideo**](docs/VideoPlaylistsAPI.md#delvideoplaylistvideo) | **DELETE** /api/v1/video-playlists/{playlistId}/videos/{playlistElementId} | Delete an element from a playlist
*VideoPlaylistsAPI* | [**getPlaylistPrivacyPolicies**](docs/VideoPlaylistsAPI.md#getplaylistprivacypolicies) | **GET** /api/v1/video-playlists/privacies | List available playlist privacy policies
*VideoPlaylistsAPI* | [**getPlaylists**](docs/VideoPlaylistsAPI.md#getplaylists) | **GET** /api/v1/video-playlists | List video playlists
*VideoPlaylistsAPI* | [**getVideoPlaylistVideos**](docs/VideoPlaylistsAPI.md#getvideoplaylistvideos) | **GET** /api/v1/video-playlists/{playlistId}/videos | List videos of a playlist
*VideoPlaylistsAPI* | [**putVideoPlaylistVideo**](docs/VideoPlaylistsAPI.md#putvideoplaylistvideo) | **PUT** /api/v1/video-playlists/{playlistId}/videos/{playlistElementId} | Update a playlist element
*VideoPlaylistsAPI* | [**reorderVideoPlaylist**](docs/VideoPlaylistsAPI.md#reordervideoplaylist) | **POST** /api/v1/video-playlists/{playlistId}/videos/reorder | Reorder a playlist
*VideoRatesAPI* | [**apiV1UsersMeVideosVideoIdRatingGet**](docs/VideoRatesAPI.md#apiv1usersmevideosvideoidratingget) | **GET** /api/v1/users/me/videos/{videoId}/rating | Get rate of my user for a video
*VideoRatesAPI* | [**apiV1VideosIdRatePut**](docs/VideoRatesAPI.md#apiv1videosidrateput) | **PUT** /api/v1/videos/{id}/rate | Like/dislike a video
*VideoStatsAPI* | [**apiV1VideosIdStatsOverallGet**](docs/VideoStatsAPI.md#apiv1videosidstatsoverallget) | **GET** /api/v1/videos/{id}/stats/overall | Get overall stats of a video
*VideoStatsAPI* | [**apiV1VideosIdStatsRetentionGet**](docs/VideoStatsAPI.md#apiv1videosidstatsretentionget) | **GET** /api/v1/videos/{id}/stats/retention | Get retention stats of a video
*VideoStatsAPI* | [**apiV1VideosIdStatsTimeseriesMetricGet**](docs/VideoStatsAPI.md#apiv1videosidstatstimeseriesmetricget) | **GET** /api/v1/videos/{id}/stats/timeseries/{metric} | Get timeserie stats of a video
*VideoTranscodingAPI* | [**apiV1VideosIdStudioEditPost**](docs/VideoTranscodingAPI.md#apiv1videosidstudioeditpost) | **POST** /api/v1/videos/{id}/studio/edit | Create a studio task
*VideoTranscodingAPI* | [**createVideoTranscoding**](docs/VideoTranscodingAPI.md#createvideotranscoding) | **POST** /api/v1/videos/{id}/transcoding | Create a transcoding job
*VideoUploadAPI* | [**importVideo**](docs/VideoUploadAPI.md#importvideo) | **POST** /api/v1/videos/imports | Import a video
*VideoUploadAPI* | [**replaceVideoSourceResumable**](docs/VideoUploadAPI.md#replacevideosourceresumable) | **PUT** /api/v1/videos/{id}/source/replace-resumable | Send chunk for the resumable replacement of a video
*VideoUploadAPI* | [**replaceVideoSourceResumableCancel**](docs/VideoUploadAPI.md#replacevideosourceresumablecancel) | **DELETE** /api/v1/videos/{id}/source/replace-resumable | Cancel the resumable replacement of a video
*VideoUploadAPI* | [**replaceVideoSourceResumableInit**](docs/VideoUploadAPI.md#replacevideosourceresumableinit) | **POST** /api/v1/videos/{id}/source/replace-resumable | Initialize the resumable replacement of a video
*VideoUploadAPI* | [**uploadLegacy**](docs/VideoUploadAPI.md#uploadlegacy) | **POST** /api/v1/videos/upload | Upload a video
*VideoUploadAPI* | [**uploadResumable**](docs/VideoUploadAPI.md#uploadresumable) | **PUT** /api/v1/videos/upload-resumable | Send chunk for the resumable upload of a video
*VideoUploadAPI* | [**uploadResumableCancel**](docs/VideoUploadAPI.md#uploadresumablecancel) | **DELETE** /api/v1/videos/upload-resumable | Cancel the resumable upload of a video, deleting any data uploaded so far
*VideoUploadAPI* | [**uploadResumableInit**](docs/VideoUploadAPI.md#uploadresumableinit) | **POST** /api/v1/videos/upload-resumable | Initialize the resumable upload of a video
*VideosAPI* | [**addVideoPlaylistVideo**](docs/VideosAPI.md#addvideoplaylistvideo) | **POST** /api/v1/video-playlists/{playlistId}/videos | Add a video in a playlist
*VideosAPI* | [**apiV1UsersMeSubscriptionsVideosGet**](docs/VideosAPI.md#apiv1usersmesubscriptionsvideosget) | **GET** /api/v1/users/me/subscriptions/videos | List videos of subscriptions of my user
*VideosAPI* | [**apiV1UsersMeVideosGet**](docs/VideosAPI.md#apiv1usersmevideosget) | **GET** /api/v1/users/me/videos | Get videos of my user
*VideosAPI* | [**apiV1UsersMeVideosImportsGet**](docs/VideosAPI.md#apiv1usersmevideosimportsget) | **GET** /api/v1/users/me/videos/imports | Get video imports of my user
*VideosAPI* | [**getVideoPlaylistVideos**](docs/VideosAPI.md#getvideoplaylistvideos) | **GET** /api/v1/video-playlists/{playlistId}/videos | List videos of a playlist


## Documentation For Models

 - [Abuse](docs/Abuse.md)
 - [AbuseMessage](docs/AbuseMessage.md)
 - [AbuseStateConstant](docs/AbuseStateConstant.md)
 - [AbuseStateSet](docs/AbuseStateSet.md)
 - [Account](docs/Account.md)
 - [AccountSummary](docs/AccountSummary.md)
 - [Actor](docs/Actor.md)
 - [ActorImage](docs/ActorImage.md)
 - [ActorInfo](docs/ActorInfo.md)
 - [AddIntroOptions](docs/AddIntroOptions.md)
 - [AddPlaylist200Response](docs/AddPlaylist200Response.md)
 - [AddPlaylist200ResponseVideoPlaylist](docs/AddPlaylist200ResponseVideoPlaylist.md)
 - [AddPluginRequest](docs/AddPluginRequest.md)
 - [AddPluginRequestOneOf](docs/AddPluginRequestOneOf.md)
 - [AddPluginRequestOneOf1](docs/AddPluginRequestOneOf1.md)
 - [AddUser](docs/AddUser.md)
 - [AddUserResponse](docs/AddUserResponse.md)
 - [AddUserResponseUser](docs/AddUserResponseUser.md)
 - [AddVideoChannel200Response](docs/AddVideoChannel200Response.md)
 - [AddVideoChannelSync200Response](docs/AddVideoChannelSync200Response.md)
 - [AddVideoPlaylistVideo200Response](docs/AddVideoPlaylistVideo200Response.md)
 - [AddVideoPlaylistVideo200ResponseVideoPlaylistElement](docs/AddVideoPlaylistVideo200ResponseVideoPlaylistElement.md)
 - [AddVideoPlaylistVideoRequest](docs/AddVideoPlaylistVideoRequest.md)
 - [AddVideoPlaylistVideoRequestVideoId](docs/AddVideoPlaylistVideoRequestVideoId.md)
 - [ApiV1AbusesAbuseIdMessagesGet200Response](docs/ApiV1AbusesAbuseIdMessagesGet200Response.md)
 - [ApiV1AbusesAbuseIdMessagesPostRequest](docs/ApiV1AbusesAbuseIdMessagesPostRequest.md)
 - [ApiV1AbusesAbuseIdPutRequest](docs/ApiV1AbusesAbuseIdPutRequest.md)
 - [ApiV1AbusesPost200Response](docs/ApiV1AbusesPost200Response.md)
 - [ApiV1AbusesPost200ResponseAbuse](docs/ApiV1AbusesPost200ResponseAbuse.md)
 - [ApiV1AbusesPostRequest](docs/ApiV1AbusesPostRequest.md)
 - [ApiV1AbusesPostRequestAccount](docs/ApiV1AbusesPostRequestAccount.md)
 - [ApiV1AbusesPostRequestComment](docs/ApiV1AbusesPostRequestComment.md)
 - [ApiV1AbusesPostRequestVideo](docs/ApiV1AbusesPostRequestVideo.md)
 - [ApiV1CustomPagesHomepageInstancePutRequest](docs/ApiV1CustomPagesHomepageInstancePutRequest.md)
 - [ApiV1PluginsNpmNameSettingsPutRequest](docs/ApiV1PluginsNpmNameSettingsPutRequest.md)
 - [ApiV1RunnersGet200Response](docs/ApiV1RunnersGet200Response.md)
 - [ApiV1RunnersJobsGet200Response](docs/ApiV1RunnersJobsGet200Response.md)
 - [ApiV1RunnersJobsJobUUIDAbortPostRequest](docs/ApiV1RunnersJobsJobUUIDAbortPostRequest.md)
 - [ApiV1RunnersJobsJobUUIDAcceptPost200Response](docs/ApiV1RunnersJobsJobUUIDAcceptPost200Response.md)
 - [ApiV1RunnersJobsJobUUIDAcceptPost200ResponseJob](docs/ApiV1RunnersJobsJobUUIDAcceptPost200ResponseJob.md)
 - [ApiV1RunnersJobsJobUUIDErrorPostRequest](docs/ApiV1RunnersJobsJobUUIDErrorPostRequest.md)
 - [ApiV1RunnersJobsJobUUIDSuccessPostRequest](docs/ApiV1RunnersJobsJobUUIDSuccessPostRequest.md)
 - [ApiV1RunnersJobsJobUUIDSuccessPostRequestPayload](docs/ApiV1RunnersJobsJobUUIDSuccessPostRequestPayload.md)
 - [ApiV1RunnersJobsJobUUIDUpdatePostRequest](docs/ApiV1RunnersJobsJobUUIDUpdatePostRequest.md)
 - [ApiV1RunnersJobsJobUUIDUpdatePostRequestPayload](docs/ApiV1RunnersJobsJobUUIDUpdatePostRequestPayload.md)
 - [ApiV1RunnersJobsRequestPost200Response](docs/ApiV1RunnersJobsRequestPost200Response.md)
 - [ApiV1RunnersJobsRequestPost200ResponseAvailableJobsInner](docs/ApiV1RunnersJobsRequestPost200ResponseAvailableJobsInner.md)
 - [ApiV1RunnersRegisterPost200Response](docs/ApiV1RunnersRegisterPost200Response.md)
 - [ApiV1RunnersRegisterPostRequest](docs/ApiV1RunnersRegisterPostRequest.md)
 - [ApiV1RunnersRegistrationTokensGet200Response](docs/ApiV1RunnersRegistrationTokensGet200Response.md)
 - [ApiV1RunnersUnregisterPostRequest](docs/ApiV1RunnersUnregisterPostRequest.md)
 - [ApiV1ServerBlocklistAccountsPostRequest](docs/ApiV1ServerBlocklistAccountsPostRequest.md)
 - [ApiV1ServerBlocklistServersPostRequest](docs/ApiV1ServerBlocklistServersPostRequest.md)
 - [ApiV1ServerFollowingPostRequest](docs/ApiV1ServerFollowingPostRequest.md)
 - [ApiV1ServerRedundancyHostPutRequest](docs/ApiV1ServerRedundancyHostPutRequest.md)
 - [ApiV1UsersMeAvatarPickPost200Response](docs/ApiV1UsersMeAvatarPickPost200Response.md)
 - [ApiV1UsersMeNotificationSettingsPutRequest](docs/ApiV1UsersMeNotificationSettingsPutRequest.md)
 - [ApiV1UsersMeNotificationsReadPostRequest](docs/ApiV1UsersMeNotificationsReadPostRequest.md)
 - [ApiV1UsersMeSubscriptionsPostRequest](docs/ApiV1UsersMeSubscriptionsPostRequest.md)
 - [ApiV1UsersMeVideoPlaylistsVideosExistGet200Response](docs/ApiV1UsersMeVideoPlaylistsVideosExistGet200Response.md)
 - [ApiV1UsersMeVideoPlaylistsVideosExistGet200ResponseVideoIdInner](docs/ApiV1UsersMeVideoPlaylistsVideosExistGet200ResponseVideoIdInner.md)
 - [ApiV1UsersMeVideoQuotaUsedGet200Response](docs/ApiV1UsersMeVideoQuotaUsedGet200Response.md)
 - [ApiV1VideoChannelsChannelHandleBannerPickPost200Response](docs/ApiV1VideoChannelsChannelHandleBannerPickPost200Response.md)
 - [ApiV1VideoChannelsChannelHandleVideoPlaylistsGet200Response](docs/ApiV1VideoChannelsChannelHandleVideoPlaylistsGet200Response.md)
 - [ApiV1VideosIdCommentThreadsPostRequest](docs/ApiV1VideosIdCommentThreadsPostRequest.md)
 - [ApiV1VideosIdPasswordsPutRequest](docs/ApiV1VideosIdPasswordsPutRequest.md)
 - [ApiV1VideosIdRatePutRequest](docs/ApiV1VideosIdRatePutRequest.md)
 - [ApiV1VideosLiveIdSessionsGet200Response](docs/ApiV1VideosLiveIdSessionsGet200Response.md)
 - [ApiV1VideosOwnershipIdAcceptPostIdParameter](docs/ApiV1VideosOwnershipIdAcceptPostIdParameter.md)
 - [BlockStatus](docs/BlockStatus.md)
 - [BlockStatusAccountsValue](docs/BlockStatusAccountsValue.md)
 - [BlockStatusHostsValue](docs/BlockStatusHostsValue.md)
 - [CommentThreadPostResponse](docs/CommentThreadPostResponse.md)
 - [CommentThreadResponse](docs/CommentThreadResponse.md)
 - [ConfirmTwoFactorRequestRequest](docs/ConfirmTwoFactorRequestRequest.md)
 - [CreateVideoTranscodingRequest](docs/CreateVideoTranscodingRequest.md)
 - [CustomHomepage](docs/CustomHomepage.md)
 - [CutOptions](docs/CutOptions.md)
 - [FileRedundancyInformation](docs/FileRedundancyInformation.md)
 - [Follow](docs/Follow.md)
 - [GetAccountFollowers200Response](docs/GetAccountFollowers200Response.md)
 - [GetAccountVideosCategoryOneOfParameter](docs/GetAccountVideosCategoryOneOfParameter.md)
 - [GetAccountVideosLanguageOneOfParameter](docs/GetAccountVideosLanguageOneOfParameter.md)
 - [GetAccountVideosLicenceOneOfParameter](docs/GetAccountVideosLicenceOneOfParameter.md)
 - [GetAccountVideosTagsAllOfParameter](docs/GetAccountVideosTagsAllOfParameter.md)
 - [GetAccountVideosTagsOneOfParameter](docs/GetAccountVideosTagsOneOfParameter.md)
 - [GetAccounts200Response](docs/GetAccounts200Response.md)
 - [GetJobs200Response](docs/GetJobs200Response.md)
 - [GetMeVideoRating](docs/GetMeVideoRating.md)
 - [GetMyAbuses200Response](docs/GetMyAbuses200Response.md)
 - [GetOAuthToken200Response](docs/GetOAuthToken200Response.md)
 - [GetUser200Response](docs/GetUser200Response.md)
 - [GetVideoBlocks200Response](docs/GetVideoBlocks200Response.md)
 - [GetVideoCaptions200Response](docs/GetVideoCaptions200Response.md)
 - [ImportVideosInChannelCreate](docs/ImportVideosInChannelCreate.md)
 - [Job](docs/Job.md)
 - [ListRegistrations200Response](docs/ListRegistrations200Response.md)
 - [ListVideoStoryboards200Response](docs/ListVideoStoryboards200Response.md)
 - [LiveVideoLatencyMode](docs/LiveVideoLatencyMode.md)
 - [LiveVideoReplaySettings](docs/LiveVideoReplaySettings.md)
 - [LiveVideoResponse](docs/LiveVideoResponse.md)
 - [LiveVideoSessionResponse](docs/LiveVideoSessionResponse.md)
 - [LiveVideoSessionResponseReplayVideo](docs/LiveVideoSessionResponseReplayVideo.md)
 - [LiveVideoUpdate](docs/LiveVideoUpdate.md)
 - [MRSSGroupContent](docs/MRSSGroupContent.md)
 - [MRSSPeerLink](docs/MRSSPeerLink.md)
 - [NSFWPolicy](docs/NSFWPolicy.md)
 - [Notification](docs/Notification.md)
 - [NotificationActorFollow](docs/NotificationActorFollow.md)
 - [NotificationActorFollowFollowing](docs/NotificationActorFollowFollowing.md)
 - [NotificationComment](docs/NotificationComment.md)
 - [NotificationListResponse](docs/NotificationListResponse.md)
 - [NotificationVideo](docs/NotificationVideo.md)
 - [NotificationVideoAbuse](docs/NotificationVideoAbuse.md)
 - [NotificationVideoImport](docs/NotificationVideoImport.md)
 - [OAuthClient](docs/OAuthClient.md)
 - [PlaybackMetricCreate](docs/PlaybackMetricCreate.md)
 - [PlaylistElement](docs/PlaylistElement.md)
 - [Plugin](docs/Plugin.md)
 - [PluginResponse](docs/PluginResponse.md)
 - [PutMirroredVideoRequest](docs/PutMirroredVideoRequest.md)
 - [PutVideoPlaylistVideoRequest](docs/PutVideoPlaylistVideoRequest.md)
 - [RegisterUser](docs/RegisterUser.md)
 - [RegisterUserChannel](docs/RegisterUserChannel.md)
 - [ReorderVideoPlaylistRequest](docs/ReorderVideoPlaylistRequest.md)
 - [ReplaceVideoChaptersRequest](docs/ReplaceVideoChaptersRequest.md)
 - [ReplaceVideoChaptersRequestChaptersInner](docs/ReplaceVideoChaptersRequestChaptersInner.md)
 - [RequestTwoFactorRequest](docs/RequestTwoFactorRequest.md)
 - [RequestTwoFactorResponse](docs/RequestTwoFactorResponse.md)
 - [RequestTwoFactorResponseOtpRequest](docs/RequestTwoFactorResponseOtpRequest.md)
 - [ResendEmailToVerifyRegistrationRequest](docs/ResendEmailToVerifyRegistrationRequest.md)
 - [ResendEmailToVerifyUserRequest](docs/ResendEmailToVerifyUserRequest.md)
 - [Runner](docs/Runner.md)
 - [RunnerJob](docs/RunnerJob.md)
 - [RunnerJobAdmin](docs/RunnerJobAdmin.md)
 - [RunnerJobParent](docs/RunnerJobParent.md)
 - [RunnerJobPayload](docs/RunnerJobPayload.md)
 - [RunnerJobRunner](docs/RunnerJobRunner.md)
 - [RunnerJobState](docs/RunnerJobState.md)
 - [RunnerJobStateConstant](docs/RunnerJobStateConstant.md)
 - [RunnerJobType](docs/RunnerJobType.md)
 - [RunnerRegistrationToken](docs/RunnerRegistrationToken.md)
 - [SendClientLog](docs/SendClientLog.md)
 - [ServerConfig](docs/ServerConfig.md)
 - [ServerConfigAbout](docs/ServerConfigAbout.md)
 - [ServerConfigAboutInstance](docs/ServerConfigAboutInstance.md)
 - [ServerConfigAutoBlacklist](docs/ServerConfigAutoBlacklist.md)
 - [ServerConfigAutoBlacklistVideos](docs/ServerConfigAutoBlacklistVideos.md)
 - [ServerConfigAvatar](docs/ServerConfigAvatar.md)
 - [ServerConfigAvatarFile](docs/ServerConfigAvatarFile.md)
 - [ServerConfigAvatarFileSize](docs/ServerConfigAvatarFileSize.md)
 - [ServerConfigCustom](docs/ServerConfigCustom.md)
 - [ServerConfigCustomAdmin](docs/ServerConfigCustomAdmin.md)
 - [ServerConfigCustomCache](docs/ServerConfigCustomCache.md)
 - [ServerConfigCustomCachePreviews](docs/ServerConfigCustomCachePreviews.md)
 - [ServerConfigCustomFollowers](docs/ServerConfigCustomFollowers.md)
 - [ServerConfigCustomFollowersInstance](docs/ServerConfigCustomFollowersInstance.md)
 - [ServerConfigCustomImport](docs/ServerConfigCustomImport.md)
 - [ServerConfigCustomInstance](docs/ServerConfigCustomInstance.md)
 - [ServerConfigCustomServices](docs/ServerConfigCustomServices.md)
 - [ServerConfigCustomServicesTwitter](docs/ServerConfigCustomServicesTwitter.md)
 - [ServerConfigCustomSignup](docs/ServerConfigCustomSignup.md)
 - [ServerConfigCustomTheme](docs/ServerConfigCustomTheme.md)
 - [ServerConfigCustomTranscoding](docs/ServerConfigCustomTranscoding.md)
 - [ServerConfigCustomTranscodingHls](docs/ServerConfigCustomTranscodingHls.md)
 - [ServerConfigCustomTranscodingResolutions](docs/ServerConfigCustomTranscodingResolutions.md)
 - [ServerConfigCustomTranscodingWebVideos](docs/ServerConfigCustomTranscodingWebVideos.md)
 - [ServerConfigCustomUser](docs/ServerConfigCustomUser.md)
 - [ServerConfigEmail](docs/ServerConfigEmail.md)
 - [ServerConfigFollowings](docs/ServerConfigFollowings.md)
 - [ServerConfigFollowingsInstance](docs/ServerConfigFollowingsInstance.md)
 - [ServerConfigFollowingsInstanceAutoFollowIndex](docs/ServerConfigFollowingsInstanceAutoFollowIndex.md)
 - [ServerConfigImport](docs/ServerConfigImport.md)
 - [ServerConfigImportVideos](docs/ServerConfigImportVideos.md)
 - [ServerConfigInstance](docs/ServerConfigInstance.md)
 - [ServerConfigInstanceCustomizations](docs/ServerConfigInstanceCustomizations.md)
 - [ServerConfigOpenTelemetry](docs/ServerConfigOpenTelemetry.md)
 - [ServerConfigOpenTelemetryMetrics](docs/ServerConfigOpenTelemetryMetrics.md)
 - [ServerConfigPlugin](docs/ServerConfigPlugin.md)
 - [ServerConfigSearch](docs/ServerConfigSearch.md)
 - [ServerConfigSearchRemoteUri](docs/ServerConfigSearchRemoteUri.md)
 - [ServerConfigSignup](docs/ServerConfigSignup.md)
 - [ServerConfigTranscoding](docs/ServerConfigTranscoding.md)
 - [ServerConfigTrending](docs/ServerConfigTrending.md)
 - [ServerConfigTrendingVideos](docs/ServerConfigTrendingVideos.md)
 - [ServerConfigUser](docs/ServerConfigUser.md)
 - [ServerConfigVideo](docs/ServerConfigVideo.md)
 - [ServerConfigVideoCaption](docs/ServerConfigVideoCaption.md)
 - [ServerConfigVideoCaptionFile](docs/ServerConfigVideoCaptionFile.md)
 - [ServerConfigVideoFile](docs/ServerConfigVideoFile.md)
 - [ServerConfigVideoImage](docs/ServerConfigVideoImage.md)
 - [ServerConfigViews](docs/ServerConfigViews.md)
 - [ServerConfigViewsViews](docs/ServerConfigViewsViews.md)
 - [ServerConfigViewsViewsWatchingInterval](docs/ServerConfigViewsViewsWatchingInterval.md)
 - [ServerStats](docs/ServerStats.md)
 - [ServerStatsVideosRedundancyInner](docs/ServerStatsVideosRedundancyInner.md)
 - [Storyboard](docs/Storyboard.md)
 - [UninstallPluginRequest](docs/UninstallPluginRequest.md)
 - [UpdateMe](docs/UpdateMe.md)
 - [UpdateUser](docs/UpdateUser.md)
 - [User](docs/User.md)
 - [UserAdminFlags](docs/UserAdminFlags.md)
 - [UserRegistration](docs/UserRegistration.md)
 - [UserRegistrationAcceptOrReject](docs/UserRegistrationAcceptOrReject.md)
 - [UserRegistrationRequest](docs/UserRegistrationRequest.md)
 - [UserRegistrationState](docs/UserRegistrationState.md)
 - [UserRegistrationUser](docs/UserRegistrationUser.md)
 - [UserRole](docs/UserRole.md)
 - [UserViewingVideo](docs/UserViewingVideo.md)
 - [UserWithStats](docs/UserWithStats.md)
 - [VODAudioMergeTranscoding](docs/VODAudioMergeTranscoding.md)
 - [VODAudioMergeTranscoding1](docs/VODAudioMergeTranscoding1.md)
 - [VODAudioMergeTranscoding1Input](docs/VODAudioMergeTranscoding1Input.md)
 - [VODHLSTranscoding](docs/VODHLSTranscoding.md)
 - [VODHLSTranscoding1](docs/VODHLSTranscoding1.md)
 - [VODWebVideoTranscoding](docs/VODWebVideoTranscoding.md)
 - [VODWebVideoTranscoding1](docs/VODWebVideoTranscoding1.md)
 - [VODWebVideoTranscoding1Input](docs/VODWebVideoTranscoding1Input.md)
 - [VODWebVideoTranscoding1Output](docs/VODWebVideoTranscoding1Output.md)
 - [VerifyRegistrationEmailRequest](docs/VerifyRegistrationEmailRequest.md)
 - [VerifyUserRequest](docs/VerifyUserRequest.md)
 - [Video](docs/Video.md)
 - [VideoBlacklist](docs/VideoBlacklist.md)
 - [VideoCaption](docs/VideoCaption.md)
 - [VideoChannel](docs/VideoChannel.md)
 - [VideoChannelAllOfOwnerAccount](docs/VideoChannelAllOfOwnerAccount.md)
 - [VideoChannelCreate](docs/VideoChannelCreate.md)
 - [VideoChannelEdit](docs/VideoChannelEdit.md)
 - [VideoChannelList](docs/VideoChannelList.md)
 - [VideoChannelListDataInner](docs/VideoChannelListDataInner.md)
 - [VideoChannelSummary](docs/VideoChannelSummary.md)
 - [VideoChannelSync](docs/VideoChannelSync.md)
 - [VideoChannelSyncCreate](docs/VideoChannelSyncCreate.md)
 - [VideoChannelSyncList](docs/VideoChannelSyncList.md)
 - [VideoChannelSyncState](docs/VideoChannelSyncState.md)
 - [VideoChannelUpdate](docs/VideoChannelUpdate.md)
 - [VideoChapters](docs/VideoChapters.md)
 - [VideoComment](docs/VideoComment.md)
 - [VideoCommentThreadTree](docs/VideoCommentThreadTree.md)
 - [VideoCommentsForXMLInner](docs/VideoCommentsForXMLInner.md)
 - [VideoConstantNumberCategory](docs/VideoConstantNumberCategory.md)
 - [VideoConstantNumberLicence](docs/VideoConstantNumberLicence.md)
 - [VideoConstantStringLanguage](docs/VideoConstantStringLanguage.md)
 - [VideoDetails](docs/VideoDetails.md)
 - [VideoFile](docs/VideoFile.md)
 - [VideoImport](docs/VideoImport.md)
 - [VideoImportStateConstant](docs/VideoImportStateConstant.md)
 - [VideoImportsList](docs/VideoImportsList.md)
 - [VideoInfo](docs/VideoInfo.md)
 - [VideoListResponse](docs/VideoListResponse.md)
 - [VideoPassword](docs/VideoPassword.md)
 - [VideoPasswordList](docs/VideoPasswordList.md)
 - [VideoPlaylist](docs/VideoPlaylist.md)
 - [VideoPlaylistPrivacyConstant](docs/VideoPlaylistPrivacyConstant.md)
 - [VideoPlaylistPrivacySet](docs/VideoPlaylistPrivacySet.md)
 - [VideoPlaylistTypeConstant](docs/VideoPlaylistTypeConstant.md)
 - [VideoPlaylistTypeSet](docs/VideoPlaylistTypeSet.md)
 - [VideoPrivacyConstant](docs/VideoPrivacyConstant.md)
 - [VideoPrivacySet](docs/VideoPrivacySet.md)
 - [VideoRating](docs/VideoRating.md)
 - [VideoRedundancy](docs/VideoRedundancy.md)
 - [VideoRedundancyRedundancies](docs/VideoRedundancyRedundancies.md)
 - [VideoReplaceSourceRequestResumable](docs/VideoReplaceSourceRequestResumable.md)
 - [VideoResolutionConstant](docs/VideoResolutionConstant.md)
 - [VideoScheduledUpdate](docs/VideoScheduledUpdate.md)
 - [VideoSource](docs/VideoSource.md)
 - [VideoStateConstant](docs/VideoStateConstant.md)
 - [VideoStatsOverall](docs/VideoStatsOverall.md)
 - [VideoStatsOverallCountriesInner](docs/VideoStatsOverallCountriesInner.md)
 - [VideoStatsRetention](docs/VideoStatsRetention.md)
 - [VideoStatsRetentionDataInner](docs/VideoStatsRetentionDataInner.md)
 - [VideoStatsTimeserie](docs/VideoStatsTimeserie.md)
 - [VideoStatsTimeserieDataInner](docs/VideoStatsTimeserieDataInner.md)
 - [VideoStreamingPlaylists](docs/VideoStreamingPlaylists.md)
 - [VideoStreamingPlaylistsHLS](docs/VideoStreamingPlaylistsHLS.md)
 - [VideoStreamingPlaylistsHLSRedundanciesInner](docs/VideoStreamingPlaylistsHLSRedundanciesInner.md)
 - [VideoTokenResponse](docs/VideoTokenResponse.md)
 - [VideoTokenResponseFiles](docs/VideoTokenResponseFiles.md)
 - [VideoUploadRequestCommon](docs/VideoUploadRequestCommon.md)
 - [VideoUploadRequestResumable](docs/VideoUploadRequestResumable.md)
 - [VideoUploadResponse](docs/VideoUploadResponse.md)
 - [VideoUploadResponseVideo](docs/VideoUploadResponseVideo.md)
 - [VideoUserHistory](docs/VideoUserHistory.md)
 - [VideosForXMLInner](docs/VideosForXMLInner.md)
 - [VideosForXMLInnerEnclosure](docs/VideosForXMLInnerEnclosure.md)
 - [VideosForXMLInnerMediaCommunity](docs/VideosForXMLInnerMediaCommunity.md)
 - [VideosForXMLInnerMediaCommunityMediaStatistics](docs/VideosForXMLInnerMediaCommunityMediaStatistics.md)
 - [VideosForXMLInnerMediaEmbed](docs/VideosForXMLInnerMediaEmbed.md)
 - [VideosForXMLInnerMediaGroupInner](docs/VideosForXMLInnerMediaGroupInner.md)
 - [VideosForXMLInnerMediaPlayer](docs/VideosForXMLInnerMediaPlayer.md)
 - [VideosForXMLInnerMediaThumbnail](docs/VideosForXMLInnerMediaThumbnail.md)


<a id="documentation-for-authorization"></a>
## Documentation For Authorization


Authentication schemes defined for the API:
<a id="OAuth2"></a>
### OAuth2

- **Type**: OAuth
- **Flow**: password
- **Authorization URL**: 
- **Scopes**: 
 - **admin**: Admin scope
 - **moderator**: Moderator scope
 - **user**: User scope


## Author



