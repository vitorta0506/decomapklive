.class public final Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;",
        "Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public counters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;",
            ">;"
        }
    .end annotation
.end field

.field public levels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;",
            ">;"
        }
    .end annotation
.end field

.field public timers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 2
    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->counters:Ljava/util/List;

    .line 3
    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->timers:Ljava/util/List;

    .line 4
    invoke-static {}, Lcom/squareup/wire/internal/Internal;->newMutableList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->levels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final build()Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;
    .locals 5

    .line 2
    new-instance v0, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->counters:Ljava/util/List;

    iget-object v2, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->timers:Ljava/util/List;

    iget-object v3, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->levels:Ljava/util/List;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->build()Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;

    move-result-object v0

    return-object v0
.end method

.method public final counters(Ljava/util/List;)Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/CounterMetric;",
            ">;)",
            "Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->counters:Ljava/util/List;

    return-object p0
.end method

.method public final levels(Ljava/util/List;)Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/LevelMetric;",
            ">;)",
            "Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->levels:Ljava/util/List;

    return-object p0
.end method

.method public final timers(Ljava/util/List;)Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/TimerMetric;",
            ">;)",
            "Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/metrics/model/Metrics$Builder;->timers:Ljava/util/List;

    return-object p0
.end method
