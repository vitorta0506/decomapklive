.class public Lcom/bumptech/glide/load/resource/bitmap/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/g<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg0/d;

.field private final b:Le0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg0/d;Le0/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg0/d;",
            "Le0/g<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->a:Lg0/d;

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->b:Le0/g;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Le0/e;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/engine/u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/b;->c(Lcom/bumptech/glide/load/engine/u;Ljava/io/File;Le0/e;)Z

    move-result p1

    return p1
.end method

.method public b(Le0/e;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 1
    .param p1    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->b:Le0/g;

    invoke-interface {v0, p1}, Le0/g;->b(Le0/e;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/bumptech/glide/load/engine/u;Ljava/io/File;Le0/e;)Z
    .locals 3
    .param p1    # Lcom/bumptech/glide/load/engine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Ljava/io/File;",
            "Le0/e;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->b:Le0/g;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/b;->a:Lg0/d;

    invoke-direct {v1, p1, v2}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Landroid/graphics/Bitmap;Lg0/d;)V

    invoke-interface {v0, v1, p2, p3}, Le0/a;->a(Ljava/lang/Object;Ljava/io/File;Le0/e;)Z

    move-result p1

    return p1
.end method
