.class public Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/GiftMessageViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;

    const p1, 0x7f0a0269

    .line 2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/GiftMessage;->getGiftInfo()Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    iget v0, p2, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->numbers:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a0480

    .line 6
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    .line 9
    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    iget-object p2, p2, Lcom/guochao/faceshow/facetoface/data/GiftData$GiftItemData;->img:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object p2

    const v0, 0x7f0f0228

    invoke-virtual {p2, v0}, Lic/c;->s1(I)Lic/c;

    move-result-object p2

    invoke-virtual {p2, v0}, Lic/c;->I1(I)Lic/c;

    move-result-object p2

    invoke-virtual {p2}, Lic/c;->p1()Lic/c;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/BaseCustomTarget;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/BaseCustomTarget;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    return-void
.end method

.method public onCreatePopupMenus(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ")",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f1201f8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onItemClick(Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PopupMenuItem;->getId()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->deleteCurrentMessage()V

    :goto_0
    return-void
.end method

.method public onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/BaseMessageViewHolder;->onMessageContentClick(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    return-void
.end method
