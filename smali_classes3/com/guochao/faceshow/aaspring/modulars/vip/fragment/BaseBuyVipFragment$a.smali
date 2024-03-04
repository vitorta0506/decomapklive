.class Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/vip/fragment/BaseBuyVipFragment;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
