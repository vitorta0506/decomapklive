.class public final Lcom/bumptech/glide/load/resource/bitmap/g;
.super Lcom/bumptech/glide/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/i<",
        "Lcom/bumptech/glide/load/resource/bitmap/g;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bumptech/glide/i;-><init>()V

    return-void
.end method

.method public static i()Lcom/bumptech/glide/load/resource/bitmap/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/g;->f()Lcom/bumptech/glide/load/resource/bitmap/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public f()Lcom/bumptech/glide/load/resource/bitmap/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lt0/c$a;

    invoke-direct {v0}, Lt0/c$a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/g;->g(Lt0/c$a;)Lcom/bumptech/glide/load/resource/bitmap/g;

    move-result-object v0

    return-object v0
.end method

.method public g(Lt0/c$a;)Lcom/bumptech/glide/load/resource/bitmap/g;
    .locals 0
    .param p1    # Lt0/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Lt0/c$a;->a()Lt0/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/g;->h(Lt0/g;)Lcom/bumptech/glide/load/resource/bitmap/g;

    move-result-object p1

    return-object p1
.end method

.method public h(Lt0/g;)Lcom/bumptech/glide/load/resource/bitmap/g;
    .locals 1
    .param p1    # Lt0/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/bitmap/g;"
        }
    .end annotation

    new-instance v0, Lt0/b;

    invoke-direct {v0, p1}, Lt0/b;-><init>(Lt0/g;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/i;->e(Lt0/g;)Lcom/bumptech/glide/i;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/bitmap/g;

    return-object p1
.end method
