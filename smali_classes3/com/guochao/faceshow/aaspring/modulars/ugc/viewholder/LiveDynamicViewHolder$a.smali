.class Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/views/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->T(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLiveState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->U(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;->V(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1204d2

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :goto_0
    return-void
.end method

.method public onDoubleTabClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/LiveDynamicViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->q()V

    return-void
.end method
