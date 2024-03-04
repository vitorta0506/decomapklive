.class Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->l(Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhb/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;)V

    sget v1, Lib/b;->a:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->a:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->b:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Ly7/e;->f(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;->b(Ljava/lang/String;)V

    return-void
.end method
