.class Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;
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

.field private b:J

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceArray;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;JJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    shr-long/2addr p4, v0

    .line 2
    iput-wide p4, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->a:J

    shr-long/2addr p2, v0

    .line 3
    iput-wide p2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->b:J

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 5
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->a()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->c:Ljava/lang/Object;

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
    :goto_0
    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->b:J

    iget-wide v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->a:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_4

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 2
    iput-wide v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->b:J

    .line 3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->e:I

    int-to-long v5, v3

    invoke-static {v0, v1, v5, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->b(JJ)I

    move-result v3

    invoke-static {v2, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->B()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return-object v2

    .line 5
    :cond_1
    iget v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->e:I

    add-int/lit8 v2, v2, 0x1

    .line 6
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    int-to-long v5, v2

    invoke-static {v5, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->c(J)I

    move-result v2

    invoke-static {v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c;->F()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_4

    if-nez v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    check-cast v2, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->b(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 9
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v3, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->e:I

    int-to-long v3, v3

    invoke-static {v0, v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->b(JJ)I

    move-result v0

    invoke-static {v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->e(Ljava/util/concurrent/atomic/AtomicReferenceArray;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v4
.end method

.method private b(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/a;->d(Ljava/util/concurrent/atomic/AtomicReferenceArray;)I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->e:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->c:Ljava/lang/Object;

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
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/c$a;->c:Ljava/lang/Object;

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
