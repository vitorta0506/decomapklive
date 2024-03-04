.class final Lm0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le0/f<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lm0/a;


# direct methods
.method constructor <init>(Lm0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm0/a$c;->a:Lm0/a;

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

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lm0/a$c;->d(Ljava/io/InputStream;Le0/e;)Z

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

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lm0/a$c;->c(Ljava/io/InputStream;IILe0/e;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/InputStream;IILe0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 1
    .param p1    # Ljava/io/InputStream;
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
            "Ljava/io/InputStream;",
            "II",
            "Le0/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/u<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lv0/a;->b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lm0/a$c;->a:Lm0/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lm0/a;->b(Landroid/graphics/ImageDecoder$Source;IILe0/e;)Lcom/bumptech/glide/load/engine/u;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/io/InputStream;Le0/e;)Z
    .locals 0
    .param p1    # Ljava/io/InputStream;
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

    iget-object p2, p0, Lm0/a$c;->a:Lm0/a;

    invoke-virtual {p2, p1}, Lm0/a;->c(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method
