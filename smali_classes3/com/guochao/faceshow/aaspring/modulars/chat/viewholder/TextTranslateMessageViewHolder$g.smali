.class Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v2, v2, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder$g;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/viewholder/TextTranslateMessageViewHolder;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
