.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->O2(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    const p1, 0x7f0a0447

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eq p2, p1, :cond_3

    const p1, 0x7f0a07dd

    if-eq p2, p1, :cond_2

    const p1, 0x7f0a0869

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->J:Lcom/guochao/faceshow/mine/model/ContributionListBean;

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 2
    iput p2, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->I:I

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->k2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->j2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->z:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->x:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->x:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->z:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->j2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->x:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->z:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->j2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment$t;->b:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->l2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;)V

    :goto_0
    return-void
.end method
