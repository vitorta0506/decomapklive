.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;IIIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/g0;-><init>(IIIZ)V

    return-void
.end method

.method private o0(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/k0;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->K(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    return-void
.end method


# virtual methods
.method protected d0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->G(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    .line 2
    move-object v1, p1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f0;->t()Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h0;->a()I

    move-result v1

    const/16 v2, 0xc8

    const/16 v3, 0x64

    if-lt v1, v3, :cond_0

    if-ge v1, v2, :cond_0

    .line 3
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->d0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result p1

    return p1

    :cond_0
    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x43

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const/16 v1, 0x48

    if-eq v3, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v5

    :cond_2
    if-ne v1, v2, :cond_4

    .line 6
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->j:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->L(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {p1, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->J(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;Z)Z

    .line 9
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->G(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Ljava/util/Queue;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    :cond_3
    return v5

    .line 10
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->d0(Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)Z

    move-result p1

    return p1
.end method

.method public t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lpg/a;->t(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->H(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->K(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/PrematureChannelClosureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel gone inactive with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " missing response(s)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/PrematureChannelClosureException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_0
    return-void
.end method

.method protected x(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
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
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->I(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lpg/a;->s()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2, p1}, Lkg/j;->z1(I)Lkg/j;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    invoke-super {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/b0;->x(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->B:Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;->H(Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    :goto_0
    if-ge v0, p1, :cond_2

    .line 8
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o$b;->o0(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
