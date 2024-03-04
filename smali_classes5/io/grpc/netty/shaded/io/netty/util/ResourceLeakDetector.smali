.class public Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$c;,
        Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;,
        Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

.field private static final g:I

.field static final h:I

.field private static i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

.field private static final j:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;->SIMPLE:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->f:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    .line 2
    const-class v1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->j:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "io.grpc.netty.shaded.io.netty.noResourceLeakDetection"

    .line 3
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "io.grpc.netty.shaded.io.netty.leakDetection.level"

    if-eqz v3, :cond_0

    .line 4
    invoke-static {v2, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->d(Ljava/lang/String;Z)Z

    move-result v4

    .line 5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "-Dio.netty.noResourceLeakDetection: {}"

    invoke-interface {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-Dio.netty.noResourceLeakDetection is deprecated. Use \'-D{}={}\' instead."

    .line 7
    invoke-interface {v1, v3, v5, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz v4, :cond_1

    .line 8
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "io.grpc.netty.shaded.io.netty.leakDetectionLevel"

    invoke-static {v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;->parseLevel(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    move-result-object v0

    const/4 v2, 0x4

    const-string v3, "io.grpc.netty.shaded.io.netty.leakDetection.targetRecords"

    .line 12
    invoke-static {v3, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->g:I

    const/16 v4, 0x80

    const-string v6, "io.grpc.netty.shaded.io.netty.leakDetection.samplingInterval"

    .line 13
    invoke-static {v6, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->h:I

    .line 14
    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    .line 15
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "-D{}: {}"

    invoke-interface {v1, v4, v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v3, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/h;->f:[Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;IJ)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->a:Ljava/util/Set;

    .line 6
    new-instance p3, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->b:Ljava/lang/ref/ReferenceQueue;

    .line 7
    new-instance p3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 8
    invoke-static {p3}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->c:Ljava/util/Set;

    const-string p3, "resourceType"

    .line 9
    invoke-static {p1, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->d:Ljava/lang/String;

    .line 10
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->e:I

    return-void
.end method

.method static synthetic a()Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->f:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->g:I

    return v0
.end method

.method static synthetic c()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static varargs d(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 3
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    :cond_2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 6
    array-length v1, v0

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 7
    :goto_2
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 8
    array-length v4, v0

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 9
    array-length v4, v0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget-object v5, p1, v2

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 10
    :cond_3
    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\' in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->e()Z

    goto :goto_0
.end method

.method public static f()Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    return-object v0
.end method

.method public static g()Z
    .locals 2

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->f()Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->e()V

    return-void

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->e()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private m(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->i:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;->DISABLED:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;->PARANOID:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->Q0()Ljava/util/Random;

    move-result-object v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->e:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->i()V

    .line 6
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->b:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->a:Ljava/util/Set;

    invoke-direct {v0, p1, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    return-object v0

    :cond_1
    return-object v2

    .line 7
    :cond_2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->i()V

    .line 8
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->b:Ljava/lang/ref/ReferenceQueue;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->a:Ljava/util/Set;

    invoke-direct {v0, p1, v1, v2}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method protected h()Z
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->j:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method protected j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->j:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "LEAK: {}.release() was not called before it\'s garbage-collected. See https://netty.io/wiki/reference-counted-objects.html for more information.{}"

    invoke-interface {v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected k(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->j:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    const-string v2, "io.grpc.netty.shaded.io.netty.leakDetection.level"

    aput-object v2, v1, p1

    sget-object p1, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;->ADVANCED:Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$Level;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string p1, "LEAK: {}.release() was not called before it\'s garbage-collected. Enable advanced leak reporting to find out where the leak occurred. To enable advanced leak reporting, specify the JVM option \'-D{}={}\' or call {}.setLevel() See https://netty.io/wiki/reference-counted-objects.html for more information."

    .line 3
    invoke-interface {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/grpc/netty/shaded/io/netty/util/v<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->m(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector$b;

    move-result-object p1

    return-object p1
.end method
