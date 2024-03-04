.class interface abstract Lcom/guochao/faceshow/aaspring/modulars/login/utils/TwitterLoginManager$MyTwitterApiClient$CustomService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract show(J)Lretrofit2/Call;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lretrofit2/Call<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/1.1/users/show.json"
    .end annotation
.end method
