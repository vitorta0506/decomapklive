.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$MenuAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v1, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V

    return-void
.end method
