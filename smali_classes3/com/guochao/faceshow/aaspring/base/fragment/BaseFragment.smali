.class public abstract Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;
.source "SourceFile"

# interfaces
.implements Lf7/a;
.implements Lcom/guochao/faceshow/aaspring/manager/i$i;
.implements Lcom/guochao/faceshow/aaspring/base/http/callback/a;


# instance fields
.field private isDataLoaded:Z

.field private mFragmentConfig:Lcom/guochao/faceshow/aaspring/base/fragment/e;

.field protected mUnbinder:Lbutterknife/Unbinder;

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->isDataLoaded:Z

    return-void
.end method

.method private enSureConfig()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->mFragmentConfig:Lcom/guochao/faceshow/aaspring/base/fragment/e;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->mFragmentConfig:Lcom/guochao/faceshow/aaspring/base/fragment/e;

    :cond_0
    return-void
.end method

.method private tryLoadData()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->isDataLoaded:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->enSureConfig()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->mFragmentConfig:Lcom/guochao/faceshow/aaspring/base/fragment/e;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->loadData()V

    .line 6
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->isDataLoaded:Z

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->mFragmentConfig:Lcom/guochao/faceshow/aaspring/base/fragment/e;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->loadData()V

    .line 9
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->isDataLoaded:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    return-object p1
.end method

.method public alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    return-object p1
.end method

.method public alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;)Lcom/guochao/faceshow/views/e;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    return-object p1
.end method

.method public alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;ZZ)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    return-object p1
.end method

.method public alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;ZZ)Lcom/guochao/faceshow/views/e;
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    if-eqz p4, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->j()V

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 9
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    if-eqz p5, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->l()Lcom/guochao/faceshow/views/e;

    .line 11
    :cond_2
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-object v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getCurrentUser()Lb8/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;
    .locals 1

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    return-object v0
.end method

.method public getDataManager()Lr7/a;
    .locals 1

    invoke-static {}, Lz7/a;->a()Lz7/a;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->e(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLayoutId()I
.end method

.method public abstract initView(Landroid/view/View;)V
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method protected abstract loadData()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->tryLoadData()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->enSureConfig()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/i;->registerOnServerConfigChangedListener(Lcom/guochao/faceshow/aaspring/manager/i$i;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getLayoutId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->reuseView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->mView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->mUnbinder:Lbutterknife/Unbinder;

    return-object v1

    .line 7
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->mUnbinder:Lbutterknife/Unbinder;

    return-object v1

    :cond_1
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->mView:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->mUnbinder:Lbutterknife/Unbinder;

    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->tryLoadData()V

    return-object p1

    .line 15
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/i;->unregisterOnServerConfigChangedListener(Lcom/guochao/faceshow/aaspring/manager/i$i;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->tryLoadData()V

    return-void
.end method

.method public onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 0

    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/debug/a;->b()Lcom/guochao/faceshow/aaspring/debug/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/debug/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordError(Lg7/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/http/callback/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/callback/a;

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/callback/a;->recordError(Lg7/a;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public reuseView()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->mFragmentConfig:Lcom/guochao/faceshow/aaspring/base/fragment/e;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e;->h()Z

    move-result v0

    return v0
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->tryLoadData()V

    return-void
.end method

.method public showError()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/http/callback/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/callback/a;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/base/http/callback/a;->showError()V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    if-eqz p2, :cond_1

    .line 3
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f01002a

    const v0, 0x7f01002c

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f010029

    const v0, 0x7f01002b

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    if-eqz p3, :cond_1

    .line 2
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f01002a

    const p3, 0x7f01002c

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f010029

    const p3, 0x7f01002b

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method
