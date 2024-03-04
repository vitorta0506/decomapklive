.class Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;->a:I

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->k0(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseViewPagerActivity;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, v3, :cond_4

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const/16 v1, 0x63

    .line 6
    :goto_0
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->j2(I)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->reload()V

    return-void
.end method
