.class Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;->s:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->isPublishable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;->T(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;)Laa/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;->U(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;)Laa/e;

    move-result-object v1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;

    iget-object v2, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    iget-object v3, v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;->s:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    iget-object v5, v2, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Laa/e;->onImageClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onDoubleTabClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->q()V

    return-void
.end method
