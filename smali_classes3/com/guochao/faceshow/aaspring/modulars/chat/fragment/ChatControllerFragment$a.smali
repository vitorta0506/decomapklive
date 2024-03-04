.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$a;->a:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->onChatInputModeChanged(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
