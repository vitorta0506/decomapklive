.class final Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$ProtoAdapter_SnapKitStorySnapViews;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_SnapKitStorySnapViews"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final decode(Lcom/squareup/wire/ProtoReader;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    invoke-direct {v0}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

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
    :cond_0
    iget-object v3, v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->views:Ljava/util/List;

    sget-object v4, Lcom/snap/kit/sdk/model/SnapKitStorySnapView;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->app_id(Ljava/lang/String;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->client_id(Ljava/lang/String;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    goto :goto_0

    .line 11
    :cond_3
    sget-object v3, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    invoke-virtual {v0, v3}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->device_environment_info(Lcom/snap/kit/common/model/DeviceEnvironmentInfo;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 13
    invoke-virtual {v0}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->build()Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

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

    .line 1
    invoke-virtual {p0, p1}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$ProtoAdapter_SnapKitStorySnapViews;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    move-result-object p1

    return-object p1
.end method

.method public final encode(Lcom/squareup/wire/ProtoWriter;Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->client_id:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 4
    iget-object v1, p2, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->app_id:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/snap/kit/sdk/model/SnapKitStorySnapView;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iget-object v1, p2, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->views:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 6
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
    check-cast p2, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    invoke-virtual {p0, p1, p2}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$ProtoAdapter_SnapKitStorySnapViews;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;)V

    return-void
.end method

.method public final encodedSize(Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;)I
    .locals 4

    .line 2
    sget-object v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->STRING:Lcom/squareup/wire/ProtoAdapter;

    iget-object v2, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->client_id:Ljava/lang/String;

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->app_id:Ljava/lang/String;

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/snap/kit/sdk/model/SnapKitStorySnapView;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 5
    invoke-virtual {v1}, Lcom/squareup/wire/ProtoAdapter;->asRepeated()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    iget-object v2, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->views:Ljava/util/List;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
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
    check-cast p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    invoke-virtual {p0, p1}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$ProtoAdapter_SnapKitStorySnapViews;->encodedSize(Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;)I

    move-result p1

    return p1
.end method

.method public final redact(Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;->newBuilder()Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    iput-object v0, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->device_environment_info:Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->views:Ljava/util/List;

    sget-object v1, Lcom/snap/kit/sdk/model/SnapKitStorySnapView;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-static {v0, v1}, Lcom/squareup/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)V

    .line 5
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 6
    invoke-virtual {p1}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$Builder;->build()Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    invoke-virtual {p0, p1}, Lcom/snap/kit/sdk/model/SnapKitStorySnapViews$ProtoAdapter_SnapKitStorySnapViews;->redact(Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;)Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;

    move-result-object p1

    return-object p1
.end method
