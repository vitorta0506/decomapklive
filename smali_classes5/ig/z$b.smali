.class Lig/z$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lig/z;


# direct methods
.method private constructor <init>(Lig/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lig/z$b;->a:Lig/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lig/z;Lig/z$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lig/z$b;-><init>(Lig/z;)V

    return-void
.end method

.method private a(Lio/grpc/internal/q2;ZZI)V
    .locals 4

    if-ltz p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->d(Z)V

    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lkg/s0;->d:Lkg/j;

    goto :goto_1

    :cond_1
    check-cast p1, Lig/d0;

    invoke-virtual {p1}, Lig/d0;->c()Lkg/j;

    move-result-object p1

    invoke-virtual {p1}, Lkg/j;->q2()Lkg/j;

    move-result-object p1

    .line 3
    :goto_1
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    if-lez v0, :cond_2

    .line 4
    iget-object v1, p0, Lig/z$b;->a:Lig/z;

    invoke-static {v1, v0}, Lig/z;->G(Lig/z;I)V

    .line 5
    iget-object v1, p0, Lig/z$b;->a:Lig/z;

    invoke-static {v1}, Lig/z;->F(Lig/z;)Lig/o0;

    move-result-object v1

    new-instance v2, Lig/i0;

    iget-object v3, p0, Lig/z$b;->a:Lig/z;

    invoke-virtual {v3}, Lig/z;->I()Lig/z$c;

    move-result-object v3

    invoke-direct {v2, v3, p1, p2}, Lig/i0;-><init>(Lig/k0;Lkg/j;Z)V

    invoke-virtual {v1, v2, p3}, Lig/o0;->c(Lig/o0$c;Z)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    new-instance p2, Lig/z$b$b;

    invoke-direct {p2, p0, v0, p4}, Lig/z$b$b;-><init>(Lig/z$b;II)V

    .line 6
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_2

    .line 7
    :cond_2
    iget-object p4, p0, Lig/z$b;->a:Lig/z;

    invoke-static {p4}, Lig/z;->F(Lig/z;)Lig/o0;

    move-result-object p4

    new-instance v0, Lig/i0;

    iget-object v1, p0, Lig/z$b;->a:Lig/z;

    .line 8
    invoke-virtual {v1}, Lig/z;->I()Lig/z$c;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lig/i0;-><init>(Lig/k0;Lkg/j;Z)V

    .line 9
    invoke-virtual {p4, v0, p3}, Lig/o0;->c(Lig/o0$c;Z)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_2
    return-void
.end method

.method private b(Lio/grpc/s0;[B)V
    .locals 10

    .line 1
    invoke-static {}, Lig/z;->B()Lio/grpc/i0;

    move-result-object v0

    iget-object v1, p0, Lig/z$b;->a:Lig/z;

    invoke-static {v1}, Lig/z;->A(Lig/z;)Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/i0;->a(Lio/grpc/MethodDescriptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lig/z$b;->a:Lig/z;

    invoke-static {v2}, Lig/z;->A(Lig/z;)Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/MethodDescriptor;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lig/z;->B()Lio/grpc/i0;

    move-result-object v1

    iget-object v2, p0, Lig/z$b;->a:Lig/z;

    invoke-static {v2}, Lig/z;->A(Lig/z;)Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lio/grpc/i0;->b(Lio/grpc/MethodDescriptor;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 4
    new-instance v4, Lio/grpc/netty/shaded/io/netty/util/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->b()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/common/io/BaseEncoding;->g([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    sget-object p2, Lig/m0;->d:Lio/grpc/netty/shaded/io/netty/util/c;

    move-object v8, p2

    move-object v6, v4

    goto :goto_1

    .line 7
    :cond_2
    sget-object p2, Lig/m0;->c:Lio/grpc/netty/shaded/io/netty/util/c;

    move-object v8, p2

    move-object v6, v0

    .line 8
    :goto_1
    iget-object p2, p0, Lig/z$b;->a:Lig/z;

    invoke-static {p2}, Lig/z;->C(Lig/z;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v5

    iget-object p2, p0, Lig/z$b;->a:Lig/z;

    .line 9
    invoke-static {p2}, Lig/z;->D(Lig/z;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v7

    iget-object p2, p0, Lig/z$b;->a:Lig/z;

    invoke-static {p2}, Lig/z;->E(Lig/z;)Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v9

    move-object v4, p1

    .line 10
    invoke-static/range {v4 .. v9}, Lig/m0;->d(Lio/grpc/s0;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    .line 11
    new-instance p2, Lig/z$b$a;

    invoke-direct {p2, p0}, Lig/z$b$a;-><init>(Lig/z$b;)V

    .line 12
    iget-object v0, p0, Lig/z$b;->a:Lig/z;

    invoke-static {v0}, Lig/z;->F(Lig/z;)Lig/o0;

    move-result-object v0

    new-instance v4, Lig/e;

    iget-object v5, p0, Lig/z$b;->a:Lig/z;

    .line 13
    invoke-virtual {v5}, Lig/z;->I()Lig/z$c;

    move-result-object v5

    iget-object v6, p0, Lig/z$b;->a:Lig/z;

    invoke-virtual {v6}, Lio/grpc/internal/a;->x()Z

    move-result v6

    invoke-direct {v4, p1, v5, v6, v3}, Lig/e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lig/z$c;ZZ)V

    iget-object p1, p0, Lig/z$b;->a:Lig/z;

    .line 14
    invoke-static {p1}, Lig/z;->A(Lig/z;)Lio/grpc/MethodDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->f()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/MethodDescriptor$MethodType;->clientSendsOneMessage()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 15
    :cond_4
    :goto_2
    invoke-virtual {v0, v4, v1}, Lig/o0;->c(Lig/o0$c;Z)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    .line 16
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method


# virtual methods
.method public e(Lio/grpc/Status;)V
    .locals 4

    const-string v0, "NettyClientStream$Sink.cancel"

    .line 1
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p0, Lig/z$b;->a:Lig/z;

    invoke-static {v1}, Lig/z;->F(Lig/z;)Lig/o0;

    move-result-object v1

    new-instance v2, Lig/c;

    iget-object v3, p0, Lig/z$b;->a:Lig/z;

    invoke-virtual {v3}, Lig/z;->I()Lig/z$c;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lig/c;-><init>(Lig/z$c;Lio/grpc/Status;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lig/o0;->c(Lig/o0$c;Z)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lio/grpc/internal/q2;ZZI)V
    .locals 1

    const-string v0, "NettyClientStream$Sink.writeFrame"

    .line 1
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lig/z$b;->a(Lio/grpc/internal/q2;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lio/grpc/s0;[B)V
    .locals 1

    const-string v0, "NettyClientStream$Sink.writeHeaders"

    .line 1
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p2}, Lig/z$b;->b(Lio/grpc/s0;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    throw p1
.end method
