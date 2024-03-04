.class public Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;
    }
.end annotation


# instance fields
.field private a:[Landroid/widget/TextView;

.field private b:[Ljava/lang/String;

.field public backIV:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:[Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->l0(I)V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->i0()Z

    move-result p0

    return p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->d:Ljava/util/List;

    return-object p0
.end method

.method private i0()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->isProgressLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private l0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->a2()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->k0(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->k0(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->k0(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public b0()Landroidx/viewpager/widget/PagerAdapter;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;Landroidx/fragment/app/FragmentManager;)V

    return-object v0
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d009e

    return v0
.end method

.method public initView()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->initView()V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/widget/TextView;

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->a:[Landroid/widget/TextView;

    const v2, 0x7f0a0c68

    .line 3
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->a:[Landroid/widget/TextView;

    const v2, 0x7f0a0d2c

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->a:[Landroid/widget/TextView;

    const v2, 0x7f0a0d01

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v1, v0, [Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->b:[Ljava/lang/String;

    const v2, 0x7f1201f4

    .line 7
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->b:[Ljava/lang/String;

    const v6, 0x7f120ab9

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->b:[Ljava/lang/String;

    const v7, 0x7f1208a5

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    new-array v1, v0, [Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->c:[Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->c:[Ljava/lang/String;

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->c:[Ljava/lang/String;

    const v2, 0x7f1205d9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->d:Ljava/util/List;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b2(I)Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->d:Ljava/util/List;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b2(I)Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->b2(I)Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->backIV:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->a:[Landroid/widget/TextView;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 20
    aget-object v1, v1, v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->m0(I)V

    .line 22
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->l0(I)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->d()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f080319

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public k0(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->a:[Landroid/widget/TextView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget-object v2, v2, v1

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public m0(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->a:[Landroid/widget/TextView;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2
    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->a:[Landroid/widget/TextView;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 4
    aget-object p1, p1, v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->b:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
