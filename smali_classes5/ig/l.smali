.class abstract Lig/l;
.super Lig/a;
.source "SourceFile"


# static fields
.field private static final d:Lio/grpc/netty/shaded/io/netty/util/c;


# instance fields
.field private a:[[B

.field private b:[Lio/grpc/netty/shaded/io/netty/util/c;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/c;

    sget-object v1, Lcom/google/common/base/e;->a:Ljava/nio/charset/Charset;

    const-string v2, "-bin"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>([B)V

    sput-object v0, Lig/l;->d:Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lig/a;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "numHeadersGuess needs to be positive: %s"

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/common/base/o;->h(ZLjava/lang/String;I)V

    mul-int/lit8 v0, p1, 0x2

    .line 3
    new-array v0, v0, [[B

    iput-object v0, p0, Lig/l;->a:[[B

    .line 4
    new-array p1, p1, [Lio/grpc/netty/shaded/io/netty/util/c;

    iput-object p1, p0, Lig/l;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method private B()V
    .locals 5

    .line 1
    iget-object v0, p0, Lig/l;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v1, v0

    array-length v0, v0

    const/4 v2, 0x2

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    .line 2
    new-array v1, v1, [[B

    .line 3
    new-array v0, v0, [Lio/grpc/netty/shaded/io/netty/util/c;

    .line 4
    iget-object v2, p0, Lig/l;->a:[[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v2, p0, Lig/l;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iput-object v1, p0, Lig/l;->a:[[B

    .line 7
    iput-object v0, p0, Lig/l;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    return-void
.end method

.method protected static K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 3

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/c;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsciiString expected. Was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n(Lio/grpc/netty/shaded/io/netty/util/c;[B[B)V
    .locals 3

    .line 1
    iget v0, p0, Lig/l;->c:I

    iget-object v1, p0, Lig/l;->a:[[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lig/l;->B()V

    .line 3
    :cond_0
    iget-object v0, p0, Lig/l;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    iget v1, p0, Lig/l;->c:I

    div-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    .line 4
    iget-object p1, p0, Lig/l;->a:[[B

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lig/l;->c:I

    .line 6
    aput-object p3, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 7
    iput v1, p0, Lig/l;->c:I

    return-void
.end method

.method protected static u(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 0

    if-eqz p3, :cond_0

    const-string p3, ", "

    .line 1
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected static x(Lio/grpc/netty/shaded/io/netty/util/c;)[B
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->F()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected static y(Lio/grpc/netty/shaded/io/netty/util/c;[B)Z
    .locals 6

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v2

    array-length v5, p1

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lig/l;->z([BII[BII)Z

    move-result p0

    return p0
.end method

.method protected static z([BII[BII)Z
    .locals 0

    if-eq p2, p5, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1, p3, p4, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->w([BI[BII)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected F(Lio/grpc/netty/shaded/io/netty/util/c;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lig/l;->c:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lig/l;->a:[[B

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lig/l;->y(Lio/grpc/netty/shaded/io/netty/util/c;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lig/l;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    div-int/lit8 v0, v0, 0x2

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method G()[[B
    .locals 1

    iget-object v0, p0, Lig/l;->a:[[B

    return-object v0
.end method

.method protected final H()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lig/l;->c:I

    if-ge v1, v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lig/l;->a:[[B

    aget-object v4, v4, v1

    sget-object v5, Lcom/google/common/base/e;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 4
    iget-object v4, p0, Lig/l;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    div-int/lit8 v5, v1, 0x2

    aget-object v4, v4, v5

    .line 5
    invoke-static {v0, v3, v4, v2}, Lig/l;->u(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected I()I
    .locals 1

    iget v0, p0, Lig/l;->c:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public J(Ljava/lang/CharSequence;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lig/l;->K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lig/l;->c:I

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lig/l;->a:[[B

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lig/l;->y(Lio/grpc/netty/shaded/io/netty/util/c;[B)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget v2, p0, Lig/l;->c:I

    if-lt v1, v2, :cond_2

    return v0

    :cond_2
    move v0, v1

    .line 5
    :goto_2
    iget v2, p0, Lig/l;->c:I

    if-ge v1, v2, :cond_4

    .line 6
    iget-object v2, p0, Lig/l;->a:[[B

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lig/l;->y(Lio/grpc/netty/shaded/io/netty/util/c;[B)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    iget-object v2, p0, Lig/l;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v4, v1, 0x2

    aget-object v4, v2, v4

    aput-object v4, v2, v3

    .line 8
    iget-object v2, p0, Lig/l;->a:[[B

    aget-object v3, v2, v1

    aput-object v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, 0x1

    .line 9
    aget-object v4, v2, v4

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x2

    :goto_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 10
    :cond_4
    iput v0, p0, Lig/l;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic K0(Ljava/lang/Object;J)Lpg/i;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lig/l;->g(Ljava/lang/CharSequence;J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public L(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lig/l;->J(Ljava/lang/CharSequence;)Z

    .line 2
    invoke-virtual {p0, p1, p2}, Lig/a;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method protected M(Lio/grpc/netty/shaded/io/netty/util/c;)Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->b()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/c;->a()[B

    move-result-object v2

    move v3, v0

    :goto_0
    add-int v4, v0, v1

    if-ge v3, v4, :cond_1

    .line 4
    aget-byte v4, v2, v3

    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/util/c;->x(B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const-string v6, "invalid header name \'%s\'"

    invoke-static {v4, v6, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v4

    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public bridge synthetic d0(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lig/l;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lig/l;->K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lig/l;->c:I

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lig/l;->a:[[B

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lig/l;->y(Lio/grpc/netty/shaded/io/netty/util/c;[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lig/l;->b:[Lio/grpc/netty/shaded/io/netty/util/c;

    div-int/lit8 v3, v1, 0x2

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public g(Ljava/lang/CharSequence;J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 1

    sget-object v0, Lpg/b;->a:Lpg/b;

    invoke-virtual {v0, p2, p3}, Lpg/b;->b(J)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lig/l;->L(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method protected m(Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
    .locals 6

    .line 1
    invoke-static {p1}, Lig/l;->x(Lio/grpc/netty/shaded/io/netty/util/c;)[B

    move-result-object v0

    .line 2
    sget-object v1, Lig/l;->d:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1, v1}, Lio/grpc/netty/shaded/io/netty/util/c;->m(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {p2}, Lig/l;->x(Lio/grpc/netty/shaded/io/netty/util/c;)[B

    move-result-object p1

    .line 4
    invoke-direct {p0, p2, v0, p1}, Lig/l;->n(Lio/grpc/netty/shaded/io/netty/util/c;[B[B)V

    return-object p0

    :cond_0
    const/4 p1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    const/16 v2, 0x2c

    .line 6
    invoke-virtual {p2, v2, v3}, Lio/grpc/netty/shaded/io/netty/util/c;->t(CI)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 7
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/util/c;->length()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    .line 8
    :goto_1
    invoke-virtual {p2, v3, v4, v1}, Lio/grpc/netty/shaded/io/netty/util/c;->C(IIZ)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v3

    .line 9
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->b()Lcom/google/common/io/BaseEncoding;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/common/io/BaseEncoding;->d(Ljava/lang/CharSequence;)[B

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    .line 10
    invoke-direct {p0, v3, v0, v5}, Lig/l;->n(Lio/grpc/netty/shaded/io/netty/util/c;[B[B)V

    move v3, v2

    move v2, v4

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lig/l;->I()I

    move-result v0

    return v0
.end method

.method public t()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lig/l;->F(Lio/grpc/netty/shaded/io/netty/util/c;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
