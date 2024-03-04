.class abstract Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/q;
.super Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/o<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/q;

    const-string v1, "e"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/q;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/o;-><init>(I)V

    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/q;->e:J

    return-void
.end method


# virtual methods
.method final m()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/q;->e:J

    return-wide v0
.end method

.method final n(J)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/q;->f:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->lazySet(Ljava/lang/Object;J)V

    return-void
.end method
