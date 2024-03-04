.class public Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;I)Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x21

    if-eq p2, v0, :cond_5

    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/16 p1, 0x7d1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120123

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const p2, 0x7f12003d

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f12003e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    return-object p1

    .line 5
    :cond_2
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;)V

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    .line 8
    invoke-virtual {v2, p1, v0, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v2

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const p2, 0x7f1200a1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const p2, 0x7f12004a

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const p2, 0x7f1207d7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f1207d5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_6

    return-object p1

    .line 15
    :cond_6
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;)V

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    .line 18
    invoke-virtual {v2, p1, v0, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v2

    .line 19
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120735

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->getMessageType()I

    move-result p1

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TipsMessageViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;I)Ljava/lang/CharSequence;

    move-result-object p1

    const v0, 0x7f0a0cc4

    .line 4
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;->getMessageText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
