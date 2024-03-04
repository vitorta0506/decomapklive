.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/v2/V2TIMCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->revokeCurrentMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    const/16 p2, 0x4e30

    if-ne p1, p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const p2, 0x7f1208cd

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u64a4\u56de\u8fd4\u56de\u5931\u8d25\u7801:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--\u8bf7\u8054\u7cfb\u5f00\u53d1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$e;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setStatus(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$e;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
