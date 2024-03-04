.class public final Lio/grpc/netty/shaded/io/netty/util/internal/k;
.super Lio/grpc/netty/shaded/io/netty/util/internal/g0;
.source "SourceFile"


# static fields
.field private static final i:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final j:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/grpc/netty/shaded/io/netty/util/internal/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final l:I

.field private static final m:I

.field public static final n:Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lio/grpc/netty/shaded/io/netty/util/internal/ThreadLocalRandom;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/grpc/netty/shaded/io/netty/util/internal/f0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/netty/shaded/io/netty/util/internal/f0;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/StringBuilder;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->i:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->j:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    const-string v1, "io.grpc.netty.shaded.io.netty.threadLocalMap.stringBuilder.initialSize"

    const/16 v2, 0x400

    .line 5
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->l:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.threadLocalMap.stringBuilder.initialSize: {}"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "io.grpc.netty.shaded.io.netty.threadLocalMap.stringBuilder.maxSize"

    const/16 v2, 0x1000

    .line 7
    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->m:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.threadLocalMap.stringBuilder.maxSize: {}"

    invoke-interface {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/g0;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->i()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->a:[Ljava/lang/Object;

    return-void
.end method

.method private b(ILjava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->a:[Ljava/lang/Object;

    .line 2
    array-length v1, v0

    ushr-int/lit8 v2, p1, 0x1

    or-int/2addr v2, p1

    ushr-int/lit8 v3, v2, 0x2

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x4

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x8

    or-int/2addr v2, v3

    ushr-int/lit8 v3, v2, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 3
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 4
    array-length v2, v0

    sget-object v3, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 5
    aput-object p2, v0, p1

    .line 6
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->a:[Ljava/lang/Object;

    return-void
.end method

.method private static c(Lug/p;)Lio/grpc/netty/shaded/io/netty/util/internal/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lug/p;->c()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;-><init>()V

    invoke-virtual {p0, v0}, Lug/p;->b(Lio/grpc/netty/shaded/io/netty/util/internal/k;)V

    :cond_0
    return-object v0
.end method

.method public static e()Lio/grpc/netty/shaded/io/netty/util/internal/k;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lug/p;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lug/p;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->c(Lug/p;)Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->p()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lio/grpc/netty/shaded/io/netty/util/internal/k;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lug/p;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lug/p;

    invoke-virtual {v0}, Lug/p;->c()Lio/grpc/netty/shaded/io/netty/util/internal/k;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;

    return-object v0
.end method

.method private static i()[Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static j()I
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-ltz v1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too many thread-local indexed variables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static l()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lug/p;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lug/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lug/p;->b(Lio/grpc/netty/shaded/io/netty/util/internal/k;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    :goto_0
    return-void
.end method

.method private static p()Lio/grpc/netty/shaded/io/netty/util/internal/k;
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;

    invoke-direct {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/k;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->h:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->b:I

    return v0
.end method

.method public g()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->c:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public h(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->a:[Ljava/lang/Object;

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public k()Lio/grpc/netty/shaded/io/netty/util/internal/ThreadLocalRandom;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->d:Lio/grpc/netty/shaded/io/netty/util/internal/ThreadLocalRandom;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/ThreadLocalRandom;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/ThreadLocalRandom;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->d:Lio/grpc/netty/shaded/io/netty/util/internal/ThreadLocalRandom;

    :cond_0
    return-object v0
.end method

.method public m(I)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->a:[Ljava/lang/Object;

    .line 2
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    aget-object v1, v0, p1

    .line 4
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    aput-object v2, v0, p1

    return-object v1

    .line 5
    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    return-object p1
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->b:I

    return-void
.end method

.method public o(ILjava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->a:[Ljava/lang/Object;

    .line 2
    array-length v1, v0

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    .line 3
    aget-object v1, v0, p1

    .line 4
    aput-object p2, v0, p1

    .line 5
    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->n:Ljava/lang/Object;

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/k;->b(ILjava/lang/Object;)V

    return v2
.end method

.method public q()Ljava/lang/StringBuilder;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->g:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->l:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->g:Ljava/lang/StringBuilder;

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->capacity()I

    move-result v1

    sget v2, Lio/grpc/netty/shaded/io/netty/util/internal/k;->m:I

    if-le v1, v2, :cond_1

    .line 4
    sget v1, Lio/grpc/netty/shaded/io/netty/util/internal/k;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->trimToSize()V

    :cond_1
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v0
.end method

.method public r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/netty/shaded/io/netty/util/internal/f0;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->f:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public s()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lio/grpc/netty/shaded/io/netty/util/internal/f0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/k;->e:Ljava/util/Map;

    :cond_0
    return-object v0
.end method
