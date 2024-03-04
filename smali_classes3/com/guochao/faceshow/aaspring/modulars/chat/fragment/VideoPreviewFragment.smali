.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

.field b:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/g;

.field c:Z

.field mImagePreview:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mPlay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->c:Z

    return-void
.end method

.method public static P1(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    .line 5
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d02e6

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mImagePreview:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lhc/a;->g(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    sget-object v0, Lcom/guochao/faceshow/myPlayView/widget/ScaleType;->FIT_CENTER:Lcom/guochao/faceshow/myPlayView/widget/ScaleType;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->setScaleType(Lcom/guochao/faceshow/myPlayView/widget/ScaleType;)V

    return-void
.end method

.method protected loadData()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/g;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/g;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/g;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->g()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->i()V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0529

    if-eq p1, v0, :cond_0

    const v0, 0x7f0a0df2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/g;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/g;->V()V

    :goto_0
    return-void
.end method

.method public play(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mImagePreview:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->c:Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->k()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->setUserVisibleHint(Z)V

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->g()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mImagePreview:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mPlay:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->c:Z

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->mTextureVideoView:Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/myPlayView/widget/TextureVideoView;->l()V

    .line 9
    :cond_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/VideoPreviewFragment;->c:Z

    :cond_1
    return-void
.end method
