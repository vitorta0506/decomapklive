.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/c;

.field private static final b:Lio/grpc/netty/shaded/io/netty/util/c;

.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->l:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/c;->z(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->a:Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v0, ";"

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/c;->g(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->b:Lio/grpc/netty/shaded/io/netty/util/c;

    const/16 v0, 0x2c

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/n;->c(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/n;->o(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/n;->r(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static b(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;J)J
    .locals 4

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->w:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->F(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    .line 3
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    return-wide v0

    :cond_1
    return-wide p1
.end method

.method private static c(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    .line 2
    instance-of v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    if-eqz v1, :cond_0

    .line 3
    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;->method()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->d0:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 5
    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->m(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->e0:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 6
    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->m(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    return p0

    .line 7
    :cond_0
    instance-of v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    if-eqz v1, :cond_1

    .line 8
    check-cast p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    .line 9
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->a()I

    move-result p0

    const/16 v1, 0x65

    if-ne p0, v1, :cond_1

    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->g0:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 10
    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->m(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->f0:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 11
    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->m(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x10

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z
    .locals 3

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->I:Lio/grpc/netty/shaded/io/netty/util/c;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->p:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0, v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->n(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static e(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z
    .locals 1

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->w:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->m(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static f(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object p0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->s:Lio/grpc/netty/shaded/io/netty/util/c;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->n:Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->B:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0, v1, v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method public static h(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z
    .locals 3

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->r0:Lio/grpc/netty/shaded/io/netty/util/c;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->m:Lio/grpc/netty/shaded/io/netty/util/c;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method static i(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p0

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->I:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->F(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->p:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static j(Ljava/util/List;ZZ)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;ZZ)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-eqz v3, :cond_8

    if-nez p1, :cond_8

    const-string p1, "Multiple Content-Length values found: "

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 5
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->c:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-nez p2, :cond_4

    move-object p2, v5

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    move-object v1, p2

    goto :goto_3

    .line 10
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_8
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const-string p1, "Content-Length value is not a number: "

    if-nez p0, :cond_9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 12
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string p0, "Content-Length value"

    .line 13
    invoke-static {v2, v3, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->o(JLjava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 14
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 15
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->r0:Lio/grpc/netty/shaded/io/netty/util/c;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->m:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->O(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p0

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->w:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->r0:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->H(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 9
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/s;->m:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {v2, v1}, Lio/grpc/netty/shaded/io/netty/util/c;->k(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p0

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->r0:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->K(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    goto :goto_1

    .line 13
    :cond_4
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p0

    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->r0:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->N(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    :goto_1
    return-void
.end method
