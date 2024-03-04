.class public final Lkg/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkg/k;

.field public static final b:Ljava/nio/ByteOrder;

.field public static final c:Ljava/nio/ByteOrder;

.field public static final d:Lkg/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lkg/t0;->g:Lkg/t0;

    sput-object v0, Lkg/s0;->a:Lkg/k;

    .line 2
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v1, Lkg/s0;->b:Ljava/nio/ByteOrder;

    .line 3
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v1, Lkg/s0;->c:Ljava/nio/ByteOrder;

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1, v1}, Lkg/k;->j(II)Lkg/j;

    move-result-object v0

    sput-object v0, Lkg/s0;->d:Lkg/j;

    return-void
.end method

.method public static a()Lkg/j;
    .locals 1

    sget-object v0, Lkg/s0;->a:Lkg/k;

    invoke-interface {v0}, Lkg/k;->k()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Lkg/j;
    .locals 1

    sget-object v0, Lkg/s0;->a:Lkg/k;

    invoke-interface {v0, p0}, Lkg/k;->b(I)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lkg/j;
    .locals 1

    const-string v0, "string"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Lkg/s0;->f(Ljava/lang/CharSequence;)Lkg/j;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0}, Lkg/s0;->e(Ljava/lang/CharSequence;)Lkg/j;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    instance-of v0, p0, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_2

    .line 7
    check-cast p0, Ljava/nio/CharBuffer;

    invoke-static {p0, p1}, Lkg/s0;->d(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lkg/j;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-static {p0, p1}, Lkg/s0;->d(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lkg/j;
    .locals 3

    sget-object v0, Lkg/s0;->a:Lkg/k;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lkg/n;->k(Lkg/k;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/lang/CharSequence;)Lkg/j;
    .locals 2

    .line 1
    sget-object v0, Lkg/s0;->a:Lkg/k;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lkg/k;->b(I)Lkg/j;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0, p0}, Lkg/n;->Y(Lkg/j;Ljava/lang/CharSequence;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 3
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 4
    throw p0
.end method

.method private static f(Ljava/lang/CharSequence;)Lkg/j;
    .locals 2

    .line 1
    sget-object v0, Lkg/s0;->a:Lkg/k;

    invoke-static {p0}, Lkg/n;->T(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {v0, v1}, Lkg/k;->b(I)Lkg/j;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-static {v0, p0}, Lkg/n;->e0(Lkg/j;Ljava/lang/CharSequence;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    .line 3
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 4
    throw p0
.end method

.method public static g(I)Lkg/j;
    .locals 1

    sget-object v0, Lkg/s0;->a:Lkg/k;

    invoke-interface {v0, p0}, Lkg/k;->h(I)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lkg/j;)Lkg/j;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 2
    sget-object v1, Lkg/s0;->b:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lkg/l0;

    invoke-direct {v0, p0}, Lkg/l0;-><init>(Lkg/j;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lkg/l0;

    invoke-virtual {p0, v1}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p0

    invoke-direct {v0, p0}, Lkg/l0;-><init>(Lkg/j;)V

    sget-object p0, Lkg/s0;->c:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Lkg/a;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lkg/j;)Lkg/j;
    .locals 1

    new-instance v0, Lkg/b1;

    invoke-direct {v0, p0}, Lkg/b1;-><init>(Lkg/j;)V

    return-object v0
.end method

.method public static j(Ljava/nio/ByteBuffer;)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lkg/s0;->d:Lkg/j;

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 7
    invoke-static {v0, v1, v2}, Lkg/s0;->l([BII)Lkg/j;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lkg/n0;

    sget-object v1, Lkg/s0;->a:Lkg/k;

    invoke-direct {v0, v1, p0}, Lkg/n0;-><init>(Lkg/k;Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 13
    :cond_2
    new-instance v0, Lkg/m0;

    sget-object v1, Lkg/s0;->a:Lkg/k;

    invoke-direct {v0, v1, p0}, Lkg/m0;-><init>(Lkg/k;Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 14
    :cond_3
    new-instance v0, Lkg/y0;

    sget-object v1, Lkg/s0;->a:Lkg/k;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lkg/y0;-><init>(Lkg/k;Ljava/nio/ByteBuffer;I)V

    return-object v0

    .line 15
    :cond_4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    new-instance v0, Lkg/m0;

    sget-object v1, Lkg/s0;->a:Lkg/k;

    invoke-direct {v0, v1, p0}, Lkg/m0;-><init>(Lkg/k;Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 17
    :cond_5
    new-instance v0, Lkg/u0;

    sget-object v1, Lkg/s0;->a:Lkg/k;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lkg/u0;-><init>(Lkg/k;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method

.method public static k([B)Lkg/j;
    .locals 3

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lkg/s0;->d:Lkg/j;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lkg/w0;

    sget-object v1, Lkg/s0;->a:Lkg/k;

    array-length v2, p0

    invoke-direct {v0, v1, p0, v2}, Lkg/w0;-><init>(Lkg/k;[BI)V

    return-object v0
.end method

.method public static l([BII)Lkg/j;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    sget-object p0, Lkg/s0;->d:Lkg/j;

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    array-length v0, p0

    if-ne p2, v0, :cond_1

    .line 3
    invoke-static {p0}, Lkg/s0;->k([B)Lkg/j;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Lkg/s0;->k([B)Lkg/j;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lkg/j;->n2(II)Lkg/j;

    move-result-object p0

    return-object p0
.end method
