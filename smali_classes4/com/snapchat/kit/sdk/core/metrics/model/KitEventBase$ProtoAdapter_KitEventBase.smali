.class final Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$ProtoAdapter_KitEventBase;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_KitEventBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final decode(Lcom/squareup/wire/ProtoReader;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    invoke-direct {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;-><init>()V

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
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->is_from_react_native_plugin(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto :goto_0

    .line 9
    :pswitch_1
    :try_start_0
    sget-object v4, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    invoke-virtual {v0, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_plugin_type(Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 10
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 11
    :pswitch_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_session_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto :goto_0

    .line 12
    :pswitch_3
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_app_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto :goto_0

    .line 13
    :pswitch_4
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->is_app_prerelease(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto :goto_0

    .line 14
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->running_in_simulator(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto :goto_0

    .line 15
    :pswitch_6
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->running_in_tests(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto :goto_0

    .line 16
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->running_with_debugger_attached(Ljava/lang/Boolean;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 17
    :pswitch_8
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->target_architecture(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 18
    :pswitch_9
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->max_client_sequence_id_on_instance(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 19
    :pswitch_a
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->client_sequence_id(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 20
    :pswitch_b
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_client_timestamp_millis(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 21
    :pswitch_c
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_variant_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 22
    :pswitch_d
    :try_start_1
    sget-object v4, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    invoke-virtual {v0, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_variant(Lcom/snapchat/kit/sdk/core/metrics/model/KitType;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    .line 23
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto/16 :goto_0

    .line 24
    :pswitch_e
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->os_minor_version(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 25
    :pswitch_f
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->ip_address(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 26
    :pswitch_10
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->kit_user_agent(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 27
    :pswitch_11
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->locale(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 28
    :pswitch_12
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->oauth_client_id(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    goto/16 :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 30
    invoke-virtual {v0}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$ProtoAdapter_KitEventBase;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    move-result-object p1

    return-object p1
.end method

.method public final encode(Lcom/squareup/wire/ProtoWriter;Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->oauth_client_id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->locale:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_user_agent:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->ip_address:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 6
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->os_minor_version:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 7
    sget-object v1, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_variant:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    const/4 v3, 0x6

    invoke-virtual {v1, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 8
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_variant_version:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 9
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_client_timestamp_millis:Ljava/lang/Long;

    const/16 v3, 0x8

    invoke-virtual {v1, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 10
    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->client_sequence_id:Ljava/lang/Long;

    const/16 v3, 0x9

    invoke-virtual {v1, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 11
    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->max_client_sequence_id_on_instance:Ljava/lang/Long;

    const/16 v3, 0xa

    invoke-virtual {v1, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 12
    iget-object v1, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->target_architecture:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 13
    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->running_with_debugger_attached:Ljava/lang/Boolean;

    const/16 v3, 0xc

    invoke-virtual {v1, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 14
    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->running_in_tests:Ljava/lang/Boolean;

    const/16 v3, 0xd

    invoke-virtual {v1, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 15
    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->running_in_simulator:Ljava/lang/Boolean;

    const/16 v3, 0xe

    invoke-virtual {v1, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 16
    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->is_app_prerelease:Ljava/lang/Boolean;

    const/16 v3, 0xf

    invoke-virtual {v1, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 17
    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_app_id:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 18
    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_session_id:Ljava/lang/String;

    const/16 v3, 0x11

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    const/16 v3, 0x12

    invoke-virtual {v0, p1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 20
    iget-object v0, p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->is_from_react_native_plugin:Ljava/lang/Boolean;

    const/16 v2, 0x13

    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 21
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
    check-cast p2, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$ProtoAdapter_KitEventBase;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)V

    return-void
.end method

.method public final encodedSize(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)I
    .locals 5

    .line 2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->oauth_client_id:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->locale:Ljava/lang/String;

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_user_agent:Ljava/lang/String;

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->ip_address:Ljava/lang/String;

    const/4 v3, 0x4

    .line 5
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->os_minor_version:Ljava/lang/String;

    const/4 v3, 0x5

    .line 6
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/snapchat/kit/sdk/core/metrics/model/KitType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_variant:Lcom/snapchat/kit/sdk/core/metrics/model/KitType;

    const/4 v4, 0x6

    .line 7
    invoke-virtual {v2, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_variant_version:Ljava/lang/String;

    const/4 v3, 0x7

    .line 8
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_client_timestamp_millis:Ljava/lang/Long;

    const/16 v4, 0x8

    .line 9
    invoke-virtual {v2, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->client_sequence_id:Ljava/lang/Long;

    const/16 v4, 0x9

    .line 10
    invoke-virtual {v2, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->max_client_sequence_id_on_instance:Ljava/lang/Long;

    const/16 v4, 0xa

    .line 11
    invoke-virtual {v2, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->target_architecture:Ljava/lang/String;

    const/16 v3, 0xb

    .line 12
    invoke-virtual {v0, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->BOOL:Lcom/squareup/wire/ProtoAdapter;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->running_with_debugger_attached:Ljava/lang/Boolean;

    const/16 v4, 0xc

    .line 13
    invoke-virtual {v2, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->running_in_tests:Ljava/lang/Boolean;

    const/16 v4, 0xd

    .line 14
    invoke-virtual {v2, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->running_in_simulator:Ljava/lang/Boolean;

    const/16 v4, 0xe

    .line 15
    invoke-virtual {v2, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->is_app_prerelease:Ljava/lang/Boolean;

    const/16 v4, 0xf

    .line 16
    invoke-virtual {v2, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_app_id:Ljava/lang/String;

    const/16 v4, 0x10

    .line 17
    invoke-virtual {v0, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_session_id:Ljava/lang/String;

    const/16 v4, 0x11

    .line 18
    invoke-virtual {v0, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    sget-object v0, Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v3, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->kit_plugin_type:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    const/16 v4, 0x12

    .line 19
    invoke-virtual {v0, v4, v3}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->is_from_react_native_plugin:Ljava/lang/Boolean;

    const/16 v3, 0x13

    .line 20
    invoke-virtual {v2, v3, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 21
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
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$ProtoAdapter_KitEventBase;->encodedSize(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)I

    move-result p1

    return p1
.end method

.method public final redact(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;->newBuilder()Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 4
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase$ProtoAdapter_KitEventBase;->redact(Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;)Lcom/snapchat/kit/sdk/core/metrics/model/KitEventBase;

    move-result-object p1

    return-object p1
.end method
