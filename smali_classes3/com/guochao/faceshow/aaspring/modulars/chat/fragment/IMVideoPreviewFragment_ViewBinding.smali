.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    .line 3
    const-class v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    const v1, 0x7f0a08a1

    const-string v2, "field \'mPlayerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    const v0, 0x7f0a08a0

    const-string v1, "field \'mImageView\' and method \'play\'"

    .line 4
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 5
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mImageView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mImageView:Landroid/widget/ImageView;

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;->c:Landroid/view/View;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0521

    const-string v2, "field \'mImageViewThumb\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mImageViewThumb:Landroid/widget/ImageView;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08d4

    const-string v2, "field \'mProgressTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mProgressTv:Landroid/widget/TextView;

    const v0, 0x7f0a08cb

    const-string v1, "field \'mProgressViewArea\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mProgressViewArea:Landroid/view/View;

    .line 11
    const-class v0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    const v1, 0x7f0a08c9

    const-string v2, "field \'mDownloadDialogProgressView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mDownloadDialogProgressView:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    const v0, 0x7f0a0255

    const-string v1, "method \'content\'"

    .line 12
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 13
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;->d:Landroid/view/View;

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mPlayerView:Lcom/google/android/exoplayer2/ui/PlayerView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mImageView:Landroid/widget/ImageView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mImageViewThumb:Landroid/widget/ImageView;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mProgressTv:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mProgressViewArea:Landroid/view/View;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment;->mDownloadDialogProgressView:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;->c:Landroid/view/View;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMVideoPreviewFragment_ViewBinding;->d:Landroid/view/View;

    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
