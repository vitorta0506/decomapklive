.class public final Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public level:Ljava/lang/Long;

.field public name:Ljava/lang/String;

.field public timestamp:Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;
    .locals 5

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;->timestamp:Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;->level:Ljava/lang/Long;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;-><init>(Ljava/lang/String;Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;Ljava/lang/Long;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;

    move-result-object v0

    return-object v0
.end method

.method public final level(Ljava/lang/Long;)Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;->level:Ljava/lang/Long;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final timestamp(Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;)Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;
    .locals 0

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric$Builder;->timestamp:Lcom/snapchat/kit/sdk/core/metrics/model/Timestamp;

    return-object p0
.end method