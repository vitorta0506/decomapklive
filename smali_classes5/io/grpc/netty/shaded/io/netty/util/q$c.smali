.class final Lio/grpc/netty/shaded/io/netty/util/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/q$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/netty/shaded/io/netty/util/q$d<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/util/q$c<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile a:I

.field private final b:Lio/grpc/netty/shaded/io/netty/util/q$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/q$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/q$c;

    const-string v1, "a"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 2
    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/q$c;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/util/q$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/q$e<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/q$c;->b:Lio/grpc/netty/shaded/io/netty/util/q$e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/q$c;->c:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/q$c;->b:Lio/grpc/netty/shaded/io/netty/util/q$e;

    invoke-virtual {p1, p0}, Lio/grpc/netty/shaded/io/netty/util/q$e;->d(Lio/grpc/netty/shaded/io/netty/util/q$c;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object does not belong to handle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b()Z
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/q$c;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/q$c;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/q$c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/q$c;->c:Ljava/lang/Object;

    return-void
.end method

.method e()V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/q$c;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object has been recycled already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
