.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/guochao/faceshow/views/e;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$a$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$a;)V

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f12018c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method
