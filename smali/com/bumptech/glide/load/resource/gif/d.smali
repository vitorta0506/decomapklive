.class public Lcom/bumptech/glide/load/resource/gif/d;
.super Lm0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm0/c<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lm0/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lm0/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->i()I

    move-result v0

    return v0
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lm0/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method

.method public recycle()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 2
    iget-object v0, p0, Lm0/c;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->k()V

    return-void
.end method
