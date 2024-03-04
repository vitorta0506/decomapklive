.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$e;
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Landroid/view/View;

.field mPageIndicatorView:Lcom/rd/PageIndicatorView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mViewStub:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/16 v0, 0x9

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->a:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->checkData()V

    return-void
.end method

.method private checkData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$e;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->c:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$e;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/rd/PageIndicatorView;->setCount(I)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d019c

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_IM_FACE_GUIDE"

    invoke-virtual {p1, v0}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->d:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->mViewStub:Landroid/view/ViewStub;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->d:Landroid/view/View;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public j(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method protected loadData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSaveEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->mPageIndicatorView:Lcom/rd/PageIndicatorView;

    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/rd/draw/data/RtlMode;->On:Lcom/rd/draw/data/RtlMode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/rd/draw/data/RtlMode;->Off:Lcom/rd/draw/data/RtlMode;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/rd/PageIndicatorView;->setRtlMode(Lcom/rd/draw/data/RtlMode;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;)V

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->a:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/a;->w(Landroidx/lifecycle/LifecycleOwner;Lcom/guochao/faceshow/aaspring/base/http/callback/c;I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const p1, 0x7f110036

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMFaceViewPagerFragment;)V

    const-string v1, "slied_sdf"

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->decodeRaw(ILjava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V

    :cond_0
    return-void
.end method
