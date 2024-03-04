.class final Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$ProtoAdapter_ServerEventData;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_ServerEventData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final decode(Lcom/squareup/wire/ProtoReader;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    const/16 v4, 0x49

    if-eq v3, v4, :cond_5

    const/16 v4, 0xe8

    if-eq v3, v4, :cond_4

    const/16 v4, 0x4c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x78

    if-eq v3, v4, :cond_1

    const/16 v4, 0x79

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 5
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-virtual {v0, v3, v4, v5}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 8
    :pswitch_0
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto :goto_0

    .line 9
    :pswitch_1
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto :goto_0

    .line 10
    :pswitch_2
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start(Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto :goto_0

    .line 11
    :pswitch_3
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto :goto_0

    .line 12
    :pswitch_4
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto :goto_0

    .line 13
    :pswitch_5
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto :goto_0

    .line 14
    :pswitch_6
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 15
    :pswitch_7
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 16
    :pswitch_8
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 17
    :pswitch_9
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 18
    :pswitch_a
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 19
    :pswitch_b
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start(Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 20
    :cond_0
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 21
    :cond_1
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 22
    :cond_2
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 23
    :cond_3
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat(Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 24
    :cond_4
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event(Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 25
    :cond_5
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount(Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    goto/16 :goto_0

    .line 26
    :cond_6
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 27
    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$ProtoAdapter_ServerEventData;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    move-result-object p1

    return-object p1
.end method

.method public final encode(Lcom/squareup/wire/ProtoWriter;Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    const/16 v2, 0x1c

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    const/16 v2, 0x1d

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    const/16 v2, 0x1e

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    const/16 v2, 0x1f

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    const/16 v2, 0x20

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    const/16 v2, 0x21

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    const/16 v2, 0x22

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 9
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    const/16 v2, 0x23

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    const/16 v2, 0x24

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    const/16 v2, 0x25

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 12
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    const/16 v2, 0x26

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 13
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    const/16 v2, 0x27

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 14
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    const/16 v2, 0x49

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 15
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    const/16 v2, 0x4c

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 16
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    const/16 v2, 0x4d

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    const/16 v2, 0x78

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    const/16 v2, 0x79

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    const/16 v2, 0xe8

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 20
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public final bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$ProtoAdapter_ServerEventData;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)V

    return-void
.end method

.method public final encodedSize(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)I
    .locals 4

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    const/16 v3, 0x1d

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    const/16 v3, 0x1e

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    const/16 v3, 0x1f

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    const/16 v3, 0x20

    .line 6
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    const/16 v3, 0x21

    .line 7
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    const/16 v3, 0x22

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    const/16 v3, 0x23

    .line 9
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    const/16 v3, 0x24

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    const/16 v3, 0x25

    .line 11
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    const/16 v3, 0x26

    .line 12
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    const/16 v3, 0x27

    .line 13
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    const/16 v3, 0x49

    .line 14
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    const/16 v3, 0x4c

    .line 15
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    const/16 v3, 0x4d

    .line 16
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    const/16 v3, 0x78

    .line 17
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    const/16 v3, 0x79

    .line 18
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    const/16 v3, 0xe8

    .line 19
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$ProtoAdapter_ServerEventData;->encodedSize(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)I

    move-result p1

    return p1
.end method

.method public final redact(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_start:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareStart;

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->creative_kit_share_complete:Lcom/snapchat/kit/sdk/core/metrics/model/CreativeKitShareComplete;

    .line 5
    :cond_1
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_open:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerOpen;

    .line 6
    :cond_2
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_close:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerClose;

    .line 7
    :cond_3
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_share:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitShare;

    .line 8
    :cond_4
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    if-eqz v0, :cond_5

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_search:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSearch;

    .line 9
    :cond_5
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkTap;

    .line 10
    :cond_6
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_snapchat_link_success:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitSnapchatLinkSuccess;

    .line 11
    :cond_7
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    if-eqz v0, :cond_8

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_create_avatar_tap:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitCreateAvatarTap;

    .line 12
    :cond_8
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    if-eqz v0, :cond_9

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_start:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthStart;

    .line 13
    :cond_9
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    if-eqz v0, :cond_a

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->login_kit_auth_complete:Lcom/snapchat/kit/sdk/core/metrics/model/LoginKitAuthComplete;

    .line 14
    :cond_a
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    if-eqz v0, :cond_b

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_permission_update:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPermissionUpdate;

    .line 15
    :cond_b
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_sticker_picker_mount:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitStickerPickerMount;

    .line 16
    :cond_c
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->kit_heartbeat:Lcom/snapchat/kit/sdk/core/metrics/model/KitHeartbeat;

    .line 17
    :cond_d
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    if-eqz v0, :cond_e

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->bitmoji_kit_preview_icon_change:Lcom/snapchat/kit/sdk/core/metrics/model/BitmojiKitPreviewIconChange;

    .line 18
    :cond_e
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    if-eqz v0, :cond_f

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    .line 19
    :cond_f
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    if-eqz v0, :cond_10

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->story_kit_snap_playback_player_session:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlaybackPlayerSession;

    .line 20
    :cond_10
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    if-eqz v0, :cond_11

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->skate_event:Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;

    .line 21
    :cond_11
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 22
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData$ProtoAdapter_ServerEventData;->redact(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    move-result-object p1

    return-object p1
.end method
