.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field i:Z

.field final synthetic j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/e0;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)V

    return-void
.end method


# virtual methods
.method protected u(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;->i:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/util/r;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->G(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Ljava/util/Queue;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/d0;->method()Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/c0;->u(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->H(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->I(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 7
    instance-of p1, p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$c;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->K(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :cond_2
    return-void
.end method
