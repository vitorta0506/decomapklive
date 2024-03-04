.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder$a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;I)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mAdapter:Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/adapter/ChatMessageAdapter;->i()Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatControllerFragment;->q2(I)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
