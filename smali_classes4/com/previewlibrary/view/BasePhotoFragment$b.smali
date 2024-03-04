.class Lcom/previewlibrary/view/BasePhotoFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbd/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/previewlibrary/view/BasePhotoFragment;->initView(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/previewlibrary/view/BasePhotoFragment$b;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$b;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v0, v0, Lcom/previewlibrary/view/BasePhotoFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$b;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    invoke-static {v0}, Lcom/previewlibrary/view/BasePhotoFragment;->P1(Lcom/previewlibrary/view/BasePhotoFragment;)Lcom/previewlibrary/enitity/IThumbViewInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/previewlibrary/enitity/IThumbViewInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$b;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v0, v0, Lcom/previewlibrary/view/BasePhotoFragment;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$b;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v0, v0, Lcom/previewlibrary/view/BasePhotoFragment;->g:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$b;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v0, v0, Lcom/previewlibrary/view/BasePhotoFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$b;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v0, v0, Lcom/previewlibrary/view/BasePhotoFragment;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$b;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v0, v0, Lcom/previewlibrary/view/BasePhotoFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/previewlibrary/view/BasePhotoFragment$b;->a:Lcom/previewlibrary/view/BasePhotoFragment;

    iget-object v0, v0, Lcom/previewlibrary/view/BasePhotoFragment;->c:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
