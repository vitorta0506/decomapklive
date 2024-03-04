.class Lxg/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxg/o$b;,
        Lxg/o$c;
    }
.end annotation


# instance fields
.field private final a:Lxg/g;

.field private final b:Lyg/b;

.field private c:I

.field private final d:Lxg/o$b;


# direct methods
.method constructor <init>(Lxg/g;Lyg/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transport"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxg/g;

    iput-object p1, p0, Lxg/o;->a:Lxg/g;

    const-string p1, "frameWriter"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyg/b;

    iput-object p1, p0, Lxg/o;->b:Lyg/b;

    const p1, 0xffff

    .line 4
    iput p1, p0, Lxg/o;->c:I

    .line 5
    new-instance p2, Lxg/o$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1}, Lxg/o$b;-><init>(Lxg/o;II)V

    iput-object p2, p0, Lxg/o;->d:Lxg/o$b;

    return-void
.end method

.method static synthetic a(Lxg/o;)Lxg/o$b;
    .locals 0

    iget-object p0, p0, Lxg/o;->d:Lxg/o$b;

    return-object p0
.end method

.method static synthetic b(Lxg/o;)Lyg/b;
    .locals 0

    iget-object p0, p0, Lxg/o;->b:Lyg/b;

    return-object p0
.end method

.method private f(Lxg/f;)Lxg/o$b;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lxg/f;->N()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lxg/o$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lxg/o$b;

    iget v1, p0, Lxg/o;->c:I

    invoke-direct {v0, p0, p1, v1}, Lxg/o$b;-><init>(Lxg/o;Lxg/f;I)V

    .line 3
    invoke-virtual {p1, v0}, Lxg/f;->Q(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method c(ZILokio/Buffer;Z)V
    .locals 4

    const-string v0, "source"

    .line 1
    invoke-static {p3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lxg/o;->a:Lxg/g;

    invoke-virtual {v0, p2}, Lxg/g;->a0(I)Lxg/f;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lxg/o;->f(Lxg/f;)Lxg/o$b;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lxg/o$b;->j()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Lxg/o$b;->e()Z

    move-result v1

    .line 6
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v2

    long-to-int v3, v2

    if-nez v1, :cond_1

    if-lt v0, v3, :cond_1

    .line 7
    invoke-virtual {p2, p3, v3, p1}, Lxg/o$b;->k(Lokio/Buffer;IZ)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p2, p3, v0, v1}, Lxg/o$b;->k(Lokio/Buffer;IZ)V

    .line 9
    :cond_2
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p2, p3, v1, p1}, Lxg/o$b;->d(Lokio/Buffer;IZ)V

    :goto_0
    if-eqz p4, :cond_3

    .line 10
    invoke-virtual {p0}, Lxg/o;->d()V

    :cond_3
    return-void
.end method

.method d()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lxg/o;->b:Lyg/b;

    invoke-interface {v0}, Lyg/b;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method e(I)Z
    .locals 7

    if-ltz p1, :cond_3

    .line 1
    iget v0, p0, Lxg/o;->c:I

    sub-int v0, p1, v0

    .line 2
    iput p1, p0, Lxg/o;->c:I

    .line 3
    iget-object p1, p0, Lxg/o;->a:Lxg/g;

    invoke-virtual {p1}, Lxg/g;->W()[Lxg/f;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 4
    invoke-virtual {v4}, Lxg/f;->N()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lxg/o$b;

    if-nez v5, :cond_0

    .line 5
    new-instance v5, Lxg/o$b;

    iget v6, p0, Lxg/o;->c:I

    invoke-direct {v5, p0, v4, v6}, Lxg/o$b;-><init>(Lxg/o;Lxg/f;I)V

    .line 6
    invoke-virtual {v4, v5}, Lxg/f;->Q(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v5, v0}, Lxg/o$b;->f(I)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid initial window size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method g(Lxg/f;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lxg/o;->d:Lxg/o$b;

    invoke-virtual {p1, p2}, Lxg/o$b;->f(I)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lxg/o;->h()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lxg/o;->f(Lxg/f;)Lxg/o$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lxg/o$b;->f(I)I

    move-result p2

    .line 5
    new-instance v0, Lxg/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxg/o$c;-><init>(Lxg/o$a;)V

    .line 6
    invoke-virtual {p1}, Lxg/o$b;->j()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lxg/o$b;->l(ILxg/o$c;)I

    .line 7
    invoke-virtual {v0}, Lxg/o$c;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lxg/o;->d()V

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method h()V
    .locals 9

    .line 1
    iget-object v0, p0, Lxg/o;->a:Lxg/g;

    invoke-virtual {v0}, Lxg/g;->W()[Lxg/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lxg/o;->d:Lxg/o$b;

    invoke-virtual {v1}, Lxg/o$b;->i()I

    move-result v1

    .line 3
    array-length v2, v0

    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    if-lez v1, :cond_2

    .line 5
    aget-object v6, v0, v5

    .line 6
    invoke-direct {p0, v6}, Lxg/o;->f(Lxg/f;)Lxg/o$b;

    move-result-object v7

    .line 7
    invoke-virtual {v7}, Lxg/o$b;->h()I

    move-result v8

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-lez v8, :cond_0

    .line 8
    invoke-virtual {v7, v8}, Lxg/o$b;->a(I)V

    sub-int/2addr v1, v8

    .line 9
    :cond_0
    invoke-virtual {v7}, Lxg/o$b;->h()I

    move-result v7

    if-lez v7, :cond_1

    add-int/lit8 v7, v3, 0x1

    .line 10
    aput-object v6, v0, v3

    move v3, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0

    .line 11
    :cond_3
    new-instance v0, Lxg/o$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxg/o$c;-><init>(Lxg/o$a;)V

    .line 12
    iget-object v1, p0, Lxg/o;->a:Lxg/g;

    invoke-virtual {v1}, Lxg/g;->W()[Lxg/f;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 13
    invoke-direct {p0, v4}, Lxg/o;->f(Lxg/f;)Lxg/o$b;

    move-result-object v4

    .line 14
    invoke-virtual {v4}, Lxg/o$b;->b()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lxg/o$b;->l(ILxg/o$c;)I

    .line 15
    invoke-virtual {v4}, Lxg/o$b;->c()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {v0}, Lxg/o$c;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0}, Lxg/o;->d()V

    :cond_5
    return-void
.end method
