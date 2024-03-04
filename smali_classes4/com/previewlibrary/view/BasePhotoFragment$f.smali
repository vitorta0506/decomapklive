.class Lcom/previewlibrary/view/BasePhotoFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/previewlibrary/wight/SmoothImageView$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/previewlibrary/view/BasePhotoFragment;->T1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/previewlibrary/view/BasePhotoFragment;


# direct methods
.method constructor <init>(Lcom/previewlibrary/view/BasePhotoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment$f;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0xff

    if-ne p1, v1, :cond_1

    .line 1
    iget-object v1, p0, Lcom/previewlibrary/view/BasePhotoFragment$f;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-static {v1}, Lcom/previewlibrary/view/BasePhotoFragment;->P1(Lcom/previewlibrary/view/BasePhotoFragment;)Lcom/previewlibrary/enitity/IThumbViewInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/previewlibrary/enitity/IThumbViewInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$f;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v0, v0, Lcom/previewlibrary/view/BasePhotoFragment;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/previewlibrary/view/BasePhotoFragment$f;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v1, v1, Lcom/previewlibrary/view/BasePhotoFragment;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/previewlibrary/view/BasePhotoFragment$f;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v1, v1, Lcom/previewlibrary/view/BasePhotoFragment;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$f;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v0, v0, Lcom/previewlibrary/view/BasePhotoFragment;->d:Landroid/view/View;

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    const/high16 v1, -0x1000000

    invoke-static {p1, v1}, Lcom/previewlibrary/view/BasePhotoFragment;->R1(FI)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
