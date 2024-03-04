.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;
    }
.end annotation


# direct methods
.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)[B
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object p0

    return-object p0
.end method

.method private static b(Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)[B
    .locals 1

    const-string v0, "dialect"

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;->alphabet:[B

    return-object p0
.end method

.method private static c(Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Z
    .locals 1

    const-string v0, "dialect"

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;->breakLinesByDefault:Z

    return p0
.end method

.method private static d(Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)[B
    .locals 1

    const-string v0, "dialect"

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;->decodabet:[B

    return-object p0
.end method

.method public static e(Lkg/j;)Lkg/j;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->h(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lkg/j;IILio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;
    .locals 1

    invoke-virtual {p0}, Lkg/j;->P()Lkg/k;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->g(Lkg/j;IILio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;Lkg/k;)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lkg/j;IILio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;Lkg/k;)Lkg/j;
    .locals 7

    const-string v0, "src"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "dialect"

    .line 2
    invoke-static {p3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$a;)V

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a$b;->b(Lkg/j;IILkg/k;Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;
    .locals 2

    const-string v0, "src"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->f(Lkg/j;IILio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lkg/j;->K2()I

    move-result v0

    invoke-virtual {p0, v0}, Lkg/j;->R1(I)Lkg/j;

    return-object p1
.end method

.method static i(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method public static j(Lkg/j;IIZLio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;
    .locals 6

    invoke-virtual {p0}, Lkg/j;->P()Lkg/k;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->k(Lkg/j;IIZLio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;Lkg/k;)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lkg/j;IIZLio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;Lkg/k;)Lkg/j;
    .locals 16

    move/from16 v0, p2

    const-string v1, "src"

    move-object/from16 v8, p0

    .line 1
    invoke-static {v8, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "dialect"

    move-object/from16 v2, p4

    .line 2
    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-static/range {p2 .. p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->r(IZ)I

    move-result v1

    move-object/from16 v3, p5

    invoke-interface {v3, v1}, Lkg/k;->l(I)Lkg/j;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkg/j;->w1(Ljava/nio/ByteOrder;)Lkg/j;

    move-result-object v1

    .line 4
    invoke-static/range {p4 .. p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object v9

    add-int/lit8 v10, v0, -0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/16 v15, 0xa

    if-ge v12, v10, :cond_1

    add-int v3, v12, p1

    const/4 v4, 0x3

    move-object/from16 v2, p0

    move-object v5, v1

    move v6, v13

    move-object v7, v9

    .line 5
    invoke-static/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->o(Lkg/j;IILkg/j;I[B)V

    add-int/lit8 v14, v14, 0x4

    if-eqz p3, :cond_0

    const/16 v2, 0x4c

    if-ne v14, v2, :cond_0

    add-int/lit8 v2, v13, 0x4

    .line 6
    invoke-virtual {v1, v2, v15}, Lkg/j;->X1(II)Lkg/j;

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    :cond_0
    add-int/lit8 v12, v12, 0x3

    add-int/lit8 v13, v13, 0x4

    goto :goto_0

    :cond_1
    if-ge v12, v0, :cond_2

    add-int v2, v12, p1

    sub-int/2addr v0, v12

    move/from16 p1, v2

    move/from16 p2, v0

    move-object/from16 p3, v1

    move/from16 p4, v13

    move-object/from16 p5, v9

    .line 7
    invoke-static/range {p0 .. p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->o(Lkg/j;IILkg/j;I[B)V

    add-int/lit8 v13, v13, 0x4

    :cond_2
    const/4 v0, 0x1

    if-le v13, v0, :cond_3

    add-int/lit8 v0, v13, -0x1

    .line 8
    invoke-virtual {v1, v0}, Lkg/j;->u0(I)B

    move-result v0

    if-ne v0, v15, :cond_3

    add-int/lit8 v13, v13, -0x1

    .line 9
    :cond_3
    invoke-virtual {v1, v11, v13}, Lkg/j;->n2(II)Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public static l(Lkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;
    .locals 1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->n(Lkg/j;ZLio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lkg/j;Z)Lkg/j;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->n(Lkg/j;ZLio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lkg/j;ZLio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;
    .locals 2

    const-string v0, "src"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->j(Lkg/j;IIZLio/grpc/netty/shaded/io/netty/handler/codec/base64/Base64Dialect;)Lkg/j;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lkg/j;->K2()I

    move-result p2

    invoke-virtual {p0, p2}, Lkg/j;->R1(I)Lkg/j;

    return-object p1
.end method

.method private static o(Lkg/j;IILkg/j;I[B)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lkg/j;->v1()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lkg/j;->H0(I)I

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->t(I)I

    move-result v2

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lkg/j;->P0(I)S

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->u(S)I

    move-result v2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Lkg/j;->u0(I)B

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->s(B)I

    move-result v2

    .line 5
    :goto_0
    invoke-static {v2, p2, p3, p4, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->p(IILkg/j;I[B)V

    goto :goto_2

    :cond_3
    if-eq p2, v4, :cond_6

    if-eq p2, v3, :cond_5

    if-gtz p2, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {p0, p1}, Lkg/j;->H0(I)I

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->v(I)I

    move-result v2

    goto :goto_1

    .line 7
    :cond_5
    invoke-virtual {p0, p1}, Lkg/j;->P0(I)S

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->w(S)I

    move-result v2

    goto :goto_1

    .line 8
    :cond_6
    invoke-virtual {p0, p1}, Lkg/j;->u0(I)B

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->s(B)I

    move-result v2

    .line 9
    :goto_1
    invoke-static {v2, p2, p3, p4, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/base64/a;->q(IILkg/j;I[B)V

    :goto_2
    return-void
.end method

.method private static p(IILkg/j;I[B)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, p0, 0x12

    .line 1
    aget-byte p1, p4, p1

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p4, p0

    or-int/2addr p0, p1

    invoke-virtual {p2, p3, p0}, Lkg/j;->e2(II)Lkg/j;

    goto :goto_0

    :cond_1
    ushr-int/lit8 p1, p0, 0x12

    .line 2
    aget-byte p1, p4, p1

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    or-int/lit8 p0, p0, 0x3d

    invoke-virtual {p2, p3, p0}, Lkg/j;->e2(II)Lkg/j;

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, p0, 0x12

    .line 3
    aget-byte p1, p4, p1

    shl-int/lit8 p1, p1, 0x18

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    or-int/lit16 p0, p0, 0x3d00

    or-int/lit8 p0, p0, 0x3d

    invoke-virtual {p2, p3, p0}, Lkg/j;->e2(II)Lkg/j;

    :goto_0
    return-void
.end method

.method private static q(IILkg/j;I[B)V
    .locals 2

    const/4 v0, 0x1

    const/high16 v1, 0x3d000000    # 0.03125f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, p0, 0x12

    .line 1
    aget-byte p1, p4, p1

    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    ushr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    invoke-virtual {p2, p3, p0}, Lkg/j;->e2(II)Lkg/j;

    goto :goto_0

    :cond_1
    ushr-int/lit8 p1, p0, 0x12

    .line 2
    aget-byte p1, p4, p1

    ushr-int/lit8 v0, p0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    or-int/2addr p0, v1

    invoke-virtual {p2, p3, p0}, Lkg/j;->e2(II)Lkg/j;

    goto :goto_0

    :cond_2
    ushr-int/lit8 p1, p0, 0x12

    .line 3
    aget-byte p1, p4, p1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    aget-byte p0, p4, p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    const/high16 p1, 0x3d0000

    or-int/2addr p0, p1

    or-int/2addr p0, v1

    invoke-virtual {p2, p3, p0}, Lkg/j;->e2(II)Lkg/j;

    :goto_0
    return-void
.end method

.method static r(IZ)I
    .locals 6

    int-to-long v0, p0

    const/4 p0, 0x2

    shl-long/2addr v0, p0

    const-wide/16 v2, 0x3

    .line 1
    div-long/2addr v0, v2

    add-long/2addr v2, v0

    const-wide/16 v4, -0x4

    and-long/2addr v2, v4

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x4c

    .line 2
    div-long/2addr v0, p0

    add-long/2addr v2, v0

    :cond_0
    const-wide/32 p0, 0x7fffffff

    cmp-long v0, v2, p0

    if-gez v0, :cond_1

    long-to-int p0, v2

    goto :goto_0

    :cond_1
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method private static s(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    return p0
.end method

.method private static t(I)I
    .locals 2

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static u(S)I
    .locals 1

    const v0, 0xff00

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method private static v(I)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr p0, v1

    ushr-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method private static w(S)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method
