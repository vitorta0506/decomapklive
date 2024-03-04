.class Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->p0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/bean/UserBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->b(Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method private synthetic b(Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->e(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 3
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/guochao/faceshow/BaseAppContext;->normalLogined:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    iget v0, v0, Lcom/guochao/faceshow/bean/UserBean;->logoutStatus:I

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/activity/a;

    invoke-direct {v2, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    invoke-static {v1, p1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->g(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Lcom/guochao/faceshow/bean/UserBean;ILcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog$b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->e(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->k:Landroid/os/Handler;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;->j:Lcom/guochao/faceshow/aaspring/utils/TimeoutRunnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->a:Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->d(Landroid/content/Context;Lg7/a;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/FindPasswordActivity$j;->c(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
