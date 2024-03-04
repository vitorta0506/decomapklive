.class public interface abstract Lcom/snapchat/kit/sdk/core/networking/FirebaseExtensionClient;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCustomToken(Lcom/snapchat/kit/sdk/core/models/a;)Lretrofit2/Call;
    .param p1    # Lcom/snapchat/kit/sdk/core/models/a;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/core/models/a;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "."
    .end annotation
.end method
