.class public final Lcom/bumptech/glide/load/resource/bitmap/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/b0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/f<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Le0/e;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/b0;->d(Landroid/graphics/Bitmap;Le0/e;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILe0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/b0;->c(Landroid/graphics/Bitmap;IILe0/e;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/graphics/Bitmap;IILe0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "II",
            "Le0/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/b0$a;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/b0$a;-><init>(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public d(Landroid/graphics/Bitmap;Le0/e;)Z
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
