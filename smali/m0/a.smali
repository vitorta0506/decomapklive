.class public final Lm0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/a$b;,
        Lm0/a$c;,
        Lm0/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lg0/b;


# direct methods
.method private constructor <init>(Ljava/util/List;Lg0/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lg0/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm0/a;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lm0/a;->b:Lg0/b;

    return-void
.end method

.method public static a(Ljava/util/List;Lg0/b;)Le0/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lg0/b;",
            ")",
            "Le0/f<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lm0/a$b;

    new-instance v1, Lm0/a;

    invoke-direct {v1, p0, p1}, Lm0/a;-><init>(Ljava/util/List;Lg0/b;)V

    invoke-direct {v0, v1}, Lm0/a$b;-><init>(Lm0/a;)V

    return-object v0
.end method

.method private e(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static f(Ljava/util/List;Lg0/b;)Le0/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lg0/b;",
            ")",
            "Le0/f<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lm0/a$c;

    new-instance v1, Lm0/a;

    invoke-direct {v1, p0, p1}, Lm0/a;-><init>(Ljava/util/List;Lg0/b;)V

    invoke-direct {v0, v1}, Lm0/a$c;-><init>(Lm0/a;)V

    return-object v0
.end method


# virtual methods
.method b(Landroid/graphics/ImageDecoder$Source;IILe0/e;)Lcom/bumptech/glide/load/engine/u;
    .locals 1
    .param p1    # Landroid/graphics/ImageDecoder$Source;
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
            "Landroid/graphics/ImageDecoder$Source;",
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
    new-instance v0, Lcom/bumptech/glide/load/resource/a;

    invoke-direct {v0, p2, p3, p4}, Lcom/bumptech/glide/load/resource/a;-><init>(IILe0/e;)V

    .line 2
    invoke-static {p1, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    instance-of p2, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lm0/a$a;

    check-cast p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {p2, p1}, Lm0/a$a;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    return-object p2

    .line 5
    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Received unexpected drawable type for animated webp, failing: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method c(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm0/a;->a:Ljava/util/List;

    iget-object v1, p0, Lm0/a;->b:Lg0/b;

    invoke-static {v0, p1, v1}, Lcom/bumptech/glide/load/a;->f(Ljava/util/List;Ljava/io/InputStream;Lg0/b;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    invoke-direct {p0, p1}, Lm0/a;->e(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result p1

    return p1
.end method

.method d(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lm0/a;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/bumptech/glide/load/a;->g(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    invoke-direct {p0, p1}, Lm0/a;->e(Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;)Z

    move-result p1

    return p1
.end method
