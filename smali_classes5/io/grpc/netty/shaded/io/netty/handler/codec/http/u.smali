.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkg/j;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    .line 3
    invoke-virtual {p2, v2}, Lkg/j;->n0(I)Lkg/j;

    .line 4
    invoke-virtual {p2}, Lkg/j;->K2()I

    move-result v2

    .line 5
    invoke-static {p2, v2, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/u;->b(Lkg/j;ILjava/lang/CharSequence;)V

    add-int/2addr v2, v0

    const/16 p0, 0x3a20

    .line 6
    invoke-static {p2, v2, p0}, Lkg/n;->I(Lkg/j;II)Lkg/j;

    add-int/lit8 v2, v2, 0x2

    .line 7
    invoke-static {p2, v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/u;->b(Lkg/j;ILjava/lang/CharSequence;)V

    add-int/2addr v2, v1

    const/16 p0, 0xd0a

    .line 8
    invoke-static {p2, v2, p0}, Lkg/n;->I(Lkg/j;II)Lkg/j;

    add-int/lit8 v2, v2, 0x2

    .line 9
    invoke-virtual {p2, v2}, Lkg/j;->L2(I)Lkg/j;

    return-void
.end method

.method private static b(Lkg/j;ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lkg/n;->h(Lio/grpc/netty/shaded/io/netty/util/c;ILkg/j;II)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lkg/j;->c2(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    :goto_0
    return-void
.end method
