.class public Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;
.source "SourceFile"


# instance fields
.field animationViewPro:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private i:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

.field private j:Landroid/animation/ObjectAnimator;

.field lay_login:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;-><init>()V

    return-void
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->j:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private n0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACCOUNT_LOGIN_OTHER_PLACE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1200c0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACCOUNT_LOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PARAMS_MSG_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    :cond_2
    :goto_0
    return-void
.end method

.method private o0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TAG_KEY_FORM_PUSH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    :cond_0
    return-void
.end method

.method private q0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->o0()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->n0()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0037

    return v0
.end method

.method public initView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->lay_login:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->lay_login:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    const-string v2, "translationY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->j:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x2bc

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->j:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->j:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public loginWithFaceBook(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/LoginGate;->canLogin()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->PHONE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->D(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    return-void
.end method

.method public loginWithGoogle(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/LoginGate;->canLogin()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/Constants$ThirdPartyLogin;->GOOGLE:Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->z(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    .line 3
    invoke-virtual {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->D(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->i:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->reset()V

    .line 3
    invoke-static {}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->releaseAll()V

    .line 4
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lz8/c;->J(ZZ)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->closeFaceToFacePerformClick(Landroid/app/Activity;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->p()V

    .line 7
    invoke-static {}, Lz7/a;->a()Lz7/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz7/a;->c(Lcom/guochao/faceshow/bean/UserBean;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->W()V

    .line 10
    invoke-static {p0}, Lcom/guochao/faceshow/component/f2fmatch/service/F2fForegroundService;->stop(Landroid/content/Context;)V

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->reset()V

    .line 12
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->q0()V

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->p0()V

    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a0b8f

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ThirdPartyLoginTypeFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/ThirdPartyLoginTypeFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->a(Landroid/content/Context;)V

    .line 17
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->choose_login_page:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/NewYearEventUtils;->reset()V

    .line 19
    sget-object p1, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/signin/SigninManager;->resetCount(Z)V

    .line 20
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->animationViewPro:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/BaseLoginActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->j:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;->j:Landroid/animation/ObjectAnimator;

    :cond_1
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public p0()V
    .locals 10

    const v0, 0x7f1208b2

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120733

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12052a

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "&"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "vivo NEX A"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 5
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$a;

    invoke-direct {v5, p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;Z)V

    .line 6
    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$b;

    invoke-direct {v6, p0, v4}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/activity/ChooseLoginTypeActivity;Z)V

    const v7, 0x7f0a08c2

    .line 7
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 8
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 9
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v8

    const/16 v9, 0x21

    .line 14
    invoke-virtual {v3, v5, v8, v0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v4, :cond_0

    .line 15
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;

    invoke-direct {v5}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;-><init>()V

    invoke-virtual {v3, v5, v8, v0, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/2addr v1, v2

    .line 16
    invoke-virtual {v3, v6, v2, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v4, :cond_1

    .line 17
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;-><init>()V

    invoke-virtual {v3, v0, v2, v1, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 18
    :cond_1
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrivacy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zune\uff1a"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
