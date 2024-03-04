.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder$b;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextMessageViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mMessage:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setHasShowedSearch(Z)V

    return-void
.end method
