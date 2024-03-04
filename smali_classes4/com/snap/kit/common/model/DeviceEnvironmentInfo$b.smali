.class final Lcom/snap/kit/common/model/DeviceEnvironmentInfo$b;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/common/model/DeviceEnvironmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/snap/kit/common/model/DeviceEnvironmentInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/squareup/wire/ProtoReader;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    invoke-direct {v0}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 4
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 6
    invoke-virtual {v0, v3, v4, v5}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 7
    :pswitch_0
    :try_start_0
    sget-object v4, Lcom/snap/kit/common/model/Types$Trilean;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snap/kit/common/model/Types$Trilean;

    invoke-virtual {v0, v4}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->b(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 8
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 9
    :pswitch_1
    :try_start_1
    sget-object v4, Lcom/snap/kit/common/model/Types$Trilean;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snap/kit/common/model/Types$Trilean;

    invoke-virtual {v0, v4}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->h(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    :try_end_1
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
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
    :try_start_2
    sget-object v4, Lcom/snap/kit/common/model/Types$Trilean;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snap/kit/common/model/Types$Trilean;

    invoke-virtual {v0, v4}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->i(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    :try_end_2
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v4

    .line 12
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 13
    :pswitch_3
    :try_start_3
    sget-object v4, Lcom/snap/kit/common/model/Types$Trilean;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snap/kit/common/model/Types$Trilean;

    invoke-virtual {v0, v4}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->j(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    :try_end_3
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v4

    .line 14
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto/16 :goto_0

    .line 15
    :pswitch_4
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->c(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    goto/16 :goto_0

    .line 16
    :pswitch_5
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->k(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    goto/16 :goto_0

    .line 17
    :pswitch_6
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->e(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    goto/16 :goto_0

    .line 18
    :pswitch_7
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->g(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    goto/16 :goto_0

    .line 19
    :pswitch_8
    :try_start_4
    sget-object v4, Lcom/snap/kit/common/model/OsType$Enum;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/snap/kit/common/model/OsType$Enum;

    invoke-virtual {v0, v4}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->f(Lcom/snap/kit/common/model/OsType$Enum;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    :try_end_4
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v4

    .line 20
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto/16 :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 22
    invoke-virtual {v0}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->a()Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final b(Lcom/squareup/wire/ProtoWriter;Lcom/snap/kit/common/model/DeviceEnvironmentInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/snap/kit/common/model/OsType$Enum;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_type:Lcom/snap/kit/common/model/OsType$Enum;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_version:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    iget-object v1, p2, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->model:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    iget-object v1, p2, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->target_architecture:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
    iget-object v1, p2, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->locale:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/snap/kit/common/model/Types$Trilean;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_with_debugger_attached:Lcom/snap/kit/common/model/Types$Trilean;

    const/4 v2, 0x6

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 7
    iget-object v1, p2, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_tests:Lcom/snap/kit/common/model/Types$Trilean;

    const/4 v2, 0x7

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 8
    iget-object v1, p2, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_simulator:Lcom/snap/kit/common/model/Types$Trilean;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 9
    iget-object v1, p2, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->is_app_prerelease:Lcom/snap/kit/common/model/Types$Trilean;

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public final c(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;)I
    .locals 4

    .line 1
    sget-object v0, Lcom/snap/kit/common/model/OsType$Enum;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_type:Lcom/snap/kit/common/model/OsType$Enum;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->os_version:Ljava/lang/String;

    const/4 v3, 0x2

    .line 2
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->model:Ljava/lang/String;

    const/4 v3, 0x3

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->target_architecture:Ljava/lang/String;

    const/4 v3, 0x4

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->locale:Ljava/lang/String;

    const/4 v3, 0x5

    .line 5
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snap/kit/common/model/Types$Trilean;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_with_debugger_attached:Lcom/snap/kit/common/model/Types$Trilean;

    const/4 v3, 0x6

    .line 6
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_tests:Lcom/snap/kit/common/model/Types$Trilean;

    const/4 v3, 0x7

    .line 7
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->running_in_simulator:Lcom/snap/kit/common/model/Types$Trilean;

    const/16 v3, 0x8

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->is_app_prerelease:Lcom/snap/kit/common/model/Types$Trilean;

    const/16 v3, 0x9

    .line 9
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public final d(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->newBuilder()Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 3
    invoke-virtual {p1}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->a()Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$b;->a(Lcom/squareup/wire/ProtoReader;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$b;->b(Lcom/squareup/wire/ProtoWriter;Lcom/snap/kit/common/model/DeviceEnvironmentInfo;)V

    return-void
.end method

.method public final bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    invoke-virtual {p0, p1}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$b;->c(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    invoke-virtual {p0, p1}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$b;->d(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    move-result-object p1

    return-object p1
.end method
