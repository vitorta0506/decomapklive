.class Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;)Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment;

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/date/fragment/ChatBottomFragment$c;->onCancel(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method
