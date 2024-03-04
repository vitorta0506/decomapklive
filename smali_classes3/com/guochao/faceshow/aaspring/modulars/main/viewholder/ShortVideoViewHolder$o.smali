.class Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/danmu/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/danmu/b;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/guochao/faceshow/aaspring/danmu/b;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/danmu/b;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/Comment;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getIsLike()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p2, v2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setIsLike(I)V

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getLikeNum()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setLikeNum(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/Comment;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCollectionNum()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCollectionNum(I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->s:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCollectionNum()I

    move-result p2

    int-to-long v3, p2

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setIsLike(I)V

    .line 10
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getLikeNum()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->setLikeNum(I)V

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-static {v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/Comment;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCollectionNum()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCollectionNum(I)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$o;->a:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v0, p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->s:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCollectionNum()I

    move-result p2

    int-to-long v3, p2

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/danmu/b;->g()V

    return v2
.end method
