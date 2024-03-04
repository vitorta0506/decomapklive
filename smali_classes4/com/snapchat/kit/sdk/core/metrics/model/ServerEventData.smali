.class public final Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;
.super Lcom/squareup/wire/Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$ProtoAdapter_ServerEventData;,
        Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field public final bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitCreateAvatarTap#ADAPTER"
        tag = 0x24
    .end annotation
.end field

.field public final bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitPermissionUpdate#ADAPTER"
        tag = 0x27
    .end annotation
.end field

.field public final bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitPreviewIconChange#ADAPTER"
        tag = 0x4d
    .end annotation
.end field

.field public final bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSearch#ADAPTER"
        tag = 0x21
    .end annotation
.end field

.field public final bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitShare#ADAPTER"
        tag = 0x20
    .end annotation
.end field

.field public final bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSnapchatLinkSuccess#ADAPTER"
        tag = 0x23
    .end annotation
.end field

.field public final bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitSnapchatLinkTap#ADAPTER"
        tag = 0x22
    .end annotation
.end field

.field public final bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerClose#ADAPTER"
        tag = 0x1f
    .end annotation
.end field

.field public final bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerMount#ADAPTER"
        tag = 0x49
    .end annotation
.end field

.field public final bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.BitmojiKitStickerPickerOpen#ADAPTER"
        tag = 0x1e
    .end annotation
.end field

.field public final creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.CreativeKitShareComplete#ADAPTER"
        tag = 0x1d
    .end annotation
.end field

.field public final creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.CreativeKitShareStart#ADAPTER"
        tag = 0x1c
    .end annotation
.end field

.field public final kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.KitHeartbeat#ADAPTER"
        tag = 0x4c
    .end annotation
.end field

.field public final login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.LoginKitAuthComplete#ADAPTER"
        tag = 0x26
    .end annotation
.end field

.field public final login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.LoginKitAuthStart#ADAPTER"
        tag = 0x25
    .end annotation
.end field

.field public final skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.SkateEvent#ADAPTER"
        tag = 0xe8
    .end annotation
.end field

.field public final story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.StoryKitSnapPlayback#ADAPTER"
        tag = 0x78
    .end annotation
.end field

.field public final story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.snapchat.kit.sdk.core.metrics.model.StoryKitSnapPlaybackPlayerSession#ADAPTER"
        tag = 0x79
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$ProtoAdapter_ServerEventData;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$ProtoAdapter_ServerEventData;-><init>()V

    sput-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    .line 1
    sget-object v19, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct/range {v0 .. v19}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;-><init>(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;Lokio/ByteString;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v1, p16

    move-object/from16 v2, p17

    move-object/from16 v3, p18

    .line 2
    sget-object v4, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    move-object/from16 v3, p19

    invoke-direct {v0, v4, v3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v6, v3, v4

    const/16 v16, 0x2

    aput-object v7, v3, v16

    const/16 v16, 0x3

    aput-object v8, v3, v16

    const/16 v16, 0x4

    aput-object v9, v3, v16

    const/16 v16, 0x5

    aput-object v10, v3, v16

    const/16 v16, 0x6

    aput-object v11, v3, v16

    const/16 v16, 0x7

    aput-object v12, v3, v16

    const/16 v16, 0x8

    aput-object v13, v3, v16

    const/16 v16, 0x9

    aput-object v14, v3, v16

    const/16 v16, 0xa

    aput-object v15, v3, v16

    const/16 v16, 0xb

    aput-object v1, v3, v16

    const/16 v16, 0xc

    aput-object v2, v3, v16

    const/16 v16, 0xd

    aput-object p18, v3, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    .line 3
    invoke-static {v1, v2, v15, v14, v3}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v3

    if-gt v3, v4, :cond_0

    .line 4
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 5
    iput-object v2, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 6
    iput-object v15, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 7
    iput-object v14, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 8
    iput-object v5, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 9
    iput-object v6, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 10
    iput-object v7, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 11
    iput-object v8, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 12
    iput-object v9, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 13
    iput-object v10, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 14
    iput-object v11, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 15
    iput-object v12, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 16
    iput-object v13, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    move-object/from16 v1, p14

    .line 17
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    move-object/from16 v1, p15

    .line 18
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    move-object/from16 v1, p16

    .line 19
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    move-object/from16 v1, p17

    .line 20
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    move-object/from16 v1, p18

    .line 21
    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    return-void

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "at most one of creative_kit_share_start, creative_kit_share_complete, bitmoji_kit_sticker_picker_open, bitmoji_kit_sticker_picker_close, bitmoji_kit_share, bitmoji_kit_search, bitmoji_kit_snapchat_link_tap, bitmoji_kit_snapchat_link_success, bitmoji_kit_create_avatar_tap, login_kit_auth_start, login_kit_auth_complete, bitmoji_kit_permission_update, bitmoji_kit_sticker_picker_mount, kit_heartbeat, bitmoji_kit_preview_icon_change, story_kit_snap_playback, story_kit_snap_playback_player_session, skate_event may be non-null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 4
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 5
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 6
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 7
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 8
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 9
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 10
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 11
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 12
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 13
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 14
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 15
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 16
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 17
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 18
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 19
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 20
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    .line 21
    invoke-static {v1, p1}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_12

    .line 2
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 10
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 11
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 12
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 13
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 14
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 15
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 16
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    const/4 v1, 0x0

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 17
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 18
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    const/4 v1, 0x0

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 19
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 20
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->hashCode()I

    move-result v2

    :cond_11
    add-int/2addr v0, v2

    .line 21
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_12
    return v0
.end method

.method public final newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 10
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 11
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 12
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 13
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 14
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 15
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 16
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 17
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 18
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 19
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 20
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    iput-object v1, v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    .line 21
    invoke-virtual {p0}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/Message$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public final bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    if-eqz v1, :cond_0

    const-string v1, ", creative_kit_share_start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    if-eqz v1, :cond_1

    const-string v1, ", creative_kit_share_complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    if-eqz v1, :cond_2

    const-string v1, ", bitmoji_kit_sticker_picker_open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    if-eqz v1, :cond_3

    const-string v1, ", bitmoji_kit_sticker_picker_close="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    if-eqz v1, :cond_4

    const-string v1, ", bitmoji_kit_share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    if-eqz v1, :cond_5

    const-string v1, ", bitmoji_kit_search="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    :cond_5
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    if-eqz v1, :cond_6

    const-string v1, ", bitmoji_kit_snapchat_link_tap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    :cond_6
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    if-eqz v1, :cond_7

    const-string v1, ", bitmoji_kit_snapchat_link_success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    :cond_7
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    if-eqz v1, :cond_8

    const-string v1, ", bitmoji_kit_create_avatar_tap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    if-eqz v1, :cond_9

    const-string v1, ", login_kit_auth_start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    :cond_9
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    if-eqz v1, :cond_a

    const-string v1, ", login_kit_auth_complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    :cond_a
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    if-eqz v1, :cond_b

    const-string v1, ", bitmoji_kit_permission_update="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    :cond_b
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    if-eqz v1, :cond_c

    const-string v1, ", bitmoji_kit_sticker_picker_mount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    :cond_c
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    if-eqz v1, :cond_d

    const-string v1, ", kit_heartbeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    :cond_d
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    if-eqz v1, :cond_e

    const-string v1, ", bitmoji_kit_preview_icon_change="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    :cond_e
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    if-eqz v1, :cond_f

    const-string v1, ", story_kit_snap_playback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    :cond_f
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    if-eqz v1, :cond_10

    const-string v1, ", story_kit_snap_playback_player_session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    :cond_10
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    if-eqz v1, :cond_11

    const-string v1, ", skate_event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_11
    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "ServerEventData{"

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
