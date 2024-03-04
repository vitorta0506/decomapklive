.class public abstract Lio/grpc/netty/shaded/io/netty/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/grpc/netty/shaded/io/netty/util/i<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->p0()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/j;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/j;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/i;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/j;->c()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/j;->b(ILjava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/i;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/j;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/util/i;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    move-object v0, p1

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract b(ILjava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public final c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/j;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firstNameComponent"

    .line 2
    invoke-static {p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "secondNameComponent"

    .line 3
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/j;->e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/i;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/j;->a(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/i;

    move-result-object p1

    return-object p1
.end method
