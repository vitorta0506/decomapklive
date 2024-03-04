.class public Lcom/bumptech/glide/load/resource/gif/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/h<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Le0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le0/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/h<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le0/h;

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/e;->b:Le0/h;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/gif/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/e;

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/e;->b:Le0/h;

    iget-object p1, p1, Lcom/bumptech/glide/load/resource/gif/e;->b:Le0/h;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/e;->b:Le0/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/u;II)Lcom/bumptech/glide/load/engine/u;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/u<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/u<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/c;->c(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/c;->f()Lg0/d;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v3, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Landroid/graphics/Bitmap;Lg0/d;)V

    .line 5
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/e;->b:Le0/h;

    invoke-interface {v1, p1, v3, p3, p4}, Le0/h;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/u;II)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    .line 6
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 7
    invoke-interface {v3}, Lcom/bumptech/glide/load/engine/u;->recycle()V

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 9
    iget-object p3, p0, Lcom/bumptech/glide/load/resource/gif/e;->b:Le0/h;

    invoke-virtual {v0, p3, p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->m(Le0/h;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/e;->b:Le0/h;

    invoke-interface {v0, p1}, Le0/b;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
