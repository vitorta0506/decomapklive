.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$f;

    if-eqz v2, :cond_0

    .line 2
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder$c;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;

    iget-object v4, v3, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    iget-object v3, v3, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/VideoMessageHolder;->mImageViewThumb:Landroid/widget/ImageView;

    invoke-interface {v1, v0, v2, v4, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$f;->onMediaMessageClick(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;ILcom/guochao/faceshow/aaspring/modulars/chat/models/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method
