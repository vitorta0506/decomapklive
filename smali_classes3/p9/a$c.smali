.class Lp9/a$c;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp9/a;->q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic b:[Z

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:Lp9/a$f;

.field final synthetic g:Z

.field final synthetic h:Lp9/a;


# direct methods
.method constructor <init>(Lp9/a;Landroidx/lifecycle/LifecycleOwner;[ZLjava/lang/Runnable;ZILp9/a$f;Z)V
    .locals 0

    iput-object p1, p0, Lp9/a$c;->h:Lp9/a;

    iput-object p2, p0, Lp9/a$c;->a:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Lp9/a$c;->b:[Z

    iput-object p4, p0, Lp9/a$c;->c:Ljava/lang/Runnable;

    iput-boolean p5, p0, Lp9/a$c;->d:Z

    iput p6, p0, Lp9/a$c;->e:I

    iput-object p7, p0, Lp9/a$c;->f:Lp9/a$f;

    iput-boolean p8, p0, Lp9/a$c;->g:Z

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lp9/a$c;->a:Landroidx/lifecycle/LifecycleOwner;

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lp9/a$c;->a:Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    return-void

    .line 2
    :cond_1
    iget-object p2, p0, Lp9/a$c;->a:Landroidx/lifecycle/LifecycleOwner;

    instance-of v0, p2, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lp9/a$c;->a:Landroidx/lifecycle/LifecycleOwner;

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    return-void

    .line 3
    :cond_3
    iget-object p2, p0, Lp9/a$c;->b:[Z

    const/4 v0, 0x0

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 4
    iget-object p2, p0, Lp9/a$c;->h:Lp9/a;

    invoke-virtual {p2, p1, v0}, Lp9/a;->u(Lcom/guochao/faceshow/mine/model/MyWalletBean;Z)V

    :cond_5
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lp9/a$c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lp9/a$c;->b:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 4
    iget-boolean v0, p0, Lp9/a$c;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lp9/a$c;->h:Lp9/a;

    invoke-static {v0}, Lp9/a;->a(Lp9/a;)Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lp9/a$c;->e:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lp9/a$c;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lp9/a$c;->h:Lp9/a;

    invoke-static {v0}, Lp9/a;->a(Lp9/a;)Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result v0

    iget v1, p0, Lp9/a$c;->e:I

    if-lt v0, v1, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lp9/a$c;->f:Lp9/a$f;

    if-eqz v0, :cond_6

    .line 6
    invoke-interface {v0}, Lp9/a$f;->onResponse()V

    goto :goto_1

    .line 7
    :cond_2
    iget-boolean v0, p0, Lp9/a$c;->g:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lp9/a$c;->f:Lp9/a$f;

    if-eqz v0, :cond_6

    .line 9
    invoke-interface {v0}, Lp9/a$f;->onCustomRecharge()V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lp9/a$c;->a:Landroidx/lifecycle/LifecycleOwner;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 11
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 12
    :cond_4
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_5

    .line 13
    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 15
    :goto_0
    iget-object v1, p0, Lp9/a$c;->h:Lp9/a;

    invoke-virtual {v1, v0}, Lp9/a;->w(Landroid/app/Activity;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/mine/model/MyWalletBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/mine/model/MyWalletBean;

    invoke-virtual {p0, p1, p2}, Lp9/a$c;->a(Lcom/guochao/faceshow/mine/model/MyWalletBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
