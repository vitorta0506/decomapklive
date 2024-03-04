.class public Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

.field adsSwitch:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field checkHidePeopleNearby:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field checkHideVoiceRoom:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field checkPrivateLiveInvite:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCheckBoxDistance:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mCheckBoxOnline:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field peopleNearbyLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field trtcSetting:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPeopleNearby:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->b:Z

    return p1
.end method

.method private d0()V
    .locals 2

    const-string v0, ""

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showProgressDialog(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/user/editor/current/user/privacy/setting/map"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->b(Landroidx/lifecycle/Lifecycle;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;->GET:Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->method(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest$Method;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;->request()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    return-void
.end method

.method private e0(Landroid/widget/CompoundButton;I)V
    .locals 3

    const-string/jumbo v0, "tokens/report/updateNearbyFunc"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "nearbyFunc"

    .line 3
    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$e;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;Landroid/widget/CompoundButton;)V

    .line 4
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private g0(Landroid/widget/CompoundButton;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 2
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->DISTANCE_MODE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string/jumbo v1, "userId"

    .line 3
    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "distance"

    .line 4
    invoke-virtual {p2, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "nearby"

    .line 5
    invoke-virtual {p2, v0, p4}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "language"

    const-string v1, "1"

    .line 6
    invoke-virtual {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "friends"

    .line 7
    invoke-virtual {p2, v0, p5}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "closeDistance"

    .line 8
    invoke-virtual {p2, v0, p6}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v7, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$h;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$h;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/CompoundButton;)V

    .line 9
    invoke-virtual {p2, v7}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private i0(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string/jumbo v0, "tokens/report/updatePrivateInvite"

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "privateInvite"

    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;Landroid/widget/CompoundButton;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private k0(Landroid/widget/CompoundButton;I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string v1, "api/token/user/editor/current/user/set/privacy"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;

    invoke-direct {v1, p2}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel$VoiceRoomStatusModel;-><init>(I)V

    const/4 p2, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->g(Ljava/lang/Object;Z)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$g;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$g;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;Landroid/widget/CompoundButton;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$f;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;Landroid/widget/CompoundButton;)V

    .line 2
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->b(Landroidx/lifecycle/Lifecycle;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0099

    return v0
.end method

.method public initView()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->trtcSetting:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    .line 4
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcom/guochao/faceshow/bean/UserBean$UserSet;

    invoke-direct {v1}, Lcom/guochao/faceshow/bean/UserBean$UserSet;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->tvPeopleNearby:Landroid/widget/TextView;

    const v1, 0x7f1206f3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->mCheckBoxDistance:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->mCheckBoxOnline:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkHidePeopleNearby:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkHideVoiceRoom:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkPrivateLiveInvite:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->adsSwitch:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->adsSwitch:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HidePermanentlyAds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 14
    iput-boolean v5, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->c:Z

    return-void
.end method

.method public loadData()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->d0()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3f3

    if-ne p1, p2, :cond_1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string p2, "appointAuth"

    .line 2
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->a:Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->getAppointAuth()I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->a:Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/PrivacySettingModel;->setAppointAuth(I)V

    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->i0(Landroid/widget/CompoundButton;Z)V

    goto/16 :goto_0

    .line 5
    :sswitch_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->b:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    const-string v4, "2"

    const-string v5, "2"

    const-string v6, "1"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->g0(Landroid/widget/CompoundButton;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "2"

    const-string v6, "2"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->g0(Landroid/widget/CompoundButton;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8
    :sswitch_2
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->b:Z

    if-nez v0, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    if-eqz p2, :cond_4

    .line 10
    invoke-direct {p0, p1, v2}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->k0(Landroid/widget/CompoundButton;I)V

    goto/16 :goto_0

    .line 11
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->k0(Landroid/widget/CompoundButton;I)V

    goto/16 :goto_0

    .line 12
    :sswitch_3
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->b:Z

    if-nez v0, :cond_5

    return-void

    .line 13
    :cond_5
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    if-nez p2, :cond_6

    .line 14
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->e0(Landroid/widget/CompoundButton;I)V

    goto/16 :goto_0

    .line 15
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->e0(Landroid/widget/CompoundButton;I)V

    goto/16 :goto_0

    .line 16
    :sswitch_4
    iget-boolean v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->b:Z

    if-nez v0, :cond_7

    return-void

    .line 17
    :cond_7
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    const-string/jumbo v0, "tokens/report/updateOnline"

    .line 18
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    const-string v1, "online"

    invoke-virtual {v0, v1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "language"

    const-string v2, "1"

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;ZLandroid/widget/CompoundButton;)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 22
    :sswitch_5
    iget-boolean p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->b:Z

    if-nez p1, :cond_8

    return-void

    :cond_8
    const-string p1, "HidePermanentlyAds"

    if-eqz p2, :cond_9

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {p2, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 24
    :cond_9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-static {p2, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a009a -> :sswitch_5
        0x7f0a01ef -> :sswitch_4
        0x7f0a01f0 -> :sswitch_3
        0x7f0a01f1 -> :sswitch_2
        0x7f0a02d8 -> :sswitch_1
        0x7f0a08c4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12081b

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0c00

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a0c03

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0d15

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    const-string v1, "fromType"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x3f3

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5
    :cond_1
    const-class p1, Lcom/guochao/faceshow/mine/view/ChatControllerActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 6
    :cond_2
    const-class p1, Lcom/guochao/faceshow/mine/view/BlackListActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    :goto_0
    return-void
.end method
