.class public abstract Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lb8/d$a;
.implements Lp9/a$e;


# instance fields
.field private a:Z

.field private b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

.field bindEmailWarn:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;

.field contentLay:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mvpIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mvpLL:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field titleLay:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvToBeVip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userCenterAgeLevel:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userFans:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userFollow:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userId:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userId2:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userIdLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userLike:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userQcode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userSetting:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vipLookNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->a:Z

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->V1()V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->Z1(Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;)Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->c:Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;

    return-object p1
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->Y1(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    return-void
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->c2(Z)V

    return-void
.end method

.method private synthetic V1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userIdLay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userIdLay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v2

    const/high16 v3, 0x43100000    # 144.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0x8

    if-lt v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private W1()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->tvTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x43760000    # 246.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method private Y1(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->isVip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipExpireTime()J

    move-result-wide v0

    .line 3
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {p1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->tvToBeVip:Landroid/widget/TextView;

    const v1, 0x7f12041c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->tvToBeVip:Landroid/widget/TextView;

    const v0, 0x7f12041b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->a2()V

    return-void
.end method

.method private Z1(Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;)V
    .locals 4

    const-string v0, "UserCenterBean"

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/manager/b;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userFollow:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getFollowNum()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userFans:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getFansNum()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userLike:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getFriendLikeNum()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getDiamond()I

    move-result v2

    invoke-virtual {v1, v2}, Lp9/a;->B(I)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->mVipIndicatorView:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressHead()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarStrokeWidth(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarStrokeWidth(I)V

    .line 11
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private a2()V
    .locals 2

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userIdLay:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c2(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->a:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->titleLay:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f06038c

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->tvTitle:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->titleLay:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f12058e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public X1()V
    .locals 2

    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->getInfoDetailV2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public b2()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->a:Z

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->c2(Z)V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->bindEmailWarn:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->bindEmailWarn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :goto_0
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId:Landroid/widget/TextView;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId2:Landroid/widget/TextView;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lp7/i;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->X1()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01e2

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x7f0a0e15

    .line 5
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int v0, v0

    neg-int v3, v0

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v2, 0x7f0a0bc0

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;->observeFeatures(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userFans:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userFollow:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userLike:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->vipLookNum:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFont(Landroid/widget/TextView;I)V

    const/4 p1, 0x5

    new-array p1, p1, [Landroid/widget/TextView;

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->tvTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, p1, v3

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userFollow:Landroid/widget/TextView;

    aput-object v2, p1, v1

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userFans:Landroid/widget/TextView;

    aput-object v4, p1, v2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userLike:Landroid/widget/TextView;

    aput-object v2, p1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->vipLookNum:Landroid/widget/TextView;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->setCustomBold([Landroid/widget/TextView;)V

    .line 13
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userCenterAgeLevel:Landroid/view/ViewGroup;

    invoke-direct {p1, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;Z)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->titleLay:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v0, v2

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {p1, v3, v0, v3, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->contentLay:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 16
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->W1()V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->scrollView:Lcom/guochao/faceshow/views/ObservableScrollView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/ObservableScrollView;->setScrollViewListener(Lcom/guochao/faceshow/views/ObservableScrollView$a;)V

    .line 18
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lb8/d;->registerOnUserChangedListener(Lb8/d$a;)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userAvatar:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->f(Lp7/h;Z)V

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    const-string v1, "user_mvp"

    invoke-static {p1, v1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeatureOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 21
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lp9/a;->c(Lp9/a$e;)V

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->Y1(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public synthetic onCrystalsChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lp9/b;->a(Lp9/a$e;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lb8/d;->unregisterOnUserChangedListener(Lb8/d$a;)V

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lp9/a;->r(Lp9/a$e;)V

    return-void
.end method

.method public onDiamondsChanged(I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    :cond_0
    return-void
.end method

.method public onLogout()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->b2()V

    :cond_0
    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 0

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    iget-object p1, p1, Lcom/guochao/faceshow/bean/UserBean;->email:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->bindEmailWarn:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->bindEmailWarn:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId:Landroid/widget/TextView;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->c()Lb8/a;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->userId2:Landroid/widget/TextView;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->c()Lb8/a;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->a2()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->c()Lb8/a;

    move-result-object p2

    check-cast p2, Lp7/i;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    return-void
.end method

.method public synthetic onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lb8/c;->a(Lb8/d$a;Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_RED_DOT_WHO_SAW_ME"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/vip/WhoSawMeActivity;->start(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->P1(ILandroidx/fragment/app/FragmentManager;)Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment;->setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BuyVipContainerDialogFragment$d;)V

    goto/16 :goto_2

    .line 8
    :sswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "my_videos"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/MyVideotActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 9
    :sswitch_2
    const-class p1, Lcom/guochao/faceshow/mine/view/SettingActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->startActivity(Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 10
    :sswitch_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->c:Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;->W1(Lcom/guochao/faceshow/aaspring/beans/UserCenterBean;)Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/user/view/QCodeDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 12
    :sswitch_4
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/history/OneVOneHistoryActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->startActivity(Ljava/lang/Class;)V

    goto/16 :goto_2

    .line 13
    :sswitch_5
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 14
    :cond_3
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/guild/myLiveActivity"

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/navigator/ARouterNavigator;->go()Lcom/guochao/faceshow/aaspring/base/navigator/GCNavigator;

    goto/16 :goto_2

    .line 15
    :sswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/MyFollowActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 16
    :sswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/MyFansActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 17
    :sswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PersonalDynamicListActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 18
    :sswitch_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 19
    :sswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 20
    :sswitch_b
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 21
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/BuyVipGuideActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 22
    :sswitch_c
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->start(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 23
    :sswitch_d
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/welcome/RatingDialog;-><init>()V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "RatingDialog"

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 25
    :sswitch_e
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 26
    :cond_5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_WALLET_RED_DOT"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->m0(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 28
    :sswitch_f
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 29
    :cond_6
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/MyDressUpActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 30
    :sswitch_10
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_my_click:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->isRealMvp()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_7

    .line 32
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_my_click_yes:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {p1, v0, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_7
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_my_click_yes:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :goto_1
    sget-object p1, Lcom/guochao/component/mvp/activity/MVPActivity;->Companion:Lcom/guochao/component/mvp/activity/MVPActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {p1, v0, v2, v1}, Lcom/guochao/component/mvp/activity/MVPActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :sswitch_11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/activity/LevelActivity;->start(Landroid/content/Context;)V

    goto :goto_2

    .line 36
    :sswitch_12
    new-instance p1, Lcom/guochao/faceshow/web/WebViewActivity$e;

    invoke-direct {p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;-><init>()V

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->e(I)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_2

    .line 37
    :sswitch_13
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragmentKotlinBridge;->clickMoney(Landroid/view/View;)V

    goto :goto_2

    .line 38
    :sswitch_14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;->start(Landroid/content/Context;)V

    .line 39
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_RED_DRESS_UP_MARKET"

    invoke-virtual {p1, v0}, Lja/a;->e(Ljava/lang/String;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a02f3 -> :sswitch_14
        0x7f0a02f8 -> :sswitch_13
        0x7f0a03cd -> :sswitch_12
        0x7f0a0647 -> :sswitch_11
        0x7f0a07cd -> :sswitch_10
        0x7f0a07d9 -> :sswitch_f
        0x7f0a07e2 -> :sswitch_e
        0x7f0a0922 -> :sswitch_d
        0x7f0a0a8a -> :sswitch_c
        0x7f0a0bc0 -> :sswitch_b
        0x7f0a0bcf -> :sswitch_a
        0x7f0a0d86 -> :sswitch_9
        0x7f0a0d8f -> :sswitch_8
        0x7f0a0d91 -> :sswitch_7
        0x7f0a0d94 -> :sswitch_6
        0x7f0a0dbd -> :sswitch_9
        0x7f0a0dc2 -> :sswitch_5
        0x7f0a0dc8 -> :sswitch_4
        0x7f0a0dd1 -> :sswitch_3
        0x7f0a0dd3 -> :sswitch_2
        0x7f0a0dd8 -> :sswitch_1
        0x7f0a0e16 -> :sswitch_0
    .end sparse-switch
.end method
