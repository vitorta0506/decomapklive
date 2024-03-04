.class public Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/RankListResult;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RankListResult;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/view/View;

.field d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field mImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->b:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->d:Z

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->W1(Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->V1(Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->X1(Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/view/View;)V

    return-void
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/LevelView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/RankListResult;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/LevelView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/RankListResult;)V

    return-void
.end method

.method private synthetic V1(Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "from"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic W1(Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "from"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic X1(Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "from"

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private Z1(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0664

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f1207dc

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ge v2, v4, :cond_2

    if-lt v3, v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {icon}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n{icon}"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_1
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const/high16 v1, 0x41880000    # 17.0f

    .line 8
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    .line 9
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    .line 10
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    const/high16 v6, 0x41400000    # 12.0f

    .line 11
    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v4, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 13
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    mul-int v3, v3, v4

    int-to-float v3, v3

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v3, v3, v6

    int-to-float v1, v1

    div-float/2addr v3, v1

    float-to-int v1, v3

    .line 14
    invoke-virtual {v0, v5, v5, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    new-instance v1, Lcom/guochao/faceshow/views/r;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "{icon}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    add-int/lit8 v3, v0, 0x6

    .line 17
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-gt v3, v4, :cond_4

    const/16 v4, 0x11

    .line 18
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 19
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060327

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    .line 20
    invoke-static {v0, v2, p2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpanColorUtils;->setColorSpan(ILandroid/text/SpannableStringBuilder;Ljava/lang/String;F)V

    .line 21
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {p1, v5, v5}, Landroid/widget/TextView;->measure(II)V

    .line 23
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    const/high16 p1, 0x42480000    # 50.0f

    .line 24
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    return-void
.end method

.method private a2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/LevelView;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/RankListResult;)V
    .locals 2

    if-eqz p7, :cond_2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 2
    invoke-virtual {p7}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getImg()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 3
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 4
    invoke-virtual {p7}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getNickName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p7}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getSex()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0f0540

    .line 7
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p7}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getSex()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 9
    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const p2, 0x7f0f0526

    .line 10
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 11
    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_0
    invoke-virtual {p7}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getLevelId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p7}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getTotalPrice()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p6, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->Z1(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 14
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/a;

    invoke-direct {p2, p0, p7}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListResult;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private b2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getSex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0f0540

    .line 3
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getSex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0f0526

    .line 6
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 7
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    const p3, 0x7f0a064a

    .line 8
    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/views/LevelView;

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getLevelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getTotalPrice()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_2

    const p3, 0x7f0a0270

    .line 11
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getTotalPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 12
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/c;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListResult;)V

    invoke-virtual {p4, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public U1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/RankListResult;)V
    .locals 10

    const v0, 0x7f0a0702

    .line 1
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a06e6

    .line 2
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0a04ee

    .line 3
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v2, 0x7f0a0531

    .line 4
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v3, 0x7f0a0bd2

    .line 5
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v3, 0x7f0a0468

    .line 6
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v3, 0x7f0a064d

    .line 7
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/views/LevelView;

    const v3, 0x7f0a04ed

    .line 8
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a0caf

    .line 9
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0463

    .line 10
    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a04e8

    .line 11
    invoke-virtual {p1, v6}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v7, 0x7f0a0bd1

    .line 12
    invoke-virtual {p1, v7}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 13
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getNickName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const v8, 0x7f0a07e3

    .line 14
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getNickName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 15
    :cond_0
    new-instance v8, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v8}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 16
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/RankListResult;->getImg()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    const/4 v9, 0x0

    .line 17
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x8

    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0f013e

    .line 19
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    invoke-virtual {v6, v8}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 22
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    invoke-direct {p0, p1, p3, v5, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->b2(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RankListResult;Landroid/widget/ImageView;Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;)V

    .line 26
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/b;

    invoke-direct {p1, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListResult;)V

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public Y1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/RankListResult;)V
    .locals 0

    return-void
.end method

.method public c2(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->e:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->f:I

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/RankListResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->U1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/RankListResult;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0158

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    const/16 p1, 0x8

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f0d0292

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->c:Landroid/view/View;

    return-void
.end method

.method public loadData(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RankListParams;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RankListParams;-><init>()V

    .line 2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->f:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RankListParams;->setType(Ljava/lang/String;)V

    const-string v1, "20"

    .line 3
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RankListParams;->setLimit(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/RankListParams;->setPage(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/RankListParams;->setUserId(Ljava/lang/String;)V

    const-string p1, "tokens/live/newLive/getAudienceRankList"

    .line 6
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->u(Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public notifyDataLoaded(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->showEmptyView()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d024a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/RankListResult;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->Y1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/RankListResult;)V

    return-void
.end method

.method public showEmptyView()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->d:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d02f5

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 7
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addHeaderView(Landroid/view/View;I)V

    const/16 v0, 0x8

    .line 13
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/AllContributionListFragment;->a:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->removeHeaderView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method
