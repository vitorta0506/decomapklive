.class abstract Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;
.super Ljava/util/AbstractQueue;
.source "SourceFile"

# interfaces
.implements Lvg/j$a;
.implements Lvg/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Lvg/j$a;",
        "Lvg/l<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 2
    invoke-static {p1}, Lwg/a;->c(I)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    .line 3
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->b:I

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    :goto_0
    invoke-interface {p0}, Lvg/l;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-static {p0}, Lvg/j;->a(Lvg/j$a;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lvg/j$a;->f()J

    move-result-wide v1

    .line 2
    invoke-interface {p0}, Lvg/j$a;->d()J

    move-result-wide v3

    .line 3
    new-instance v7, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;

    iget v5, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->b:I

    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/b$a;-><init>(JJILjava/util/concurrent/atomic/AtomicReferenceArray;)V

    return-object v7
.end method

.method public final size()I
    .locals 1

    invoke-static {p0}, Lvg/j;->b(Lvg/j$a;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
