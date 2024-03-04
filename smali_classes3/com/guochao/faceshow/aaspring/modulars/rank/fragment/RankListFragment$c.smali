.class Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->Z1(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;ILcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

.field final synthetic b:I

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;ILandroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;->b:I

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;->c:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;->getIsAttention()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;->d:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;->a:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;->b:I

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$c;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->W1(Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;ILandroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
