.class Lcom/guochao/faceshow/utils/Ahttp$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/Ahttp;->send(Lcom/guochao/faceshow/utils/ArequestCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/utils/Ahttp;

.field final synthetic val$requestCallBack:Lcom/guochao/faceshow/utils/ArequestCallBack;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/Ahttp;Lcom/guochao/faceshow/utils/ArequestCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/Ahttp$1;->this$0:Lcom/guochao/faceshow/utils/Ahttp;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/Ahttp$1;->val$requestCallBack:Lcom/guochao/faceshow/utils/ArequestCallBack;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/Ahttp$1;->val$requestCallBack:Lcom/guochao/faceshow/utils/ArequestCallBack;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/ArequestCallBack;->onCancelled()V

    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/Ahttp$1;->val$requestCallBack:Lcom/guochao/faceshow/utils/ArequestCallBack;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/ArequestCallBack;->onFinished()V

    :cond_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/Ahttp$1;->val$requestCallBack:Lcom/guochao/faceshow/utils/ArequestCallBack;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/utils/ArequestCallBack;->onError(Lg7/a;Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/utils/Ahttp$1;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/utils/Ahttp$1;->val$requestCallBack:Lcom/guochao/faceshow/utils/ArequestCallBack;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/utils/ArequestCallBack;->onSuccessV2(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
