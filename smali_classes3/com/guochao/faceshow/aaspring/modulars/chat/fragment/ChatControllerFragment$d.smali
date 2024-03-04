.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;
.super Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->Y1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$i;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$i;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$i;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$i;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onGranted(Lte/a;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$i;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$i;->a()V

    :cond_0
    return-void
.end method

.method public onShouldShowRequestPermissionRationale(Lte/a;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/BasePermissionObserver;->onShouldShowRequestPermissionRationale(Lte/a;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    new-instance v0, Lcom/guochao/faceshow/views/e;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;)V

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Lcom/guochao/faceshow/views/e;)Lcom/guochao/faceshow/views/e;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    const v1, 0x7f1208a3

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    const v1, 0x7f1206d9

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    const v1, 0x7f120068

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method
