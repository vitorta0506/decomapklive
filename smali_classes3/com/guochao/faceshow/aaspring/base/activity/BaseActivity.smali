.class public abstract Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;
.implements Lf7/a;
.implements Lcom/guochao/faceshow/aaspring/manager/i$i;
.implements Lcom/guochao/faceshow/aaspring/base/http/callback/a;


# instance fields
.field private mActivityConfig:Lcom/guochao/faceshow/aaspring/base/activity/a;

.field mApiExceptionAlerter:Ln7/b;

.field protected mCurrentNetWork:I

.field private mEndIconFirst:I

.field private mEndIconSecond:I

.field private mEndText:Ljava/lang/String;

.field private mEndTextColor:I
    .annotation build Landroidx/annotation/ColorRes;
    .end annotation
.end field

.field private mLastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

.field private mNetworkObserverHelper:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

.field public mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mTypeFace:I

.field private mUnbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mCurrentNetWork:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTypeFace:I

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    return-object p1
.end method

.method public alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    return-object p1
.end method

.method public alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;)Lcom/guochao/faceshow/views/e;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

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
    invoke-virtual/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;ZZ)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    return-object p1
.end method

.method public alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;ZZ)Lcom/guochao/faceshow/views/e;
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

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

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq7/a;->l(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public debugAlert(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f01002f

    const v1, 0x7f010031

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->a(Lcom/guochao/faceshow/aaspring/base/http/callback/a;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->b()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->c(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mLastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    return-object p1
.end method

.method public getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;",
            ">()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentUser()Lb8/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

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

.method public abstract getLayoutId()I
.end method

.method public getSystemUiVisibility()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideLeftBack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->g(Z)V

    :cond_0
    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 3

    :try_start_0
    const-string v0, "input_method"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public abstract initView()V
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public lastRequest()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mLastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-object v0
.end method

.method public abstract loadData()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x28c

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    move-result-object p1

    invoke-virtual {p1, p0, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)V

    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->onActivityResult:Z

    :cond_0
    return-void
.end method

.method public onChange(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mCurrentNetWork:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mCurrentNetWork:I

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mCurrentNetWork:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f12068b

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    :goto_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onContentChanged()V

    .line 2
    invoke-static {p0}, Lbutterknife/ButterKnife;->a(Landroid/app/Activity;)Lbutterknife/Unbinder;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mUnbinder:Lbutterknife/Unbinder;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/v;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/v;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mActivityConfig:Lcom/guochao/faceshow/aaspring/base/activity/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->initView()V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->loadData()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mActivityConfig:Lcom/guochao/faceshow/aaspring/base/activity/a;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mActivityConfig:Lcom/guochao/faceshow/aaspring/base/activity/a;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/a;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getLayoutId()I

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 8
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/manager/i;->registerOnServerConfigChangedListener(Lcom/guochao/faceshow/aaspring/manager/i$i;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndText:Ljava/lang/String;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndTextColor:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTypeFace:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/views/v;->j(Landroid/view/Menu;Ljava/lang/String;II)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndIconFirst:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndIconSecond:I

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v2, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->i(Landroid/view/Menu;II)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v1, p1, v0}, Lcom/guochao/faceshow/aaspring/views/v;->h(Landroid/view/Menu;I)V

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->v(Ljava/lang/CharSequence;)V

    .line 9
    :cond_3
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/i;->unregisterOnServerConfigChangedListener(Lcom/guochao/faceshow/aaspring/manager/i$i;)V

    return-void
.end method

.method public onDialogFragmentDismiss(Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mActivityConfig:Lcom/guochao/faceshow/aaspring/base/activity/a;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mCurrentNetWork:I

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mNetworkObserverHelper:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    if-nez v0, :cond_0

    .line 6
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->create(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mNetworkObserverHelper:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    .line 7
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->register(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->b()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/utils/Foreground;->get()Lcom/guochao/faceshow/utils/Foreground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/utils/Foreground;->isForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastCallService;->h(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mNetworkObserverHelper:Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper;->destroy(Lcom/guochao/faceshow/aaspring/utils/NetworkObserverHelper$OnNetworkChangeCallBack;)V

    :cond_0
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const p2, 0x1020016

    .line 4
    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->P(Landroidx/lifecycle/LifecycleOwner;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->a(Lcom/guochao/faceshow/aaspring/base/http/callback/a;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->b()Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;->c(Z)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->c(Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest$d;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mLastRequest:Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    return-object p1
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/aaspring/debug/a;->b()Lcom/guochao/faceshow/aaspring/debug/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/debug/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public recordError(Lg7/a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public redirectToMainActivity(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010025

    const v0, 0x7f010026

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public redirectToMainActivity(Landroid/content/Intent;Z)V
    .locals 0

    const/high16 p2, 0x24000000

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public varargs requestPermisson([Ljava/lang/String;)Lka/a;
    .locals 1

    new-instance v0, Lka/a;

    invoke-direct {v0}, Lka/a;-><init>()V

    invoke-virtual {v0, p0}, Lka/a;->m(Landroidx/fragment/app/FragmentActivity;)Lka/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lka/a;->f([Ljava/lang/String;)Lka/a;

    move-result-object p1

    return-object p1
.end method

.method public setEndIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(II)V

    return-void
.end method

.method public setEndIcon(II)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndIconFirst:I

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndIconSecond:I

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/v;->p(II)V

    :cond_0
    return-void
.end method

.method public setEndIcon(III)V
    .locals 1

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndIconFirst:I

    .line 7
    iput p2, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndIconSecond:I

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/v;->q(III)V

    :cond_0
    return-void
.end method

.method public setEndIconOrColor(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(III)V

    return-void
.end method

.method public setEndText(Ljava/lang/String;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndText:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mEndTextColor:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/v;->s(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setEndText(Ljava/lang/String;II)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/views/v;->n(I)V

    :cond_0
    return-void
.end method

.method public setLeftBackIcon(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/v;->m(I)V

    :cond_0
    return-void
.end method

.method public setLightNavigationBar(Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    return-void
.end method

.method public setLightStatusBar(Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, -0x2001

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    return-void
.end method

.method public setLightStatusBar(ZZ)V
    .locals 2

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    or-int/lit16 p1, p1, 0x2000

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    and-int/lit8 p1, p1, -0x11

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    and-int/lit16 p1, p1, -0x2001

    .line 12
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    :goto_2
    return-void
.end method

.method public setRightFirstResEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/v;->o(Z)V

    :cond_0
    return-void
.end method

.method public setRightTextStyle(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTypeFace:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/v;->u(I)V

    :cond_0
    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/v;->v(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 5
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/v;->v(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/v;->w(I)V

    :cond_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitleColor(I)V

    const v0, 0x1020016

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public showError()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lo/a;->c()Lo/a;

    move-result-object v0

    const-string v1, "/lib_debug_center/debug_center"

    invoke-virtual {v0, v1}, Lo/a;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation(Landroid/content/Context;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f01002a

    const p2, 0x7f01002c

    .line 4
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const p1, 0x7f010029

    const p2, 0x7f01002b

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    if-nez p3, :cond_1

    .line 7
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f01002a

    const p2, 0x7f01002c

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const p1, 0x7f010029

    const p2, 0x7f01002b

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startActivityForResult(Ljava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityUpIn(Landroid/content/Intent;)V
    .locals 1

    const v0, 0x10008000

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010025

    const v0, 0x7f010026

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public useImmersiveStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public windowIsSecure()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
