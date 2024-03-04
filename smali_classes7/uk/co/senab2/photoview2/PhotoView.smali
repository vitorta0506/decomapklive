.class public Luk/co/senab2/photoview2/PhotoView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Luk/co/senab2/photoview2/b;


# instance fields
.field private a:Luk/co/senab2/photoview2/c;

.field private b:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Luk/co/senab2/photoview2/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Luk/co/senab2/photoview2/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    invoke-virtual {p0}, Luk/co/senab2/photoview2/PhotoView;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->u()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Luk/co/senab2/photoview2/c;

    invoke-direct {v0, p0}, Luk/co/senab2/photoview2/c;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    .line 3
    :cond_1
    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Luk/co/senab2/photoview2/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    :cond_2
    return-void
.end method

.method public b(FZ)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1, p2}, Luk/co/senab2/photoview2/c;->T(FZ)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->q()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getIPhotoViewImplementation()Luk/co/senab2/photoview2/b;
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    return-object v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->t()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->x()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->y()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->z()F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->C()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->D()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->F()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Luk/co/senab2/photoview2/PhotoView;->a()V

    .line 2
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->p()V

    .line 2
    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0}, Luk/co/senab2/photoview2/c;->I()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    .line 4
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->J(Z)V

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    .line 2
    iget-object p2, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Luk/co/senab2/photoview2/c;->X()V

    :cond_0
    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Luk/co/senab2/photoview2/c;->X()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Luk/co/senab2/photoview2/c;->X()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 2
    iget-object p1, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Luk/co/senab2/photoview2/c;->X()V

    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->M(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->N(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->O(F)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Luk/co/senab2/photoview2/c$e;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->setOnMatrixChangeListener(Luk/co/senab2/photoview2/c$e;)V

    return-void
.end method

.method public setOnPhotoTapListener(Luk/co/senab2/photoview2/c$f;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->setOnPhotoTapListener(Luk/co/senab2/photoview2/c$f;)V

    return-void
.end method

.method public setOnScaleChangeListener(Luk/co/senab2/photoview2/c$g;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->setOnScaleChangeListener(Luk/co/senab2/photoview2/c$g;)V

    return-void
.end method

.method public setOnSingleFlingListener(Luk/co/senab2/photoview2/c$h;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->setOnSingleFlingListener(Luk/co/senab2/photoview2/c$h;)V

    return-void
.end method

.method public setOnViewTapListener(Luk/co/senab2/photoview2/c$i;)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->setOnViewTapListener(Luk/co/senab2/photoview2/c$i;)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->P(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->Q(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->R(F)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->U(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Luk/co/senab2/photoview2/PhotoView;->b:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->V(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    iget-object v0, p0, Luk/co/senab2/photoview2/PhotoView;->a:Luk/co/senab2/photoview2/c;

    invoke-virtual {v0, p1}, Luk/co/senab2/photoview2/c;->W(Z)V

    return-void
.end method
