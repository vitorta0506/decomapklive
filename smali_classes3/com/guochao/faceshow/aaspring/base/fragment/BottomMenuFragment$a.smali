.class Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;->P1(Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;)Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$a;->a:Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment;

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BottomMenuFragment$b;->onCancel(Landroid/app/Dialog;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method
