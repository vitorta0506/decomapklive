.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;
.source "SourceFile"


# instance fields
.field private final c:I

.field private volatile d:Z

.field private final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    iput p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;->c:I

    return-void
.end method


# virtual methods
.method a(Lkg/k;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    if-nez v0, :cond_3

    .line 2
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->a(Lkg/k;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;->d:Z

    if-eqz p1, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result p1

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;->c:I

    if-le p1, v1, :cond_2

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;->d:Z

    return-object v0

    .line 6
    :cond_2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;->release()Z

    move-object v0, p1

    .line 8
    :cond_3
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;->retain()Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/q0;->release()Z

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/h0;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
