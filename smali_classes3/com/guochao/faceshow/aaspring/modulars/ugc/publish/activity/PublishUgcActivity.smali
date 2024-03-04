.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

.field private b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

.field private c:I

.field private d:Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

.field private e:I

.field etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

.field firstTip:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field forbidCommentBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private g:I

.field publishImageLay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvViewRange:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvVisibleKey:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvWithLocation:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewRangeBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsFringManager()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x7d0

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    :goto_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->e:I

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->n0()Z

    move-result p0

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->c:I

    return p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->c:I

    return p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->c:I

    return v0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->o0(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    return-void
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->d:Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    return-object p0
.end method

.method private n0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->e:I

    if-le v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    if-eqz v1, :cond_4

    const v0, 0x7f0f0184

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    goto :goto_3

    :cond_4
    const v0, 0x7f0f0185

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndIcon(I)V

    .line 6
    :goto_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->r(Z)V

    :cond_5
    return v1
.end method

.method private o0(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->toDynamic(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    move-result-object p1

    .line 3
    new-instance v0, Ly7/o;

    invoke-direct {v0}, Ly7/o;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ly7/o;->b(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 5
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 6
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x24400000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->finish()V

    return-void
.end method

.method private p0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvViewRange:Landroid/widget/TextView;

    const v1, 0x7f06009d

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setInvisibleList(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvVisibleKey:Landroid/widget/TextView;

    const v1, 0x7f120abd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->g:I

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvViewRange:Landroid/widget/TextView;

    const v1, 0x7f060099

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvVisibleKey:Landroid/widget/TextView;

    const v1, 0x7f12068d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->isAllSelected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->getSelectInvisibleUsers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->getSelectInvisibleUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->getSelectInvisibleUsers()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelectInvisibleUsers(Ljava/util/List;)V

    move-object v0, v1

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvViewRange:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->getSelectInvisibleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setInvisibleList(Ljava/util/List;)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setShield(I)V

    goto :goto_2

    .line 17
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvViewRange:Landroid/widget/TextView;

    const v1, 0x7f120963

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setShield(I)V

    goto :goto_2

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvViewRange:Landroid/widget/TextView;

    const v1, 0x7f12073b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setShield(I)V

    goto :goto_2

    .line 21
    :cond_7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvViewRange:Landroid/widget/TextView;

    const v1, 0x7f1206ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setShield(I)V

    goto :goto_2

    .line 23
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvViewRange:Landroid/widget/TextView;

    const v2, 0x7f120955

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setShield(I)V

    goto :goto_2

    .line 25
    :cond_9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvViewRange:Landroid/widget/TextView;

    const v1, 0x7f120953

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setShield(I)V

    :goto_2
    return-void
.end method

.method public static q0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ActivityTransitionAnimUtils;->startActivityByDownToUp(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->q0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    const v0, 0x7f010025

    const v1, 0x7f010028

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d009a

    return v0
.end method

.method public initView()V
    .locals 7

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->setActivity(Landroid/app/Activity;)V

    const v1, 0x7f1207d3

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightIconClickListener(Lcom/guochao/faceshow/aaspring/views/v$d;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 6
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;->getTopicName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->addInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "#%s "

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    new-array v4, v2, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget v6, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->e:I

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const-string v1, "PublishViewRangeTip"

    .line 8
    invoke-static {p0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->firstTip:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->firstTip:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->setOnTextChangedListener(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;)V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Forbid"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "dynamic"

    invoke-static {v4, v3, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    .line 16
    const-class v0, Ljava/lang/Integer;

    const-string v3, "VisiblePositionV2"

    invoke-static {v4, v3, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->g:I

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->viewRangeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->forbidCommentBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 20
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->p0()V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->viewRangeBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsNearbySeat(I)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->forbidCommentBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsComment(I)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/ObservableScrollView;->setScrollViewListener(Lcom/guochao/faceshow/views/ObservableScrollView$a;)V

    .line 24
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->n0()Z

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->k(IILandroid/content/Intent;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->u(IILandroid/content/Intent;)V

    :cond_1
    const/16 v0, 0x7a

    const-string v1, "key1"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    if-ne p2, v2, :cond_2

    if-eqz p3, :cond_2

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    const-string v0, "key2"

    .line 7
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->g:I

    .line 8
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    const-string v5, "dynamic"

    invoke-static {v5, v0, v4}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "VisiblePositionV2"

    invoke-static {v5, v4, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->p0()V

    :cond_2
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_5

    if-ne p2, v2, :cond_5

    if-eqz p3, :cond_5

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->d:Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    const/4 p2, 0x1

    const-string p3, "-1"

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->getVicinity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvWithLocation:Landroid/widget/TextView;

    const v0, 0x7f120961

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setAddress(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsShowSeat(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsPoi(I)V

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->d:Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    if-eqz p1, :cond_4

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->tvWithLocation:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->d:Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->getLat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setLatitude(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->d:Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->getLng()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setLongitude(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->d:Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setAddress(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsShowSeat(I)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsPoi(I)V

    .line 24
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->d:Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->getVicinity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->d:Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->getLat()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->d:Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;

    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/UgcPoiBean$ListBean;->getLng()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;->create(DD)Lcom/guochao/faceshow/aaspring/utils/location/FcLocation;

    move-result-object p1

    .line 26
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    .line 27
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->n0()Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->publishImageLay:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->j(Landroid/os/Bundle;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->n(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$c;)V

    const/4 p1, 0x2

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->checkShouldShow(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;->getInstance(I)Lcom/guochao/faceshow/aaspring/modulars/live/fragment/HealthLiveTipsFragment;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ugc"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->l(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->viewRangeBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->viewRangeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsNearbySeat(I)V

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->firstTip:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    const-string v0, "PublishViewRangeTip"

    .line 5
    invoke-static {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->f:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->g:I

    const/16 v1, 0x7a

    invoke-static {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->n0(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;II)V

    goto :goto_0

    .line 7
    :sswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->forbidCommentBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->b:Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->forbidCommentBtn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->setIsComment(I)V

    goto :goto_0

    .line 9
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->etUgcPublish:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->v()V

    goto :goto_0

    .line 10
    :sswitch_4
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-direct {p1, p0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0084 -> :sswitch_4
        0x7f0a0086 -> :sswitch_3
        0x7f0a0438 -> :sswitch_2
        0x7f0a0658 -> :sswitch_1
        0x7f0a0e06 -> :sswitch_0
    .end sparse-switch
.end method
