.class public final Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

.field public bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

.field public bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

.field public bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

.field public bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

.field public bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

.field public bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

.field public bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

.field public bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

.field public bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

.field public creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

.field public creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

.field public kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

.field public login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

.field public login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

.field public skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

.field public story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

.field public story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bitmoji_kit_create_avatar_tap(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final bitmoji_kit_permission_update(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final bitmoji_kit_preview_icon_change(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final bitmoji_kit_search(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final bitmoji_kit_share(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final bitmoji_kit_snapchat_link_success(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final bitmoji_kit_snapchat_link_tap(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final bitmoji_kit_sticker_picker_close(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final bitmoji_kit_sticker_picker_mount(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final bitmoji_kit_sticker_picker_open(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;
    .locals 23

    move-object/from16 v0, p0

    .line 2
    new-instance v21, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    move-object/from16 v1, v21

    iget-object v2, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    iget-object v3, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    iget-object v4, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    iget-object v5, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    iget-object v6, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    iget-object v7, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    iget-object v8, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    iget-object v9, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    iget-object v10, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    iget-object v11, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    iget-object v12, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    iget-object v13, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    iget-object v14, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    iget-object v15, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    move-object/from16 v19, v1

    invoke-super/range {p0 .. p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v20

    move-object/from16 v1, v22

    invoke-direct/range {v1 .. v20}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;Lokio/ByteString;)V

    return-object v21
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    move-result-object v0

    return-object v0
.end method

.method public final creative_kit_share_complete(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final creative_kit_share_start(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final kit_heartbeat(Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final login_kit_auth_complete(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final login_kit_auth_start(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final skate_event(Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    return-object p0
.end method

.method public final story_kit_snap_playback(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method

.method public final story_kit_snap_playback_player_session(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 3
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 4
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 5
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 6
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 7
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 8
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 9
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 10
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 11
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 12
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 13
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 14
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 15
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 16
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 17
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 18
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-object p0
.end method
