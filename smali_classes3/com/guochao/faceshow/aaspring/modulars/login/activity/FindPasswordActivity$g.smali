.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$g;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->B0()V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->k:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->j:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$g;->onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseCountDownActivity;->o0()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    const p2, 0x7f120099

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void
.end method
