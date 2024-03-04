.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(decodeResult: "

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Lpg/f;->a()Lpg/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", version: "

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    .line 6
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(decodeResult: "

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Lpg/f;->a()Lpg/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", version: "

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", content: "

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Lkg/l;->content()Lkg/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static c(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/m;)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->b(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;)V

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->f(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->e(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->e(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    .line 5
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->j(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method static d(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/n;)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->b(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/l;)V

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->g(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v0

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->e(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;->x()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->e(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    .line 5
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->j(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method private static e(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static f(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;->method()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 6
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static g(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static h(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->a(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->f(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->e(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    .line 4
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->j(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method static i(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->a(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V

    .line 2
    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->g(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object p1

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->e(Ljava/lang/StringBuilder;Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;)V

    .line 4
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/x;->j(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method private static j(Ljava/lang/StringBuilder;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method
