.class public Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;
.implements Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;


# instance fields
.field private a:Lf8/i;

.field private b:Lf8/e;

.field private c:Lf8/h;

.field private d:Lf8/c;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->p0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->q0(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->o0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->r0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->n0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)Lf8/h;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)Lf8/c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->d:Lf8/c;

    return-object p0
.end method

.method private n0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zune: "

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ld8/e;

    invoke-direct {v1, p0, p1}, Ld8/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic o0(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "tokens/userout/checkUserThirdUid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s?uid=%s"

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private synthetic p0(Landroid/view/View;)V
    .locals 2

    const-string p1, ""

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    invoke-virtual {p1}, Lf8/a;->b()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->d:Lf8/c;

    invoke-virtual {p1}, Lf8/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->b:Lf8/e;

    invoke-virtual {p1}, Lf8/a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->b:Lf8/e;

    invoke-virtual {v0}, Lf8/e;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pwd"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "tokens/userout/checkUserPassword"

    .line 6
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget p1, p1, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->regType:I

    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    .line 10
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->g:Z

    if-nez p1, :cond_2

    .line 11
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->g:Z

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->register(Landroid/app/Activity;)V

    .line 13
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->login(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Z)V

    return-void

    .line 14
    :cond_3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->setType(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    if-nez p1, :cond_4

    .line 17
    invoke-static {v0, p0}, Ly6/a;->a(Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    if-eqz p1, :cond_5

    .line 19
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->k(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->m()V

    :cond_5
    return-void

    :cond_6
    :goto_0
    const-string p1, "api/user/register/checkCodeByLogout"

    .line 21
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    invoke-virtual {v1}, Lf8/a;->b()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    invoke-virtual {v0}, Lf8/a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    invoke-virtual {v0}, Lf8/h;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->d:Lf8/c;

    invoke-virtual {v0}, Lf8/c;->j()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "code"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V

    .line 24
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private static synthetic q0(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private synthetic r0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->e:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;->V1(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/ChangeCancelTypeDialog$a;)V

    return-void
.end method

.method public static s0(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "regType"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public A(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    const p1, 0x7f1209c3

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void
.end method

.method public H(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;Lcom/guochao/faceshow/aaspring/beans/CheckThirdPartyResult;Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V
    .locals 0

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d002b

    return v0
.end method

.method public initView()V
    .locals 12

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "regType"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->h:Z

    const v2, 0x7f1207b2

    .line 4
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    const v2, 0x7f0a0806

    .line 5
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6
    new-instance v4, Ld8/a;

    invoke-direct {v4, p0}, Ld8/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v4, Lf8/e;

    const v5, 0x7f0a0861

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-direct {v4, v5}, Lf8/e;-><init>(Landroid/view/ViewStub;)V

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->b:Lf8/e;

    .line 8
    new-instance v5, Ld8/d;

    invoke-direct {v5, v2}, Ld8/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lf8/e;->setOnTextChangeListener(Lf8/e$b;)V

    .line 9
    new-instance v4, Lf8/h;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    const v6, 0x7f0a0881

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    invoke-direct {v4, v5, v6}, Lf8/h;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/ViewStub;)V

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    .line 10
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$c;

    invoke-direct {v5, p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lf8/h;->setOnNextEnableListener(Lf8/h$g;)V

    .line 11
    new-instance v4, Lf8/c;

    const v5, 0x7f0a031f

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-direct {v4, v5}, Lf8/c;-><init>(Landroid/view/ViewStub;)V

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->d:Lf8/c;

    .line 12
    new-instance v5, Ld8/c;

    invoke-direct {v5, v2}, Ld8/c;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Lf8/c;->setOnNextEnableListener(Lf8/c$d;)V

    .line 13
    new-instance v4, Lf8/i;

    const v5, 0x7f0a0b8d

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    invoke-direct {v4, v5}, Lf8/i;-><init>(Landroid/view/ViewStub;)V

    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->a:Lf8/i;

    const v4, 0x7f0a0849

    .line 14
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 15
    new-instance v5, Ld8/b;

    invoke-direct {v5, p0}, Ld8/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x3

    const/16 v6, 0x8

    if-ne v0, v5, :cond_1

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    invoke-virtual {v0}, Lf8/a;->c()V

    .line 17
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->d:Lf8/c;

    invoke-virtual {v0}, Lf8/a;->c()V

    .line 19
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 20
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v5

    iget-object v5, v5, Lcom/guochao/faceshow/bean/UserBean;->pwd:Ljava/lang/String;

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v7

    iget-object v7, v7, Lcom/guochao/faceshow/bean/UserBean;->email:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v8

    iget-object v8, v8, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    if-nez v8, :cond_3

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v8

    iget-object v8, v8, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget v8, v8, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->regType:I

    .line 24
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const v10, 0x7f120145

    const v11, 0x7f120143

    if-nez v9, :cond_7

    const-string v9, "0"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 25
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->b:Lf8/e;

    invoke-virtual {v1}, Lf8/a;->c()V

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v3, 0x8

    :cond_6
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 31
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    invoke-virtual {v0}, Lf8/a;->c()V

    .line 33
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v3, 0x8

    :cond_9
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 36
    :cond_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 37
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->d:Lf8/c;

    invoke-virtual {v1}, Lf8/a;->c()V

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 39
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v3, 0x8

    :cond_c
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 41
    :cond_d
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_2

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->a:Lf8/i;

    const v3, 0x7f0f05c3

    const-string v4, "VK"

    invoke-virtual {v0, v3, v4}, Lf8/i;->d(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->a:Lf8/i;

    const v3, 0x7f0f05c0

    const-string v4, "Line"

    invoke-virtual {v0, v3, v4}, Lf8/i;->d(ILjava/lang/String;)V

    goto :goto_2

    .line 44
    :pswitch_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->a:Lf8/i;

    const v3, 0x7f0f05bf

    const v4, 0x7f120046

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lf8/i;->d(ILjava/lang/String;)V

    goto :goto_2

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->a:Lf8/i;

    const v3, 0x7f0f05be

    const-string v4, "Google"

    invoke-virtual {v0, v3, v4}, Lf8/i;->d(ILjava/lang/String;)V

    goto :goto_2

    .line 46
    :pswitch_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->a:Lf8/i;

    const v3, 0x7f0f05c2

    const v4, 0x7f120095

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lf8/i;->d(ILjava/lang/String;)V

    goto :goto_2

    .line 47
    :pswitch_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->a:Lf8/i;

    const v3, 0x7f0f05bd

    const v4, 0x7f1202f3

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lf8/i;->d(ILjava/lang/String;)V

    goto :goto_2

    .line 48
    :pswitch_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->a:Lf8/i;

    const v3, 0x7f0f05c4

    const v4, 0x7f12085b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lf8/i;->d(ILjava/lang/String;)V

    goto :goto_2

    .line 49
    :pswitch_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->a:Lf8/i;

    const v3, 0x7f0f05c1

    const v4, 0x7f120754

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lf8/i;->d(ILjava/lang/String;)V

    goto :goto_2

    .line 50
    :pswitch_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->a:Lf8/i;

    const v3, 0x7f0f05c5

    const v4, 0x7f120ab6

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lf8/i;->d(ILjava/lang/String;)V

    .line 51
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    const p1, 0x7f1209c3

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    const p1, 0x7f1209c3

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    return-void

    :cond_0
    const/16 v0, 0x63

    if-ne p1, v0, :cond_1

    const-string v0, "country_num"

    .line 4
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "logo"

    .line 5
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, v0, v1}, Lf8/h;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->i(IILandroid/content/Intent;)V

    .line 10
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->onActivityResult(IILandroid/content/Intent;Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper$OnGoogleResponse;)V

    return-void
.end method

.method public onAuthResponse(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->n0(Ljava/lang/String;)V

    return-void
.end method

.method public onBindWebView(Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    invoke-virtual {p1}, Lf8/h;->p()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->c:Lf8/h;

    invoke-virtual {p1}, Lf8/h;->p()Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->getJSAction()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->setOnCallBack(Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/GoogleLoginHelper;->unregister()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->n(Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$c;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->g()V

    .line 6
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->h:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Le8/b;->c()Le8/b;

    move-result-object v0

    invoke-virtual {v0}, Le8/b;->f()V

    .line 10
    invoke-static {}, Le8/a;->c()Le8/a;

    move-result-object v0

    invoke-virtual {v0}, Le8/a;->f()V

    :cond_2
    return-void
.end method

.method public onFinishEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "CancelAccountActivity: finish"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onLoadErr(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/f;->a(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
