.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$d;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Ljava/lang/String;

.field deleteDdit:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field etSearch:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:J

.field private g:Ljava/lang/Runnable;

.field private h:I

.field ivBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field scan:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewPager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->c:I

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->e:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->f:J

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->g:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic A0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PerMissionsUtils;->lacksPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->u0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->m0(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private B0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->setText(Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->setType(I)V

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;Lte/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->v0(Lte/a;)V

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->A0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->y0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->c:I

    return p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->c:I

    return p1
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->B0(I)V

    return-void
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->h:I

    return p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->h:I

    return p1
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->f:J

    return-wide v0
.end method

.method static synthetic o0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->f:J

    return-wide p1
.end method

.method static synthetic p0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic q0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->e:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic r0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic s0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic t0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->a:Ljava/util/List;

    return-object p0
.end method

.method private u0()V
    .locals 2

    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->o([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/o;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lvh/g;)Lth/b;

    return-void
.end method

.method private synthetic v0(Lte/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lte/a;->b:Z

    const-string v1, "PeopleNearbyActivity"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->m0(Landroid/app/Activity;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lte/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is granted."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p1, Lte/a;->c:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lte/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied. More info should be provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/PerMissionsUtils;->checkPermission(Landroid/content/Context;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lte/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic y0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->c:I

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->d:Ljava/lang/String;

    const/4 p1, 0x6

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->B0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->B0(I)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->hideSoftKeyboard()V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->hideSoftKeyboard()V

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
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

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const v0, 0x7f0d00ba

    return v0
.end method

.method public initView()V
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;-><init>()V

    .line 7
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UserFragMent;-><init>()V

    const-string v3, ""

    .line 8
    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;->f2(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VoiceRoomFragment;

    move-result-object v3

    .line 9
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;

    invoke-direct {v4}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/TopicFragment;-><init>()V

    .line 10
    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;

    invoke-direct {v5}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PlaceFragment;-><init>()V

    .line 11
    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;

    invoke-direct {v6}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicFragment;-><init>()V

    .line 12
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->a:Ljava/util/List;

    const v8, 0x7f12094f

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->a:Ljava/util/List;

    const v8, 0x7f1203ac

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->a:Ljava/util/List;

    const v8, 0x7f120a84

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->a:Ljava/util/List;

    const v8, 0x7f1203ab

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->a:Ljava/util/List;

    const v8, 0x7f120967

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v7

    if-nez v7, :cond_1

    .line 18
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->a:Ljava/util/List;

    const v8, 0x7f120612

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_1
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->b:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->b:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->viewPager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$d;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->tabs:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->viewPager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/m;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_multiple:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_user:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_voice:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_topic:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_address:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_music:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->viewPager:Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;

    invoke-direct {v3, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 38
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/n;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;)V

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->scan:Landroid/widget/ImageView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/q;->c(Lcom/guochao/faceshow/aaspring/views/q$a;[Landroid/view/View;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "codedContent"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getPersonalInformationScan()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, ""

    .line 6
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "userId"

    .line 7
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onMessageEvent(Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->h:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UgcSearchEventBean;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->deleteDdit:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02a8

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0591

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/UgcSearchActivity;->etSearch:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
