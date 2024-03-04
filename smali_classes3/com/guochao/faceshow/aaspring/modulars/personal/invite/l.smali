.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/personal/invite/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/l;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/l;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/l;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/l;->b:I

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment$initView$2;->a(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/ShareNewUiDialogFragment;ILandroid/view/View;)V

    return-void
.end method
