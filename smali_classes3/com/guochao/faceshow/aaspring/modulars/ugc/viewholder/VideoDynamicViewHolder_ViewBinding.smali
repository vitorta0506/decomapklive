.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder_ViewBinding;
.source "SourceFile"


# instance fields
.field private m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

.field private n:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    .line 3
    const-class v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const v1, 0x7f0a0df2

    const-string v2, "field \'mTXCloudVideoView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 4
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a089e

    const-string v2, "field \'mImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0502

    const-string v2, "field \'mImageViewPlayIcon\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageViewPlayIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0ddf

    const-string v1, "field \'mVideoContentView\' and method \'onVideoClick\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 7
    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mVideoContentView:Landroid/view/View;

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder_ViewBinding;->n:Landroid/view/View;

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder_ViewBinding$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0127

    const-string v1, "field \'bgFL\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->bgFL:Landroid/view/View;

    .line 11
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0128

    const-string v2, "field \'bgIV\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->bgIV:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder_ViewBinding;->m:Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageViewPlayIcon:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mVideoContentView:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->bgFL:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->bgIV:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder_ViewBinding;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder_ViewBinding;->n:Landroid/view/View;

    .line 11
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder_ViewBinding;->unbind()V

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
