.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

.field b:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/g;

.field mPhotoView:Lcom/guochao/faceshow/aaspring/views/GifImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static P1(Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p0, 0x1

    .line 4
    invoke-virtual {v0, p0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d02e5

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->mPhotoView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/GifImageView;->setGifDrawable(Landroid/net/Uri;)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->mPhotoView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->mPhotoView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lic/d;->L(Ljava/lang/Object;)Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->t1()Lic/c;

    move-result-object p1

    invoke-static {}, Lm0/d;->i()Lm0/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lic/c;->S1(Lcom/bumptech/glide/i;)Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->mPhotoView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 5
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->mPhotoView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;)V

    invoke-virtual {p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/utils/g;

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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ImagePreviewFragment;->a:Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    :cond_0
    return-void
.end method
