.class public Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    .line 3
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a0d5e

    const-string v2, "field \'mTXCloudVideoView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mTXCloudVideoView:Landroid/widget/FrameLayout;

    .line 4
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a026e

    const-string v2, "field \'mTextViewCountDown\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mTextViewCountDown:Landroid/widget/TextView;

    .line 5
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a00f0

    const-string v2, "field \'mImageViewAvatar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mImageViewAvatar:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment_ViewBinding;->d:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mTXCloudVideoView:Landroid/widget/FrameLayout;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mTextViewCountDown:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LittlePlayerFragment;->mImageViewAvatar:Landroid/widget/ImageView;

    .line 6
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment_ViewBinding;->unbind()V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
