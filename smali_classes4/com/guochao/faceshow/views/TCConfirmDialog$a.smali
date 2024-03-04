.class Lcom/guochao/faceshow/views/TCConfirmDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/TCConfirmDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/TCConfirmDialog;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/TCConfirmDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCConfirmDialog$a;->a:Lcom/guochao/faceshow/views/TCConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCConfirmDialog$a;->a:Lcom/guochao/faceshow/views/TCConfirmDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCConfirmDialog$a;->a:Lcom/guochao/faceshow/views/TCConfirmDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/views/TCConfirmDialog;->P1(Lcom/guochao/faceshow/views/TCConfirmDialog;)Lcom/guochao/faceshow/views/TCConfirmDialog$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCConfirmDialog$a;->a:Lcom/guochao/faceshow/views/TCConfirmDialog;

    invoke-static {p1}, Lcom/guochao/faceshow/views/TCConfirmDialog;->P1(Lcom/guochao/faceshow/views/TCConfirmDialog;)Lcom/guochao/faceshow/views/TCConfirmDialog$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/views/TCConfirmDialog$c;->a()V

    :cond_0
    return-void
.end method
