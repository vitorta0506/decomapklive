.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->getId()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->deleteCurrentMessage()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->revokeCurrentMessage()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->getContent()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, "message"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const p2, 0x7f1201e7

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :goto_0
    return-void
.end method
