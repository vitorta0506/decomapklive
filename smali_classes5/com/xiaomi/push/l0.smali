.class public final Lcom/xiaomi/push/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[B

.field private b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/InputStream;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/xiaomi/push/l0;->h:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/xiaomi/push/l0;->j:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/xiaomi/push/l0;->k:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/push/l0;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/l0;->b:I

    iput v0, p0, Lcom/xiaomi/push/l0;->d:I

    iput-object p1, p0, Lcom/xiaomi/push/l0;->e:Ljava/io/InputStream;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/xiaomi/push/l0;->h:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/xiaomi/push/l0;->j:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/xiaomi/push/l0;->k:I

    iput-object p1, p0, Lcom/xiaomi/push/l0;->a:[B

    add-int/2addr p3, p2

    iput p3, p0, Lcom/xiaomi/push/l0;->b:I

    iput p2, p0, Lcom/xiaomi/push/l0;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/push/l0;->e:Ljava/io/InputStream;

    return-void
.end method

.method public static f(Ljava/io/InputStream;)Lcom/xiaomi/push/l0;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/l0;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/l0;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static g([BII)Lcom/xiaomi/push/l0;
    .locals 1

    new-instance v0, Lcom/xiaomi/push/l0;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/push/l0;-><init>([BII)V

    return-object v0
.end method

.method private n(Z)Z
    .locals 5

    iget v0, p0, Lcom/xiaomi/push/l0;->d:I

    iget v1, p0, Lcom/xiaomi/push/l0;->b:I

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/xiaomi/push/l0;->g:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/xiaomi/push/l0;->h:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_0

    return v4

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/d;->a()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1

    :cond_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/push/l0;->g:I

    iput v4, p0, Lcom/xiaomi/push/l0;->d:I

    iget-object v0, p0, Lcom/xiaomi/push/l0;->e:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/push/l0;->a:[B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/xiaomi/push/l0;->b:I

    if-eqz v0, :cond_6

    if-lt v0, v1, :cond_6

    if-ne v0, v1, :cond_4

    iput v4, p0, Lcom/xiaomi/push/l0;->b:I

    if-nez p1, :cond_3

    return v4

    :cond_3
    invoke-static {}, Lcom/xiaomi/push/d;->a()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/push/l0;->r()V

    iget p1, p0, Lcom/xiaomi/push/l0;->g:I

    iget v0, p0, Lcom/xiaomi/push/l0;->b:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/xiaomi/push/l0;->c:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/xiaomi/push/l0;->k:I

    if-gt p1, v0, :cond_5

    if-ltz p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    invoke-static {}, Lcom/xiaomi/push/d;->h()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaomi/push/l0;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nThe InputStream implementation is buggy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "refillBuffer() called when buffer wasn\'t empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private r()V
    .locals 3

    iget v0, p0, Lcom/xiaomi/push/l0;->b:I

    iget v1, p0, Lcom/xiaomi/push/l0;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/push/l0;->b:I

    iget v1, p0, Lcom/xiaomi/push/l0;->g:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/xiaomi/push/l0;->h:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/push/l0;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/push/l0;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/l0;->c:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()B
    .locals 3

    iget v0, p0, Lcom/xiaomi/push/l0;->d:I

    iget v1, p0, Lcom/xiaomi/push/l0;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/push/l0;->n(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/l0;->a:[B

    iget v1, p0, Lcom/xiaomi/push/l0;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/xiaomi/push/l0;->d:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public b()I
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/l0;->f:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->x()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/push/l0;->f:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/push/d;->d()Lcom/xiaomi/push/d;

    move-result-object v0

    throw v0
.end method

.method public c(I)I
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/xiaomi/push/l0;->g:I

    iget v1, p0, Lcom/xiaomi/push/l0;->d:I

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/xiaomi/push/l0;->h:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/xiaomi/push/l0;->h:I

    invoke-direct {p0}, Lcom/xiaomi/push/l0;->r()V

    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/d;->a()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {}, Lcom/xiaomi/push/d;->b()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1
.end method

.method public d()J
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Lcom/xiaomi/push/a;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->x()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/push/l0;->b:I

    iget v2, p0, Lcom/xiaomi/push/l0;->d:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/l0;->a:[B

    invoke-static {v1, v2, v0}, Lcom/xiaomi/push/a;->c([BII)Lcom/xiaomi/push/a;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/push/l0;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/xiaomi/push/l0;->d:I

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/push/l0;->o(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/a;->b([B)Lcom/xiaomi/push/a;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->x()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/push/l0;->b:I

    iget v2, p0, Lcom/xiaomi/push/l0;->d:I

    sub-int/2addr v1, v2

    const-string v3, "UTF-8"

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/l0;->a:[B

    invoke-direct {v1, v4, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/push/l0;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/xiaomi/push/l0;->d:I

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/l0;->o(I)[B

    move-result-object v0

    invoke-direct {v1, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public i()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->b()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/l0;->m(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public j(I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/l0;->f:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/d;->e()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1
.end method

.method public k(Lcom/xiaomi/push/g2;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->x()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/push/l0;->i:I

    iget v2, p0, Lcom/xiaomi/push/l0;->j:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/l0;->c(I)I

    move-result v0

    iget v1, p0, Lcom/xiaomi/push/l0;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/push/l0;->i:I

    invoke-virtual {p1, p0}, Lcom/xiaomi/push/g2;->b(Lcom/xiaomi/push/l0;)Lcom/xiaomi/push/g2;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/l0;->j(I)V

    iget p1, p0, Lcom/xiaomi/push/l0;->i:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/xiaomi/push/l0;->i:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/l0;->s(I)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/d;->g()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->x()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(I)Z
    .locals 4

    invoke-static {p1}, Lcom/xiaomi/push/w2;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->y()I

    return v1

    :cond_0
    invoke-static {}, Lcom/xiaomi/push/d;->f()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->i()V

    invoke-static {p1}, Lcom/xiaomi/push/w2;->c(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/xiaomi/push/w2;->b(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/l0;->j(I)V

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->x()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/l0;->w(I)V

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->v()J

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->p()I

    return v1
.end method

.method public o(I)[B
    .locals 12

    if-ltz p1, :cond_9

    iget v0, p0, Lcom/xiaomi/push/l0;->g:I

    iget v1, p0, Lcom/xiaomi/push/l0;->d:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/xiaomi/push/l0;->h:I

    if-gt v2, v3, :cond_8

    iget v2, p0, Lcom/xiaomi/push/l0;->b:I

    sub-int v3, v2, v1

    const/4 v4, 0x0

    if-gt p1, v3, :cond_0

    new-array v0, p1, [B

    iget-object v2, p0, Lcom/xiaomi/push/l0;->a:[B

    invoke-static {v2, v1, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/xiaomi/push/l0;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/xiaomi/push/l0;->d:I

    return-object v0

    :cond_0
    const/16 v3, 0x1000

    if-ge p1, v3, :cond_2

    new-array v0, p1, [B

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/xiaomi/push/l0;->a:[B

    invoke-static {v3, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/xiaomi/push/l0;->b:I

    iput v1, p0, Lcom/xiaomi/push/l0;->d:I

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/xiaomi/push/l0;->n(Z)Z

    sub-int v3, p1, v2

    iget v5, p0, Lcom/xiaomi/push/l0;->b:I

    if-le v3, v5, :cond_1

    iget-object v3, p0, Lcom/xiaomi/push/l0;->a:[B

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/xiaomi/push/l0;->b:I

    add-int/2addr v2, v3

    iput v3, p0, Lcom/xiaomi/push/l0;->d:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/push/l0;->a:[B

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lcom/xiaomi/push/l0;->d:I

    return-object v0

    :cond_2
    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaomi/push/l0;->g:I

    iput v4, p0, Lcom/xiaomi/push/l0;->d:I

    iput v4, p0, Lcom/xiaomi/push/l0;->b:I

    sub-int/2addr v2, v1

    sub-int v0, p1, v2

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    :goto_1
    if-lez v0, :cond_6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v7, v6, [B

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_5

    iget-object v9, p0, Lcom/xiaomi/push/l0;->e:Ljava/io/InputStream;

    const/4 v10, -0x1

    if-nez v9, :cond_3

    const/4 v9, -0x1

    goto :goto_3

    :cond_3
    sub-int v11, v6, v8

    invoke-virtual {v9, v7, v8, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    :goto_3
    if-eq v9, v10, :cond_4

    iget v10, p0, Lcom/xiaomi/push/l0;->g:I

    add-int/2addr v10, v9

    iput v10, p0, Lcom/xiaomi/push/l0;->g:I

    add-int/2addr v8, v9

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/xiaomi/push/d;->a()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1

    :cond_5
    sub-int/2addr v0, v6

    invoke-virtual {v5, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    new-array p1, p1, [B

    iget-object v0, p0, Lcom/xiaomi/push/l0;->a:[B

    invoke-static {v0, v1, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v3, v1

    invoke-static {v1, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    return-object p1

    :cond_8
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/l0;->w(I)V

    invoke-static {}, Lcom/xiaomi/push/d;->a()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1

    :cond_9
    invoke-static {}, Lcom/xiaomi/push/d;->b()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1
.end method

.method public p()I
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->x()I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/push/d;->c()Lcom/xiaomi/push/d;

    move-result-object v0

    throw v0
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/push/l0;->h:I

    invoke-direct {p0}, Lcom/xiaomi/push/l0;->r()V

    return-void
.end method

.method public t()Z
    .locals 3

    iget v0, p0, Lcom/xiaomi/push/l0;->d:I

    iget v1, p0, Lcom/xiaomi/push/l0;->b:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/xiaomi/push/l0;->n(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public u()I
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->x()I

    move-result v0

    return v0
.end method

.method public v()J
    .locals 13

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v4

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v5

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v6

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v7

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v0, v1

    and-long/2addr v0, v10

    const/16 v12, 0x8

    shl-long/2addr v0, v12

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v10

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v10

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v10

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v10

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v10

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v10

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public w(I)V
    .locals 4

    if-ltz p1, :cond_5

    iget v0, p0, Lcom/xiaomi/push/l0;->g:I

    iget v1, p0, Lcom/xiaomi/push/l0;->d:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/xiaomi/push/l0;->h:I

    if-gt v2, v3, :cond_4

    iget v2, p0, Lcom/xiaomi/push/l0;->b:I

    sub-int v3, v2, v1

    if-gt p1, v3, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/xiaomi/push/l0;->d:I

    goto :goto_2

    :cond_0
    sub-int v1, v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/xiaomi/push/l0;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/l0;->d:I

    iput v0, p0, Lcom/xiaomi/push/l0;->b:I

    :goto_0
    if-ge v1, p1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/l0;->e:Ljava/io/InputStream;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    sub-int v2, p1, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v0, v2

    :goto_1
    if-lez v0, :cond_2

    add-int/2addr v1, v0

    iget v2, p0, Lcom/xiaomi/push/l0;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/xiaomi/push/l0;->g:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/push/d;->a()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1

    :cond_3
    :goto_2
    return-void

    :cond_4
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/xiaomi/push/l0;->w(I)V

    invoke-static {}, Lcom/xiaomi/push/d;->a()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1

    :cond_5
    invoke-static {}, Lcom/xiaomi/push/d;->b()Lcom/xiaomi/push/d;

    move-result-object p1

    throw p1
.end method

.method public x()I
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 v1, v1, 0x7

    :goto_0
    or-int/2addr v0, v1

    goto :goto_2

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v2

    if-ltz v2, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/xiaomi/push/d;->c()Lcom/xiaomi/push/d;

    move-result-object v0

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public y()I
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/push/l0;->a()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method
