.class Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LiveClearDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->a2(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;I)I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Ld9/c;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Ld9/c;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveMoreDialogFragment;)I

    move-result v0

    invoke-interface {p1, v0}, Ld9/c;->setLiveResolution(I)V

    :cond_0
    return-void
.end method
