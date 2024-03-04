.class Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

.field final synthetic c:I

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;->b:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;->d:Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;->b:Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment$b;->c:I

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;->V1(Lcom/guochao/faceshow/aaspring/modulars/rank/fragment/RankListFragment;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RankListBean$RankRowsBean;I)V

    return-void
.end method
