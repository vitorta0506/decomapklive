.class public interface abstract Lcom/snapchat/kit/sdk/core/config/ConfigClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract fetchConfig(Lcom/snapchat/kit/sdk/core/config/a;)Lretrofit2/Call;
    .param p1    # Lcom/snapchat/kit/sdk/core/config/a;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/core/config/a;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/snapchat/kit/sdk/core/config/e<",
            "Lcom/snapchat/kit/sdk/core/config/c;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v1/config"
    .end annotation
.end method
