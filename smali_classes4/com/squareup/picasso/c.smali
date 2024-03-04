.class Lcom/squareup/picasso/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final t:Ljava/lang/Object;

.field private static final u:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final w:Lcom/squareup/picasso/u;


# instance fields
.field final a:I

.field final b:Lcom/squareup/picasso/Picasso;

.field final c:Lcom/squareup/picasso/i;

.field final d:Lcom/squareup/picasso/d;

.field final e:Lcom/squareup/picasso/w;

.field final f:Ljava/lang/String;

.field final g:Lcom/squareup/picasso/s;

.field final h:I

.field i:I

.field final j:Lcom/squareup/picasso/u;

.field k:Lcom/squareup/picasso/a;

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/graphics/Bitmap;

.field n:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field o:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field p:Ljava/lang/Exception;

.field q:I

.field r:I

.field s:Lcom/squareup/picasso/Picasso$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->t:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/squareup/picasso/c$a;

    invoke-direct {v0}, Lcom/squareup/picasso/c$a;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->u:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Lcom/squareup/picasso/c$b;

    invoke-direct {v0}, Lcom/squareup/picasso/c$b;-><init>()V

    sput-object v0, Lcom/squareup/picasso/c;->w:Lcom/squareup/picasso/u;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/w;Lcom/squareup/picasso/a;Lcom/squareup/picasso/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/squareup/picasso/c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/c;->a:I

    .line 3
    iput-object p1, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    .line 4
    iput-object p2, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    .line 5
    iput-object p3, p0, Lcom/squareup/picasso/c;->d:Lcom/squareup/picasso/d;

    .line 6
    iput-object p4, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/w;

    .line 7
    iput-object p5, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    .line 8
    invoke-virtual {p5}, Lcom/squareup/picasso/a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {p5}, Lcom/squareup/picasso/a;->i()Lcom/squareup/picasso/s;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    .line 10
    invoke-virtual {p5}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    .line 11
    invoke-virtual {p5}, Lcom/squareup/picasso/a;->e()I

    move-result p1

    iput p1, p0, Lcom/squareup/picasso/c;->h:I

    .line 12
    invoke-virtual {p5}, Lcom/squareup/picasso/a;->f()I

    move-result p1

    iput p1, p0, Lcom/squareup/picasso/c;->i:I

    .line 13
    iput-object p6, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/u;

    .line 14
    invoke-virtual {p6}, Lcom/squareup/picasso/u;->e()I

    move-result p1

    iput p1, p0, Lcom/squareup/picasso/c;->r:I

    return-void
.end method

.method static b(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/a0;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/a0;

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-interface {v2, p1}, Lcom/squareup/picasso/a0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transformation "

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {v2}, Lcom/squareup/picasso/a0;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null after "

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/a0;

    .line 11
    invoke-interface {v0}, Lcom/squareup/picasso/a0;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 12
    :cond_0
    sget-object p0, Lcom/squareup/picasso/Picasso;->p:Landroid/os/Handler;

    new-instance v0, Lcom/squareup/picasso/c$d;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/c$d;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_1
    if-ne v4, p1, :cond_2

    .line 13
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 14
    sget-object p0, Lcom/squareup/picasso/Picasso;->p:Landroid/os/Handler;

    new-instance p1, Lcom/squareup/picasso/c$e;

    invoke-direct {p1, v2}, Lcom/squareup/picasso/c$e;-><init>(Lcom/squareup/picasso/a0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_2
    if-eq v4, p1, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    sget-object p0, Lcom/squareup/picasso/Picasso;->p:Landroid/os/Handler;

    new-instance p1, Lcom/squareup/picasso/c$f;

    invoke-direct {p1, v2}, Lcom/squareup/picasso/c$f;-><init>(Lcom/squareup/picasso/a0;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/squareup/picasso/Picasso;->p:Landroid/os/Handler;

    new-instance v0, Lcom/squareup/picasso/c$c;

    invoke-direct {v0, v2, p0}, Lcom/squareup/picasso/c$c;-><init>(Lcom/squareup/picasso/a0;Ljava/lang/RuntimeException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_4
    return-object p1
.end method

.method private f()Lcom/squareup/picasso/Picasso$Priority;
    .locals 6

    .line 1
    sget-object v0, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    .line 2
    iget-object v1, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    return-object v0

    :cond_3
    if-eqz v4, :cond_4

    .line 4
    invoke-virtual {v4}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    :cond_4
    if-eqz v1, :cond_6

    .line 5
    iget-object v1, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_6

    .line 6
    iget-object v2, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/a;

    invoke-virtual {v2}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_5

    move-object v0, v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method static g(Ljava/io/InputStream;Lcom/squareup/picasso/s;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/squareup/picasso/m;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/m;-><init>(Ljava/io/InputStream;)V

    const/high16 p0, 0x10000

    .line 2
    invoke-virtual {v0, p0}, Lcom/squareup/picasso/m;->b(I)J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lcom/squareup/picasso/u;->d(Lcom/squareup/picasso/s;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    .line 4
    invoke-static {p0}, Lcom/squareup/picasso/u;->g(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    .line 5
    invoke-static {v0}, Lcom/squareup/picasso/c0;->t(Ljava/io/InputStream;)Z

    move-result v4

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/m;->a(J)V

    if-eqz v4, :cond_1

    .line 7
    invoke-static {v0}, Lcom/squareup/picasso/c0;->x(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    .line 8
    array-length v2, v0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 9
    iget v2, p1, Lcom/squareup/picasso/s;->h:I

    iget v3, p1, Lcom/squareup/picasso/s;->i:I

    invoke-static {v2, v3, p0, p1}, Lcom/squareup/picasso/u;->b(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/s;)V

    .line 10
    :cond_0
    array-length p1, v0

    invoke-static {v0, v1, p1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 11
    invoke-static {v0, v4, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 12
    iget v3, p1, Lcom/squareup/picasso/s;->h:I

    iget v5, p1, Lcom/squareup/picasso/s;->i:I

    invoke-static {v3, v5, p0, p1}, Lcom/squareup/picasso/u;->b(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/s;)V

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/m;->a(J)V

    .line 14
    :cond_2
    invoke-static {v0, v4, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    .line 15
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to decode stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static i(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/w;Lcom/squareup/picasso/a;)Lcom/squareup/picasso/c;
    .locals 12

    .line 1
    invoke-virtual/range {p4 .. p4}, Lcom/squareup/picasso/a;->i()Lcom/squareup/picasso/s;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->i()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 4
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/squareup/picasso/u;

    .line 5
    invoke-virtual {v11, v0}, Lcom/squareup/picasso/u;->c(Lcom/squareup/picasso/s;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    new-instance v0, Lcom/squareup/picasso/c;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/squareup/picasso/c;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/w;Lcom/squareup/picasso/a;Lcom/squareup/picasso/u;)V

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lcom/squareup/picasso/c;

    sget-object v10, Lcom/squareup/picasso/c;->w:Lcom/squareup/picasso/u;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/squareup/picasso/c;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/i;Lcom/squareup/picasso/d;Lcom/squareup/picasso/w;Lcom/squareup/picasso/a;Lcom/squareup/picasso/u;)V

    return-object v0
.end method

.method private static v(ZIIII)Z
    .locals 0

    if-eqz p0, :cond_1

    if-gt p1, p3, :cond_1

    if-le p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static y(Lcom/squareup/picasso/s;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    iget-boolean v2, p0, Lcom/squareup/picasso/s;->l:Z

    .line 4
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/squareup/picasso/s;->e()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    .line 6
    iget v3, p0, Lcom/squareup/picasso/s;->h:I

    .line 7
    iget v5, p0, Lcom/squareup/picasso/s;->i:I

    .line 8
    iget v6, p0, Lcom/squareup/picasso/s;->m:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_1

    .line 9
    iget-boolean v7, p0, Lcom/squareup/picasso/s;->p:Z

    if-eqz v7, :cond_0

    .line 10
    iget v7, p0, Lcom/squareup/picasso/s;->n:F

    iget v9, p0, Lcom/squareup/picasso/s;->o:F

    invoke-virtual {v8, v6, v7, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 12
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/squareup/picasso/s;->j:Z

    if-eqz v6, :cond_4

    int-to-float p0, v3

    int-to-float v6, v0

    div-float v7, p0, v6

    int-to-float v9, v5

    int-to-float v10, v1

    div-float v11, v9, v10

    cmpl-float v12, v7, v11

    if-lez v12, :cond_2

    div-float/2addr v11, v7

    mul-float v10, v10, v11

    float-to-double v10, v10

    .line 13
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int p0, v10

    sub-int v6, v1, p0

    .line 14
    div-int/lit8 v6, v6, 0x2

    int-to-float v10, p0

    div-float v11, v9, v10

    move v9, v7

    move v7, v0

    goto :goto_1

    :cond_2
    div-float/2addr v7, v11

    mul-float v6, v6, v7

    float-to-double v6, v6

    .line 15
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int v7, v0, v6

    .line 16
    div-int/lit8 v7, v7, 0x2

    int-to-float v9, v6

    div-float/2addr p0, v9

    move v9, p0

    move p0, v1

    move v4, v7

    move v7, v6

    const/4 v6, 0x0

    .line 17
    :goto_1
    invoke-static {v2, v0, v1, v3, v5}, Lcom/squareup/picasso/c;->v(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v8, v9, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    move v5, v6

    move v6, v7

    move v7, p0

    goto :goto_6

    .line 19
    :cond_4
    iget-boolean p0, p0, Lcom/squareup/picasso/s;->k:Z

    if-eqz p0, :cond_6

    int-to-float p0, v3

    int-to-float v6, v0

    div-float/2addr p0, v6

    int-to-float v6, v5

    int-to-float v7, v1

    div-float/2addr v6, v7

    cmpg-float v7, p0, v6

    if-gez v7, :cond_5

    goto :goto_2

    :cond_5
    move p0, v6

    .line 20
    :goto_2
    invoke-static {v2, v0, v1, v3, v5}, Lcom/squareup/picasso/c;->v(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 21
    invoke-virtual {v8, p0, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_5

    :cond_6
    if-nez v3, :cond_7

    if-eqz v5, :cond_b

    :cond_7
    if-ne v3, v0, :cond_8

    if-eq v5, v1, :cond_b

    :cond_8
    if-eqz v3, :cond_9

    int-to-float p0, v3

    int-to-float v6, v0

    goto :goto_3

    :cond_9
    int-to-float p0, v5

    int-to-float v6, v1

    :goto_3
    div-float/2addr p0, v6

    if-eqz v5, :cond_a

    int-to-float v6, v5

    int-to-float v7, v1

    goto :goto_4

    :cond_a
    int-to-float v6, v3

    int-to-float v7, v0

    :goto_4
    div-float/2addr v6, v7

    .line 22
    invoke-static {v2, v0, v1, v3, v5}, Lcom/squareup/picasso/c;->v(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 23
    invoke-virtual {v8, p0, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_b
    :goto_5
    move v6, v0

    move v7, v1

    const/4 v5, 0x0

    :goto_6
    if-eqz p2, :cond_c

    int-to-float p0, p2

    .line 24
    invoke-virtual {v8, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_c
    const/4 v9, 0x1

    move-object v3, p1

    .line 25
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_d

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, p0

    :cond_d
    return-object p1
.end method

.method static z(Lcom/squareup/picasso/s;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/squareup/picasso/s;->a()Ljava/lang/String;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/squareup/picasso/c;->u:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method c(Lcom/squareup/picasso/a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    .line 2
    iget-object v1, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/s;

    .line 3
    iget-object v2, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    const-string/jumbo v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_3

    .line 4
    iput-object p1, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/picasso/s;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3}, Lcom/squareup/picasso/c0;->m(Lcom/squareup/picasso/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, p1, v0}, Lcom/squareup/picasso/c0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/picasso/s;->d()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "to empty hunter"

    invoke-static {v5, v4, p1, v0}, Lcom/squareup/picasso/c0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 8
    :cond_3
    iget-object v2, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-nez v2, :cond_4

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v1}, Lcom/squareup/picasso/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/squareup/picasso/c0;->m(Lcom/squareup/picasso/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v0, v1}, Lcom/squareup/picasso/c0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_6

    .line 14
    iput-object p1, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    :cond_6
    return-void
.end method

.method d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/c;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method h(Lcom/squareup/picasso/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    const/4 v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/squareup/picasso/a;->h()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/squareup/picasso/c;->f()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/s;

    invoke-virtual {p1}, Lcom/squareup/picasso/s;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from "

    invoke-static {p0, v0}, Lcom/squareup/picasso/c0;->m(Lcom/squareup/picasso/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hunter"

    const-string v2, "removed"

    invoke-static {v1, v2, p1, v0}, Lcom/squareup/picasso/c0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method j()Lcom/squareup/picasso/a;
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    return-object v0
.end method

.method k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    return-object v0
.end method

.method l()Lcom/squareup/picasso/s;
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    return-object v0
.end method

.method m()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method o()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/c;->o:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method p()I
    .locals 1

    iget v0, p0, Lcom/squareup/picasso/c;->h:I

    return v0
.end method

.method q()Lcom/squareup/picasso/Picasso;
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method r()Lcom/squareup/picasso/Picasso$Priority;
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/c;->s:Lcom/squareup/picasso/Picasso$Priority;

    return-object v0
.end method

.method public run()V
    .locals 5

    const-string v0, "Picasso-Idle"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    invoke-static {v1}, Lcom/squareup/picasso/c;->z(Lcom/squareup/picasso/s;)V

    .line 2
    iget-object v1, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_0

    const-string v1, "Hunter"

    const-string v2, "executing"

    .line 3
    invoke-static {p0}, Lcom/squareup/picasso/c0;->l(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/c0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/picasso/c;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/c;->m:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->e(Lcom/squareup/picasso/c;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->d(Lcom/squareup/picasso/c;)V
    :try_end_0
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/squareup/picasso/o$a; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    iput-object v1, p0, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    .line 8
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->e(Lcom/squareup/picasso/c;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 9
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 10
    iget-object v3, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/w;

    invoke-virtual {v3}, Lcom/squareup/picasso/w;->a()Lcom/squareup/picasso/x;

    move-result-object v3

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/x;->a(Ljava/io/PrintWriter;)V

    .line 11
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    .line 12
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->e(Lcom/squareup/picasso/c;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 13
    iput-object v1, p0, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    .line 14
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->g(Lcom/squareup/picasso/c;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 15
    iput-object v1, p0, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    .line 16
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->g(Lcom/squareup/picasso/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v1

    .line 18
    :try_start_2
    iget-boolean v2, v1, Lcom/squareup/picasso/Downloader$ResponseException;->localCacheOnly:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/squareup/picasso/Downloader$ResponseException;->responseCode:I

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_3

    .line 19
    :cond_2
    iput-object v1, p0, Lcom/squareup/picasso/c;->p:Ljava/lang/Exception;

    .line 20
    :cond_3
    iget-object v1, p0, Lcom/squareup/picasso/c;->c:Lcom/squareup/picasso/i;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/i;->e(Lcom/squareup/picasso/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 21
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method

.method s()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/c;->m:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method t()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/squareup/picasso/c;->h:I

    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/c;->d:Lcom/squareup/picasso/d;

    iget-object v1, p0, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/squareup/picasso/d;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/w;

    invoke-virtual {v1}, Lcom/squareup/picasso/w;->d()V

    .line 4
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object v1, p0, Lcom/squareup/picasso/c;->o:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 5
    iget-object v1, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_0

    const-string v1, "Hunter"

    const-string v2, "decoded"

    .line 6
    iget-object v3, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    invoke-virtual {v3}, Lcom/squareup/picasso/s;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "from cache"

    invoke-static {v1, v2, v3, v4}, Lcom/squareup/picasso/c0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    iget v2, p0, Lcom/squareup/picasso/c;->r:I

    if-nez v2, :cond_3

    sget-object v2, Lcom/squareup/picasso/NetworkPolicy;->OFFLINE:Lcom/squareup/picasso/NetworkPolicy;

    iget v2, v2, Lcom/squareup/picasso/NetworkPolicy;->index:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/squareup/picasso/c;->i:I

    :goto_0
    iput v2, v1, Lcom/squareup/picasso/s;->c:I

    .line 8
    iget-object v2, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/u;

    iget v3, p0, Lcom/squareup/picasso/c;->i:I

    invoke-virtual {v2, v1, v3}, Lcom/squareup/picasso/u;->f(Lcom/squareup/picasso/s;I)Lcom/squareup/picasso/u$a;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Lcom/squareup/picasso/u$a;->c()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/c;->o:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 10
    invoke-virtual {v1}, Lcom/squareup/picasso/u$a;->b()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/c;->q:I

    .line 11
    invoke-virtual {v1}, Lcom/squareup/picasso/u$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 12
    invoke-virtual {v1}, Lcom/squareup/picasso/u$a;->d()Ljava/io/InputStream;

    move-result-object v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    invoke-static {v0, v1}, Lcom/squareup/picasso/c;->g(Ljava/io/InputStream;Lcom/squareup/picasso/s;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-static {v0}, Lcom/squareup/picasso/c0;->e(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/squareup/picasso/c0;->e(Ljava/io/InputStream;)V

    throw v1

    :cond_4
    :goto_1
    if-eqz v0, :cond_a

    .line 15
    iget-object v1, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v1, :cond_5

    const-string v1, "Hunter"

    const-string v2, "decoded"

    .line 16
    iget-object v3, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    invoke-virtual {v3}, Lcom/squareup/picasso/s;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/c0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/w;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/w;->b(Landroid/graphics/Bitmap;)V

    .line 18
    iget-object v1, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    invoke-virtual {v1}, Lcom/squareup/picasso/s;->f()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/squareup/picasso/c;->q:I

    if-eqz v1, :cond_a

    .line 19
    :cond_6
    sget-object v1, Lcom/squareup/picasso/c;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_1
    iget-object v2, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    invoke-virtual {v2}, Lcom/squareup/picasso/s;->e()Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lcom/squareup/picasso/c;->q:I

    if-eqz v2, :cond_8

    .line 21
    :cond_7
    iget-object v2, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    iget v3, p0, Lcom/squareup/picasso/c;->q:I

    invoke-static {v2, v0, v3}, Lcom/squareup/picasso/c;->y(Lcom/squareup/picasso/s;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v2, :cond_8

    const-string v2, "Hunter"

    const-string/jumbo v3, "transformed"

    .line 23
    iget-object v4, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    invoke-virtual {v4}, Lcom/squareup/picasso/s;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/c0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_8
    iget-object v2, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    invoke-virtual {v2}, Lcom/squareup/picasso/s;->b()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 25
    iget-object v2, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    iget-object v2, v2, Lcom/squareup/picasso/s;->g:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/squareup/picasso/c;->b(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v2, :cond_9

    const-string v2, "Hunter"

    const-string/jumbo v3, "transformed"

    .line 27
    iget-object v4, p0, Lcom/squareup/picasso/c;->g:Lcom/squareup/picasso/s;

    invoke-virtual {v4}, Lcom/squareup/picasso/s;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "from custom transformations"

    invoke-static {v2, v3, v4, v5}, Lcom/squareup/picasso/c0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_a

    .line 29
    iget-object v1, p0, Lcom/squareup/picasso/c;->e:Lcom/squareup/picasso/w;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/w;->c(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 30
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_a
    :goto_2
    return-object v0
.end method

.method u()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/c;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method w(ZLandroid/net/NetworkInfo;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/picasso/c;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    return v2

    :cond_1
    sub-int/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/squareup/picasso/c;->r:I

    .line 3
    iget-object v0, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/u;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/u;->h(ZLandroid/net/NetworkInfo;)Z

    move-result p1

    return p1
.end method

.method x()Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/picasso/c;->j:Lcom/squareup/picasso/u;

    invoke-virtual {v0}, Lcom/squareup/picasso/u;->i()Z

    move-result v0

    return v0
.end method
