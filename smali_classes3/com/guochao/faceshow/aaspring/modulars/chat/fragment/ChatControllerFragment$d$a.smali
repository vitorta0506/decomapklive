.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->onShouldShowRequestPermissionRationale(Lte/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/app/Dialog;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->dismiss()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/PerMissionsUtils;->checkPermission(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public synthetic onCreate(Lcom/guochao/faceshow/views/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/views/d;->a(Lcom/guochao/faceshow/views/e$a;Lcom/guochao/faceshow/views/e;)V

    return-void
.end method
