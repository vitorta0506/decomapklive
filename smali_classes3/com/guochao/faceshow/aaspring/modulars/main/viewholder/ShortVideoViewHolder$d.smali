.class Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->M(ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getIsZan()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$d;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$d;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    :goto_0
    return-void
.end method
