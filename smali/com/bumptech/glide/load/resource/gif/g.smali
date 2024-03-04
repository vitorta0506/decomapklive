.class public final Lcom/bumptech/glide/load/resource/gif/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/f<",
        "Lc0/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg0/d;


# direct methods
.method public constructor <init>(Lg0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/g;->a:Lg0/d;

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

    check-cast p1, Lc0/a;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/g;->d(Lc0/a;Le0/e;)Z

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

    check-cast p1, Lc0/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/gif/g;->c(Lc0/a;IILe0/e;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    return-object p1
.end method

.method public c(Lc0/a;IILe0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .param p1    # Lc0/a;
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
            "Lc0/a;",
            "II",
            "Le0/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lc0/a;->a()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/bumptech/glide/load/resource/gif/g;->a:Lg0/d;

    invoke-static {p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/e;->c(Landroid/graphics/Bitmap;Lg0/d;)Lcom/bumptech/glide/load/resource/bitmap/e;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc0/a;Le0/e;)Z
    .locals 0
    .param p1    # Lc0/a;
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
