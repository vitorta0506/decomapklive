.class abstract Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;
.super Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/g<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile c:J

.field protected d:J

.field protected e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;

    const-string v1, "c"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->c:J

    return-wide v0
.end method

.method final n()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->c:J

    return-wide v0
.end method

.method final u(J)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/e;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    return-void
.end method
