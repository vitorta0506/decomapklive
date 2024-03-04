.class public interface abstract Lcom/twitter/sdk/android/core/services/ConfigurationService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract configuration()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/1.1/help/configuration.json"
    .end annotation
.end method
