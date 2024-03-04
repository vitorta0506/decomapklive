.class public Lcom/guochao/faceshow/aaspring/utils/BaseCustomTarget;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ls0/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls0/c;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/BaseCustomTarget;->mImageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseCustomTarget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Ls0/c;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseCustomTarget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Ls0/c;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/BaseCustomTarget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lt0/f<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of p2, p1, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseCustomTarget;->mImageView:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, p1, Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/BaseCustomTarget;->mImageView:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
