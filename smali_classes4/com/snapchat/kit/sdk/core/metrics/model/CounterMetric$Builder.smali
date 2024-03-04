.class public final Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public count:Ljava/lang/Long;

.field public name:Ljava/lang/String;

.field public timestamp:Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;
    .locals 5

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->timestamp:Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->count:Ljava/lang/Long;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;-><init>(Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;Ljava/lang/Long;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;

    move-result-object v0

    return-object v0
.end method

.method public final count(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->count:Ljava/lang/Long;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final timestamp(Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;)Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric$Builder;->timestamp:Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    return-object p0
.end method
