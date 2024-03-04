.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;)V

    return-void
.end method


# virtual methods
.method a(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mThumbnailDownloadSuccess:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->t1()Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->d:Ljava/io/File;

    invoke-virtual {v0, v1}, Lic/d;->J(Ljava/io/File;)Lic/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lic/c;->P1(Lcom/bumptech/glide/g;)Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lic/c;->J1(Landroid/graphics/drawable/Drawable;)Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->p1()Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->q1()Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->t1()Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->p1()Lic/c;

    move-result-object p1

    invoke-virtual {p1}, Lic/c;->q1()Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$c;->c:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/ImageMessage;->mOriginalDownloadSuccess:Z

    return-void
.end method

.method public onProgress(Lcom/tencent/imsdk/v2/V2TIMElem$V2ProgressInfo;)V
    .locals 0

    return-void
.end method
