.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->showFocusPopupWindow()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$b0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_IS_FOCUS_TAG"

    invoke-virtual {v0, v1}, Lja/a;->e(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity$b0;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;->access$200(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;)V

    return-void
.end method
