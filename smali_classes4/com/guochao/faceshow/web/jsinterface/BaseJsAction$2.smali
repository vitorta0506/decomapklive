.class Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->showDiamondsNotEnoughDialog(Ljava/lang/Object;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;

.field final synthetic val$finalExt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$2;->this$0:Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;

    iput-object p2, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$2;->val$finalExt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$2;->val$finalExt:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e0(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "isToken"

    const-string v1, "1"

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
