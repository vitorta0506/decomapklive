.class final Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$ProtoAdapter_StoryKitSnapPlayback;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_StoryKitSnapPlayback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final decode(Lcom/squareup/wire/ProtoReader;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

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
    :try_start_0
    sget-object v4, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    invoke-virtual {v0, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->exit_event(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 9
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 10
    :pswitch_1
    :try_start_1
    sget-object v4, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    invoke-virtual {v0, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->entry_event(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    .line 11
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 12
    :pswitch_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->view_time_ms(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    goto :goto_0

    .line 13
    :pswitch_3
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->snap_view_index(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    goto :goto_0

    .line 14
    :pswitch_4
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->initial_stall_ms(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    goto :goto_0

    .line 15
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_duration_unchecked_ms(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    goto :goto_0

    .line 16
    :pswitch_6
    :try_start_2
    sget-object v4, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    invoke-virtual {v0, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_type(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;
    :try_end_2
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v4

    .line 17
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto/16 :goto_0

    .line 18
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->snap_id_unchecked(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    goto/16 :goto_0

    .line 19
    :pswitch_8
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->media_url(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    goto/16 :goto_0

    .line 20
    :pswitch_9
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->player_session_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    goto/16 :goto_0

    .line 21
    :pswitch_a
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->story_kit_event_base(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    goto/16 :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 23
    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$ProtoAdapter_StoryKitSnapPlayback;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    move-result-object p1

    return-object p1
.end method

.method public final encode(Lcom/squareup/wire/ProtoWriter;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->player_session_id:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_url:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_id_unchecked:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 7
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_duration_unchecked_ms:Ljava/lang/Long;

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 8
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->initial_stall_ms:Ljava/lang/Long;

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 9
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_view_index:Ljava/lang/Long;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 10
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->view_time_ms:Ljava/lang/Long;

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 12
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 13
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
    check-cast p2, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$ProtoAdapter_StoryKitSnapPlayback;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;)V

    return-void
.end method

.method public final encodedSize(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;)I
    .locals 4

    .line 2
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->player_session_id:Ljava/lang/String;

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_url:Ljava/lang/String;

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_id_unchecked:Ljava/lang/String;

    const/4 v3, 0x4

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_type:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitMediaType;

    const/4 v3, 0x5

    .line 6
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->media_duration_unchecked_ms:Ljava/lang/Long;

    const/4 v3, 0x6

    .line 7
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->initial_stall_ms:Ljava/lang/Long;

    const/4 v3, 0x7

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->snap_view_index:Ljava/lang/Long;

    const/16 v3, 0x8

    .line 9
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->view_time_ms:Ljava/lang/Long;

    const/16 v3, 0x9

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->entry_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEntryEvent;

    const/16 v3, 0xa

    .line 11
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->exit_event:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitExitEvent;

    const/16 v3, 0xb

    .line 12
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
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
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$ProtoAdapter_StoryKitSnapPlayback;->encodedSize(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;)I

    move-result p1

    return p1
.end method

.method public final redact(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->story_kit_event_base:Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitEventBase;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 5
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback$ProtoAdapter_StoryKitSnapPlayback;->redact(Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;)Lcom/snapchat/kit/sdk/core/metrics/model/StoryKitSnapPlayback;

    move-result-object p1

    return-object p1
.end method
