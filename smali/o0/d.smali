.class public Lo0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo0/e<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/u;Le0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Le0/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Le0/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/u;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->c()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    new-instance p2, Ll0/b;

    invoke-static {p1}, Lv0/a;->e(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Ll0/b;-><init>([B)V

    return-object p2
.end method
