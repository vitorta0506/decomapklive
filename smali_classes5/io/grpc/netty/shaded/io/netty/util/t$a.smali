.class final Lio/grpc/netty/shaded/io/netty/util/t$a;
.super Lio/grpc/netty/shaded/io/netty/util/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/t;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "io.grpc.netty.shaded.io.netty.customResourceLeakDetector"

    .line 2
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    const-string v3, "Could not access System property: io.netty.customResourceLeakDetector"

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    .line 4
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/t$a;->d:Ljava/lang/reflect/Constructor;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/t$a;->c:Ljava/lang/reflect/Constructor;

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/t$a;->g(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/t$a;->c:Ljava/lang/reflect/Constructor;

    .line 6
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/t$a;->f(Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/t$a;->d:Ljava/lang/reflect/Constructor;

    :goto_1
    return-void
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->P()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v2, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 4
    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    const-string v1, "Class {} does not inherit from ResourceLeakDetector."

    invoke-interface {v0, v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    const-string v2, "Could not load custom resource leak detector class provided: {}"

    invoke-interface {v1, v2, p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->P()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 3
    const-class v2, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 4
    const-class v4, Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    const/4 v1, 0x2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    const-string v1, "Class {} does not inherit from ResourceLeakDetector."

    invoke-interface {v0, v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    const-string v2, "Could not load custom resource leak detector class provided: {}"

    invoke-interface {v1, v2, p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public d(Ljava/lang/Class;I)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/t$a;->d:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v4

    const-string v5, "Loaded custom ResourceLeakDetector: {}"

    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/util/t$a;->d:Ljava/lang/reflect/Constructor;

    .line 4
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-interface {v4, v5, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/util/t$a;->d:Ljava/lang/reflect/Constructor;

    .line 7
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p1, v5, v1

    aput-object v0, v5, v3

    const-string v0, "Could not load custom resource leak detector provided: {} with the given resource: {}"

    .line 8
    invoke-interface {v4, v0, v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-direct {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/Class;I)V

    .line 10
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p1

    const-string p2, "Loaded default ResourceLeakDetector: {}"

    invoke-interface {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public e(Ljava/lang/Class;IJ)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;IJ)",
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/t$a;->c:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v3

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    .line 3
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    const-string v6, "Loaded custom ResourceLeakDetector: {}"

    iget-object v7, p0, Lio/grpc/netty/shaded/io/netty/util/t$a;->c:Ljava/lang/reflect/Constructor;

    .line 5
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-interface {v5, v6, v7}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/util/t$a;->c:Ljava/lang/reflect/Constructor;

    .line 8
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    aput-object p1, v4, v2

    aput-object v0, v4, v1

    const-string v0, "Could not load custom resource leak detector provided: {} with the given resource: {}"

    .line 9
    invoke-interface {v5, v0, v4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;-><init>(Ljava/lang/Class;IJ)V

    .line 11
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/t;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p1

    const-string p2, "Loaded default ResourceLeakDetector: {}"

    invoke-interface {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
