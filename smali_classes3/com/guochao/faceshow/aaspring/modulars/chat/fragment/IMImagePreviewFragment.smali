.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$Zoomable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$e;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

.field c:Ljava/io/File;

.field d:Ljava/io/File;

.field e:Lh1/f;

.field f:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;

.field mErrorImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageView:Lcom/github/chrisbanes/photoview/PhotoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static P1(I)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "position"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0035

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->i0()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->i0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->a:I

    const/4 v1, 0x1

    if-gt p1, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->i0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->a:I

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->i0()Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getOriginalFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->c:Ljava/io/File;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getThumbnailFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->d:Ljava/io/File;

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;)V

    invoke-virtual {p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;)V

    invoke-virtual {p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnScaleChangeListener(Lh1/g;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->c:Ljava/io/File;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->d:Ljava/io/File;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    iget-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mThumbnailDownloadSuccess:Z

    if-eqz v0, :cond_5

    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mOriginalDownloadSuccess:Z

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->c:Ljava/io/File;

    invoke-virtual {p1, v0}, Lic/d;->J(Ljava/io/File;)Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->t1()Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Lic/d;->J(Ljava/io/File;)Lic/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lic/c;->P1(Lcom/bumptech/glide/g;)Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->p1()Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->q1()Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->d:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setImageURI(Landroid/net/Uri;)V

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getOrignalImage()Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 14
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getOriginalFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getOrignalImage()Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;

    invoke-direct {v1, p0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/v2/V2TIMImageElem$V2TIMImage;->downloadImage(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMDownloadCallback;)V

    :goto_0
    return-void

    .line 16
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getUrl(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lic/c;->P1(Lcom/bumptech/glide/g;)Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->p1()Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->q1()Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-void
.end method

.method protected loadData()V
    .locals 0

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

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->a:I

    :cond_0
    return-void
.end method

.method public save(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public scaled()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result v0

    const v1, 0x3f80a3d7    # 1.005f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setOnPhotoTapListener(Lh1/f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->e:Lh1/f;

    return-void
.end method

.method public setOnScaleListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;

    return-void
.end method
