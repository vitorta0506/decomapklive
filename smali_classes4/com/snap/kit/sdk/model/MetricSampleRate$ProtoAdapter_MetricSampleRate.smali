.class final Lcom/snap/kit/sdk/model/MetricSampleRate$ProtoAdapter_MetricSampleRate;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/sdk/model/MetricSampleRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_MetricSampleRate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lcom/snap/kit/sdk/model/MetricSampleRate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lcom/snap/kit/sdk/model/MetricSampleRate;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final decode(Lcom/squareup/wire/ProtoReader;)Lcom/snap/kit/sdk/model/MetricSampleRate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;

    invoke-direct {v0}, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x1

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
    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v0, v3}, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;->rate(Ljava/lang/Double;)Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 10
    invoke-virtual {v0}, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;->build()Lcom/snap/kit/sdk/model/MetricSampleRate;

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
    invoke-virtual {p0, p1}, Lcom/snap/kit/sdk/model/MetricSampleRate$ProtoAdapter_MetricSampleRate;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/snap/kit/sdk/model/MetricSampleRate;

    move-result-object p1

    return-object p1
.end method

.method public final encode(Lcom/squareup/wire/ProtoWriter;Lcom/snap/kit/sdk/model/MetricSampleRate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p2, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 3
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
    check-cast p2, Lcom/snap/kit/sdk/model/MetricSampleRate;

    invoke-virtual {p0, p1, p2}, Lcom/snap/kit/sdk/model/MetricSampleRate$ProtoAdapter_MetricSampleRate;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/snap/kit/sdk/model/MetricSampleRate;)V

    return-void
.end method

.method public final encodedSize(Lcom/snap/kit/sdk/model/MetricSampleRate;)I
    .locals 3

    .line 2
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lcom/snap/kit/sdk/model/MetricSampleRate;->rate:Ljava/lang/Double;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    .line 3
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
    check-cast p1, Lcom/snap/kit/sdk/model/MetricSampleRate;

    invoke-virtual {p0, p1}, Lcom/snap/kit/sdk/model/MetricSampleRate$ProtoAdapter_MetricSampleRate;->encodedSize(Lcom/snap/kit/sdk/model/MetricSampleRate;)I

    move-result p1

    return p1
.end method

.method public final redact(Lcom/snap/kit/sdk/model/MetricSampleRate;)Lcom/snap/kit/sdk/model/MetricSampleRate;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/snap/kit/sdk/model/MetricSampleRate;->newBuilder()Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 4
    invoke-virtual {p1}, Lcom/snap/kit/sdk/model/MetricSampleRate$Builder;->build()Lcom/snap/kit/sdk/model/MetricSampleRate;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/snap/kit/sdk/model/MetricSampleRate;

    invoke-virtual {p0, p1}, Lcom/snap/kit/sdk/model/MetricSampleRate$ProtoAdapter_MetricSampleRate;->redact(Lcom/snap/kit/sdk/model/MetricSampleRate;)Lcom/snap/kit/sdk/model/MetricSampleRate;

    move-result-object p1

    return-object p1
.end method
