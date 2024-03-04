.class public Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Lp7/i;

.field mvpIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAge:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userGender:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userGenderLay:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userLevel:Lcom/guochao/faceshow/aaspring/views/LevelView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field vipLay:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->a:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->c:Z

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d:Z

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->e:Landroid/view/View;

    .line 7
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    .line 9
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZZ)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;Z)V

    .line 11
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZZZ)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    .line 13
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->a:Z

    .line 14
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->b:Z

    .line 15
    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZZZZ)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    .line 17
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->a:Z

    .line 18
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->b:Z

    .line 19
    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->c:Z

    .line 20
    iput-boolean p5, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d:Z

    return-void
.end method

.method private c(III)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    const v4, 0x7f080338

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGenderLay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGender:Landroid/widget/ImageView;

    const v0, 0x7f0f0301

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGenderLay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userLevel:Lcom/guochao/faceshow/aaspring/views/LevelView;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGender:Landroid/widget/ImageView;

    const v0, 0x7f0f02ea

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGenderLay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGenderLay:Landroid/view/ViewGroup;

    const v0, 0x7f080339

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userLevel:Lcom/guochao/faceshow/aaspring/views/LevelView;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGender:Landroid/widget/ImageView;

    const v0, 0x7f0f02de

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGenderLay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGenderLay:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userLevel:Lcom/guochao/faceshow/aaspring/views/LevelView;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 16
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userLevel:Lcom/guochao/faceshow/aaspring/views/LevelView;

    if-eqz p1, :cond_5

    .line 17
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->b:Z

    if-eqz v0, :cond_4

    .line 18
    iget-boolean v4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->a:Z

    invoke-virtual {p1, p3, v0, v4}, Lcom/guochao/faceshow/aaspring/views/LevelView;->e(IZZ)V

    goto :goto_2

    .line 19
    :cond_4
    iget-boolean v4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->a:Z

    invoke-virtual {p1, p3, v0, v4}, Lcom/guochao/faceshow/aaspring/views/LevelView;->d(IZZ)V

    :cond_5
    :goto_2
    if-nez v2, :cond_6

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userAge:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGender:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userGender:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userAge:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userAge:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/model/GCUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;Lcom/guochao/faceshow/aaspring/base/model/GCUser;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->f:Lp7/i;

    .line 2
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getGender()I

    move-result v0

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getAge()I

    move-result v1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUser;->getLevel()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->c(III)V

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->c:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->vipLay:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserVipInfo;->getVipLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    .line 5
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getMvpUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->mvpIV:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->mvpIV:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/base/model/GCUserBaseInfo;->getMvpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->mvpIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->userLevel:Lcom/guochao/faceshow/aaspring/views/LevelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public d(Lp7/i;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->f:Lp7/i;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lp7/i;->getGender()I

    move-result v0

    invoke-interface {p1}, Lp7/b;->getAge()I

    move-result v1

    invoke-interface {p1}, Lp7/e;->getLevel()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->c(III)V

    .line 3
    :cond_0
    instance-of v0, p1, Lp7/h;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->c:Z

    if-eqz v1, :cond_1

    .line 4
    move-object v1, p1

    check-cast v1, Lp7/h;

    .line 5
    invoke-interface {v1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->vipLay:Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-interface {v1}, Lp7/h;->getVipInfo()Lb8/g;

    move-result-object v1

    invoke-interface {v1}, Lb8/g;->getVipLevel()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d:Z

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lp7/h;

    .line 9
    invoke-interface {p1}, Lp7/h;->getMVPUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->mvpIV:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->mvpIV:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-interface {p1}, Lp7/h;->getMVPUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->mvpIV:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :cond_2
    return-void
.end method

.method public onViewClicked()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .annotation runtime Lbutterknife/Optional;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->f:Lp7/i;

    if-eqz v0, :cond_0

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->f:Lp7/i;

    invoke-interface {v1}, Lp7/i;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/activity/LevelActivity;->start(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
