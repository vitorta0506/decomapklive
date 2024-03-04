.class Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:I

.field private final c:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JJILjava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->d:J

    .line 3
    iput-wide p3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->a:J

    .line 4
    iput p5, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->b:I

    .line 5
    iput-object p6, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->a()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->e:Ljava/lang/Object;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->b:I

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->c:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3
    :cond_0
    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->d:J

    iget-wide v4, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->a:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    .line 4
    iput-wide v4, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->d:J

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->b(JJ)I

    move-result v2

    .line 5
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;->e:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
