.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->onBind(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->o(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->e:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setLook(Z)V

    :goto_0
    return-void
.end method
