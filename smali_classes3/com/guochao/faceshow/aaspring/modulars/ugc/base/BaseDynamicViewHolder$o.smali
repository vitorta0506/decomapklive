.class Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->b:Laa/e;

    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    .line 3
    iget v1, v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->a:I

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    if-eq v1, v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    const v1, 0x7f0a0656

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    new-array v5, v3, [I

    .line 8
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 9
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v5, v5, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 11
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v6

    invoke-virtual {v6}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ar"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget v2, v4, v1

    const/high16 v4, 0x41a00000    # 20.0f

    .line 12
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v3

    add-int/2addr v2, v4

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_1
    const v6, 0x42948000    # 74.25f

    .line 13
    invoke-static {v6}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    aget v4, v4, v1

    sub-int/2addr v2, v4

    const/high16 v4, 0x41c80000    # 25.0f

    .line 14
    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v3

    sub-int/2addr v2, v4

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 15
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
