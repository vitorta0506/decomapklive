.class public Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/guochao/faceshow/mine/model/SettingStatusBean;

.field private f:Lcom/guochao/faceshow/views/e;

.field private g:Lcom/guochao/faceshow/views/e;

.field groupName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private h:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

.field rlDoNotLiveNoticeLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlDoNotLookLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlMeetLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlShieldingLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlStealthLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlToReportLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlUnFollow:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field setGroup:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swDoNotLiveNotice:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swDoNotLook:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swMeet:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swStealth:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDoNotLiveNotice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvDoNotLook:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvMeet:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvShielding:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvStealth:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvToReport:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->f:Lcom/guochao/faceshow/views/e;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Lcom/guochao/faceshow/views/e;)Lcom/guochao/faceshow/views/e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->f:Lcom/guochao/faceshow/views/e;

    return-object p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e:Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Lcom/guochao/faceshow/mine/model/SettingStatusBean;)Lcom/guochao/faceshow/mine/model/SettingStatusBean;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->e:Lcom/guochao/faceshow/mine/model/SettingStatusBean;

    return-object p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->u0(ILjava/lang/String;I)V

    return-void
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method static synthetic k0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Lcom/guochao/faceshow/views/e;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->g:Lcom/guochao/faceshow/views/e;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Lcom/guochao/faceshow/views/e;)Lcom/guochao/faceshow/views/e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->g:Lcom/guochao/faceshow/views/e;

    return-object p1
.end method

.method static synthetic m0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->t0(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic o0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->v0()V

    return-void
.end method

.method static synthetic p0(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->q0(Ljava/lang/String;)V

    return-void
.end method

.method private q0(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$e;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    invoke-static {p1, v0, v1}, Lib/b;->a(Ljava/lang/String;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method private r0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLook:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLiveNotice:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$f;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swStealth:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$g;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlShieldingLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$h;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlToReportLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$i;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swMeet:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$j;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlUnFollow:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$k;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$k;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->setGroup:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$l;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private s0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->PERSIONAL_SETTING_STATUS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string/jumbo v1, "userId"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "accountId"

    .line 3
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private t0(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->PULL_BLACK:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string/jumbo v1, "userId"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "account"

    .line 3
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 4
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "reportType"

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$m;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$m;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private u0(ILjava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->UPDATE_PERSONAL_SETTING_STATUS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setId"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p3, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;

    invoke-direct {p3, p0, p2}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private v0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;)V

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;ZLcom/guochao/faceshow/views/e$a;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f060071

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->d(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f060072

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->m(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f1203a0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00be

    return v0
.end method

.method public initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12081e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "accountImg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "accountName"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "focusShowStatus"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->d:Z

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->d:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlUnFollow:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlUnFollow:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    :goto_0
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->a:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->s0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x69

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->groupName:Landroid/widget/TextView;

    const-string p2, "name"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->initData()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->r0()V

    .line 4
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->h:Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/FriendListViewModel;->findGroupInfoByFriendId(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/db/GroupInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getId()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->groupName:Landroid/widget/TextView;

    const v0, 0x7f12059a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->groupName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/db/GroupInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
