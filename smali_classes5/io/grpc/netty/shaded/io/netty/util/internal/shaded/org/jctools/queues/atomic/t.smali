.class public Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/t;
.super Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected G(JJ)J
    .locals 0

    const-wide/32 p1, 0x7fffffff

    return-wide p1
.end method

.method protected H(J)J
    .locals 0

    return-wide p1
.end method

.method protected I(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)I"
        }
    .end annotation

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->d(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
