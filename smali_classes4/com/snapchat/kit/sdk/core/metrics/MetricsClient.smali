.class public interface abstract Lcom/snapchat/kit/sdk/core/metrics/MetricsClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract postAnalytics(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;)Lretrofit2/Call;
    .param p1    # Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/sdk/metrics/business"
    .end annotation
.end method

.method public abstract postOperationalMetrics(Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;)Lretrofit2/Call;
    .param p1    # Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/core/metrics/model/Metrics;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/sdk/metrics/operational"
    .end annotation
.end method

.method public abstract postViewEvents(Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;)Lretrofit2/Call;
    .param p1    # Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snap/kit/sdk/model/SnapKitStorySnapViews;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/stories/app/view"
    .end annotation
.end method
