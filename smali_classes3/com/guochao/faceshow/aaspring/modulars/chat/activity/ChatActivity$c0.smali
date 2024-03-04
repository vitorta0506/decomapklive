.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$c0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$c0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    if-eqz p1, :cond_0

    const/4 p2, -0x1

    .line 2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$c0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->mChatControllerFragment:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->a2()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
