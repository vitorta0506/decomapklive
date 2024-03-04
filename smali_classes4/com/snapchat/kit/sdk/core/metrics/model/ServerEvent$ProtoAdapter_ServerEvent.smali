.class final Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$ProtoAdapter_ServerEvent;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_ServerEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final decode(Lcom/squareup/wire/ProtoReader;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0x64

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
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->app_build(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto :goto_0

    .line 9
    :pswitch_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->app_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto :goto_0

    .line 10
    :pswitch_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->os_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto :goto_0

    .line 11
    :pswitch_3
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->os_type(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto :goto_0

    .line 12
    :pswitch_4
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->sequence_id(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto :goto_0

    .line 13
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->instance_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto :goto_0

    .line 14
    :pswitch_6
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto :goto_0

    .line 15
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->region(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto :goto_0

    .line 16
    :pswitch_8
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->city(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto/16 :goto_0

    .line 17
    :pswitch_9
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->country(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto/16 :goto_0

    .line 18
    :pswitch_a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->user_agent(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto/16 :goto_0

    .line 19
    :pswitch_b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->user_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto/16 :goto_0

    .line 20
    :pswitch_c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->server_ts(Ljava/lang/Double;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto/16 :goto_0

    .line 21
    :pswitch_d
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->request_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto/16 :goto_0

    .line 22
    :pswitch_e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_name(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto/16 :goto_0

    .line 23
    :cond_0
    sget-object v3, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_data(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    goto/16 :goto_0

    .line 24
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 25
    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$ProtoAdapter_ServerEvent;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object p1

    return-object p1
.end method

.method public final encode(Lcom/squareup/wire/ProtoWriter;Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->request_id:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->server_ts:Ljava/lang/Double;

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_id:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 6
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_agent:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 7
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->country:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 8
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->city:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 9
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->region:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 10
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_id:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 11
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->instance_id:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 12
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->sequence_id:Ljava/lang/Long;

    const/16 v3, 0xb

    invoke-virtual {v1, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 13
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_type:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 14
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_version:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 15
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_version:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 16
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_build:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    const/16 v2, 0x64

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 18
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
    check-cast p2, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$ProtoAdapter_ServerEvent;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;)V

    return-void
.end method

.method public final encodedSize(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;)I
    .locals 5

    .line 2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->request_id:Ljava/lang/String;

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->server_ts:Ljava/lang/Double;

    const/4 v4, 0x3

    .line 4
    invoke-virtual {v2, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_id:Ljava/lang/String;

    const/4 v3, 0x4

    .line 5
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->user_agent:Ljava/lang/String;

    const/4 v3, 0x5

    .line 6
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->country:Ljava/lang/String;

    const/4 v3, 0x6

    .line 7
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->city:Ljava/lang/String;

    const/4 v3, 0x7

    .line 8
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->region:Ljava/lang/String;

    const/16 v3, 0x8

    .line 9
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_id:Ljava/lang/String;

    const/16 v3, 0x9

    .line 10
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->instance_id:Ljava/lang/String;

    const/16 v3, 0xa

    .line 11
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->sequence_id:Ljava/lang/Long;

    const/16 v4, 0xb

    .line 12
    invoke-virtual {v2, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_type:Ljava/lang/String;

    const/16 v3, 0xc

    .line 13
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->os_version:Ljava/lang/String;

    const/16 v3, 0xd

    .line 14
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_version:Ljava/lang/String;

    const/16 v3, 0xe

    .line 15
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->app_build:Ljava/lang/String;

    const/16 v3, 0xf

    .line 16
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    const/16 v3, 0x64

    .line 17
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 18
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr v1, p1

    return v1
.end method

.method public final bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$ProtoAdapter_ServerEvent;->encodedSize(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;)I

    move-result p1

    return p1
.end method

.method public final redact(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    iput-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->event_data:Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventData;

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 5
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent$ProtoAdapter_ServerEvent;->redact(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;)Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;

    move-result-object p1

    return-object p1
.end method
