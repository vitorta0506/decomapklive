.class public Lcom/guochao/faceshow/push/PushSettingActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/push/model/PushStatus;

.field friendCirclePraise:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field liveOpenPushSetting:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llPushVideo:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field newChatMsgStatues:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field requestPraise:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rootLay:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swCommentsAbout:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swFocusLive:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swFocusVideo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swQAndA:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swUseYourMusic:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swVideoAbout:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swWhoSendGift:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swWhoSendGiftForChat:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field swWhoSendGiftFromVideo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field systemInteraction:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/push/PushSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/push/PushSettingActivity;->i0()V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/push/PushSettingActivity;Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/push/PushSettingActivity;->k0(Landroid/widget/ImageView;Ljava/lang/String;I)V

    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->PUSH_CURRENT_STATUS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$i;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->swCommentsAbout:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$l;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->systemInteraction:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$m;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$m;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->swUseYourMusic:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$n;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$n;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->swVideoAbout:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$o;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$o;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->swWhoSendGift:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$p;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$p;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->swWhoSendGiftFromVideo:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$q;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$q;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->swWhoSendGiftForChat:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$a;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->swFocusVideo:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$b;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->swFocusLive:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$c;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->swQAndA:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$d;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->newChatMsgStatues:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$e;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->friendCirclePraise:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$f;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->requestPraise:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/push/PushSettingActivity$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/push/PushSettingActivity$g;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->swFocusLive:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->liveOpenPushSetting:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->liveOpenPushSetting:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private k0(Landroid/widget/ImageView;Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p3

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setEnabled(Z)V

    const-string p3, "chat_switch"

    .line 3
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string/jumbo p3, "tokens/im/sendMsg/updateUserInfoMsg"

    .line 4
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "userId"

    invoke-virtual {p2, v0, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p3, Lcom/guochao/faceshow/push/PushSettingActivity$j;

    invoke-direct {p3, p0, p1}, Lcom/guochao/faceshow/push/PushSettingActivity$j;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;Landroid/widget/ImageView;)V

    .line 6
    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_1

    :cond_0
    const-string p3, "is_anchor"

    .line 7
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "is_like_vide"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    invoke-static {p3, p2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    sget-object p3, Lcom/guochao/faceshow/utils/Contants;->PUSH_CURRENT_STATUS_SET:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p3

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-virtual {p3, p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/push/PushSettingActivity$k;

    invoke-direct {v0, p0, p1, p2}, Lcom/guochao/faceshow/push/PushSettingActivity$k;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :goto_1
    return-void
.end method


# virtual methods
.method g0(Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 5
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/push/PushSettingActivity;->g0(Landroid/view/ViewGroup;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d009b

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f120749

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->rootLay:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/push/PushSettingActivity;->g0(Landroid/view/ViewGroup;)V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->llPushVideo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->llPushVideo:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public l0(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/push/PushSettingActivity$h;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/push/PushSettingActivity$h;-><init>(Lcom/guochao/faceshow/push/PushSettingActivity;I)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->m(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const v2, 0x7f06009d

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/e;->d(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f120745

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const p1, 0x7f120744

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    goto :goto_0

    :cond_1
    const p1, 0x7f120746

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method public loadData()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/push/PushSettingActivity;->e0()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->friendCirclePraise:Landroid/widget/ImageView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "is_friend"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->systemInteraction:Landroid/widget/ImageView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "is_system_interaction"

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/push/PushSettingActivity;->requestPraise:Landroid/widget/ImageView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "is_friend_request"

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public onViewClicked()V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
