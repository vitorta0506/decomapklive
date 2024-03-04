.class Lcom/guochao/faceshow/aaspring/utils/SplashUtils$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/SplashUtils;->getSplashScreenInfo(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SplashUtils$1;->val$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SplashUtils$1;->val$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onFailure(Lg7/a;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget v0, p1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;->total:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SplashUtils$1;->val$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/SplashUtils;->access$000(Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/SplashUtils$1;->val$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/SplashUtils$1;->val$callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/SplashUtils$1;->onResponse(Lcom/guochao/faceshow/aaspring/beans/SplashInfoData;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
