.class Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result p1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1, v1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->d(FZ)V

    goto :goto_0

    :cond_0
    if-gtz v2, :cond_1

    cmpg-float p1, p1, v1

    if-ltz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {p1, v1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->d(FZ)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-virtual {p1, v1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->d(FZ)V

    :goto_0
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->e:Lh1/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/IMImagePreviewFragment;->mImageView:Lcom/github/chrisbanes/photoview/PhotoView;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lh1/f;->onPhotoTap(Landroid/widget/ImageView;FF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
