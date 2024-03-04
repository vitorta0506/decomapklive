.class final Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method static b(JJ)I
    .locals 0

    and-long/2addr p0, p2

    long-to-int p1, p0

    return p1
.end method

.method static c(J)I
    .locals 0

    long-to-int p1, p0

    return p1
.end method

.method static d(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result p0

    return p0
.end method

.method static e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;I)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static f(JJ)I
    .locals 0

    and-long/2addr p0, p2

    long-to-int p1, p0

    shr-int/lit8 p0, p1, 0x1

    return p0
.end method

.method static g(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method

.method static h(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;ITE;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method
