.class public final Lio/grpc/netty/shaded/io/netty/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/net/Inet4Address;

.field public static final b:Ljava/net/Inet6Address;

.field public static final c:Ljava/net/InetAddress;

.field public static final d:Ljava/net/NetworkInterface;

.field public static final e:I

.field private static final f:Z

.field private static final g:Z

.field private static final h:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "java.net.preferIPv4Stack"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/util/n;->f:Z

    const-string v2, "java.net.preferIPv6Addresses"

    .line 2
    invoke-static {v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lio/grpc/netty/shaded/io/netty/util/n;->g:Z

    .line 3
    const-class v2, Lio/grpc/netty/shaded/io/netty/util/n;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    sput-object v2, Lio/grpc/netty/shaded/io/netty/util/n;->h:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "-Djava.net.preferIPv4Stack: {}"

    invoke-interface {v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "-Djava.net.preferIPv6Addresses: {}"

    invoke-interface {v2, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/o;->a()Ljava/net/Inet4Address;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/n;->a:Ljava/net/Inet4Address;

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/o;->b()Ljava/net/Inet6Address;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/n;->b:Ljava/net/Inet6Address;

    .line 8
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/o;->c(Ljava/net/Inet4Address;Ljava/net/Inet6Address;)Lio/grpc/netty/shaded/io/netty/util/o$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/o$a;->b()Ljava/net/NetworkInterface;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/n;->d:Ljava/net/NetworkInterface;

    .line 10
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/o$a;->a()Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/n;->c:Ljava/net/InetAddress;

    .line 11
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/n$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/n$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/util/n;->e:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/n;->h:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/n;->q(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static d(III)Z
    .locals 0

    if-lt p0, p1, :cond_0

    if-ge p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/n;->f:Z

    return v0
.end method

.method private static f(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static g(C)Z
    .locals 1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x46

    if-ne p0, v0, :cond_0

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

.method private static h(Lio/grpc/netty/shaded/io/netty/util/c;II)Z
    .locals 3

    sub-int v0, p2, p1

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x2e

    .line 1
    invoke-virtual {p0, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->t(CI)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p0, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->t(CI)I

    move-result p1

    if-lez p1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 3
    invoke-virtual {p0, v2, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->t(CI)I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr p1, v1

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v1

    .line 4
    invoke-static {p0, v0, p2}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static i(Ljava/lang/CharSequence;II)Z
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/n;->k(Ljava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-eqz v0, :cond_1

    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/c;

    .line 2
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/n;->h(Lio/grpc/netty/shaded/io/netty/util/c;II)Z

    move-result p0

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/n;->l(Ljava/lang/CharSequence;II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/n;->k(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private static k(Ljava/lang/String;II)Z
    .locals 3

    sub-int v0, p2, p1

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x2e

    .line 1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-lez p1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 3
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr p1, v1

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v1

    .line 4
    invoke-static {p0, v0, p2}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static l(Ljava/lang/CharSequence;II)Z
    .locals 3

    sub-int v0, p2, p1

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x2e

    .line 1
    invoke-static {p0, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->u(Ljava/lang/CharSequence;CI)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {p0, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/c;->u(Ljava/lang/CharSequence;CI)I

    move-result p1

    if-lez p1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 3
    invoke-static {p0, v2, p1}, Lio/grpc/netty/shaded/io/netty/util/c;->u(Ljava/lang/CharSequence;CI)I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr p1, v1

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v1

    .line 4
    invoke-static {p0, v0, p2}, Lio/grpc/netty/shaded/io/netty/util/n;->m(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static m(Ljava/lang/CharSequence;II)Z
    .locals 6

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_6

    const/4 v2, 0x3

    if-gt p2, v2, :cond_6

    .line 1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x39

    if-ne p2, v2, :cond_4

    add-int/lit8 p2, p1, 0x1

    .line 2
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_3

    add-int/lit8 p1, p1, 0x2

    .line 3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v4, :cond_3

    const/16 p1, 0x31

    if-gt v3, p1, :cond_1

    if-gt p2, v5, :cond_1

    if-le p0, v5, :cond_2

    :cond_1
    const/16 p1, 0x32

    if-ne v3, p1, :cond_3

    const/16 p1, 0x35

    if-gt p2, p1, :cond_3

    if-le p0, p1, :cond_2

    if-ge p2, p1, :cond_3

    if-gt p0, v5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    if-gt v3, v5, :cond_6

    if-eq p2, v1, :cond_5

    add-int/2addr p1, v1

    .line 4
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/n;->p(C)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    :goto_0
    return v0
.end method

.method public static n(Ljava/lang/CharSequence;)Z
    .locals 14

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 3
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x3a

    if-ne v3, v6, :cond_4

    add-int/lit8 v3, v4, 0x1

    .line 5
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v4, 0x2

    move v13, v4

    move v4, v3

    move v3, v13

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    :goto_1
    move v7, v4

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x7

    if-ge v7, v0, :cond_17

    .line 6
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 7
    invoke-static {v10}, Lio/grpc/netty/shaded/io/netty/util/n;->f(C)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v9, 0x4

    if-ge v8, v9, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    return v2

    :cond_6
    const/16 v11, 0x25

    if-eq v10, v11, :cond_16

    const/16 v12, 0x2e

    if-eq v10, v12, :cond_b

    if-eq v10, v6, :cond_7

    return v2

    :cond_7
    if-le v1, v9, :cond_8

    return v2

    :cond_8
    add-int/lit8 v9, v7, -0x1

    .line 8
    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v10, v6, :cond_a

    if-ltz v3, :cond_9

    return v2

    :cond_9
    move v3, v9

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    if-gez v3, :cond_c

    const/4 v5, 0x6

    if-ne v1, v5, :cond_e

    :cond_c
    if-ne v1, v9, :cond_d

    if-ge v3, v4, :cond_e

    :cond_d
    if-le v1, v9, :cond_f

    :cond_e
    return v2

    :cond_f
    sub-int/2addr v7, v8

    add-int/lit8 v1, v7, -0x2

    .line 9
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/n;->g(C)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v3, v1, -0x1

    .line 10
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/n;->g(C)Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v3, v1, -0x2

    .line 11
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/n;->g(C)Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v3, v1, -0x3

    .line 12
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/n;->g(C)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v1, v1, -0x5

    goto :goto_6

    :cond_11
    :goto_5
    return v2

    :cond_12
    :goto_6
    if-lt v1, v4, :cond_14

    .line 13
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_13

    if-eq v3, v6, :cond_13

    return v2

    :cond_13
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_14
    add-int/lit8 v1, v7, 0x7

    .line 14
    invoke-static {p0, v11, v1}, Lio/grpc/netty/shaded/io/netty/util/c;->u(Ljava/lang/CharSequence;CI)I

    move-result v1

    if-gez v1, :cond_15

    goto :goto_7

    :cond_15
    move v0, v1

    .line 15
    :goto_7
    invoke-static {p0, v7, v0}, Lio/grpc/netty/shaded/io/netty/util/n;->i(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0

    :cond_16
    move v0, v7

    :cond_17
    if-gez v3, :cond_19

    if-ne v1, v9, :cond_18

    if-lez v8, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2

    :cond_19
    add-int/lit8 p0, v3, 0x2

    if-eq p0, v0, :cond_1a

    if-lez v8, :cond_1b

    const/16 p0, 0x8

    if-lt v1, p0, :cond_1a

    if-gt v3, v4, :cond_1b

    :cond_1a
    const/4 v2, 0x1

    :cond_1b
    return v2
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/n;->n(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static p(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static q(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sysctl"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 3
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 4
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/2addr v4, v2

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-object p0

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 12
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 13
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 14
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 15
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 17
    :cond_2
    throw p0
.end method

.method public static r(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/n;->s(Ljava/net/InetAddress;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/net/InetAddress;Z)Ljava/lang/String;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/n;->t([BIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static t([BIZ)Ljava/lang/String;
    .locals 9

    const/16 v0, 0x8

    new-array v1, v0, [I

    add-int/lit8 v2, p1, 0x8

    :goto_0
    const/4 v3, 0x1

    if-ge p1, v2, :cond_0

    shl-int/lit8 v4, p1, 0x1

    .line 1
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v0

    add-int/2addr v4, v3

    aget-byte v3, p0, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    aput v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    const/4 p1, 0x0

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 2
    aget v7, v1, v2

    if-nez v7, :cond_1

    if-gez v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_1
    if-ltz v4, :cond_3

    sub-int v7, v2, v4

    if-le v7, v5, :cond_2

    move v5, v7

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    move v6, v4

    const/4 v4, -0x1

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-ltz v4, :cond_5

    sub-int/2addr v2, v4

    if-le v2, v5, :cond_5

    move v5, v2

    goto :goto_4

    :cond_5
    move v4, v6

    :goto_4
    if-ne v5, v3, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    move p0, v4

    :goto_5
    add-int/2addr v5, p0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v4, 0x3a

    if-gez v5, :cond_7

    aget p0, v1, p1

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    if-ge v3, v0, :cond_10

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    aget p0, v1, v3

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 7
    :cond_7
    invoke-static {p1, p0, v5}, Lio/grpc/netty/shaded/io/netty/util/n;->d(III)Z

    move-result v6

    const-string v7, "::"

    const/4 v8, 0x5

    if-eqz v6, :cond_8

    .line 8
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9

    if-ne v5, v8, :cond_9

    aget p2, v1, v8

    const v6, 0xffff

    if-ne p2, v6, :cond_9

    const/4 p1, 0x1

    goto :goto_7

    :cond_8
    aget p2, v1, p1

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_7
    if-ge v3, v0, :cond_10

    .line 10
    invoke-static {v3, p0, v5}, Lio/grpc/netty/shaded/io/netty/util/n;->d(III)Z

    move-result p2

    if-nez p2, :cond_e

    add-int/lit8 p2, v3, -0x1

    .line 11
    invoke-static {p2, p0, v5}, Lio/grpc/netty/shaded/io/netty/util/n;->d(III)Z

    move-result p2

    const/16 v6, 0x2e

    if-nez p2, :cond_c

    if-eqz p1, :cond_b

    const/4 p2, 0x6

    if-ne v3, p2, :cond_a

    goto :goto_8

    .line 12
    :cond_a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 13
    :cond_b
    :goto_8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    :goto_9
    if-eqz p1, :cond_d

    if-le v3, v8, :cond_d

    .line 14
    aget p2, v1, v3

    shr-int/2addr p2, v0

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    aget p2, v1, v3

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 17
    :cond_d
    aget p2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_e
    add-int/lit8 p2, v3, -0x1

    .line 18
    invoke-static {p2, p0, v5}, Lio/grpc/netty/shaded/io/netty/util/n;->d(III)Z

    move-result p2

    if-nez p2, :cond_f

    .line 19
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 20
    :cond_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
