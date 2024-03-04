.class public interface abstract Lcom/snapchat/kit/sdk/core/metrics/skate/SkateClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract postSkateEvents(Lcom/snapchat/kit/sdk/core/metrics/model/ServerEventBatch;)Lretrofit2/Call;
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
            "Lcom/snap/kit/sdk/model/MetricSampleRate;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/sdk/metrics/skate"
    .end annotation
.end method
