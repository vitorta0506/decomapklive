.class public final Lio/grpc/netty/shaded/io/netty/util/internal/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lug/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/n<",
            "Lug/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lug/n;

    invoke-direct {v0}, Lug/n;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->a:Lug/n;

    return-void
.end method

.method static synthetic a(Lug/j;)V
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->f(Lug/j;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;Lug/j;)Ljava/lang/Runnable;
    .locals 1

    const-string v0, "command"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "eventExecutor"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$b;

    invoke-direct {v0, p1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/d0$b;-><init>(Lug/j;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lug/j;)Ljava/util/concurrent/Executor;
    .locals 1

    const-string v0, "executor"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "eventExecutor"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$a;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/d0$a;-><init>(Ljava/util/concurrent/Executor;Lug/j;)V

    return-object v0
.end method

.method public static d(Ljava/util/concurrent/ThreadFactory;Lug/j;)Ljava/util/concurrent/ThreadFactory;
    .locals 1

    const-string v0, "command"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "eventExecutor"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/d0$c;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/d0$c;-><init>(Ljava/util/concurrent/ThreadFactory;Lug/j;)V

    return-object v0
.end method

.method public static e()Lug/j;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->a:Lug/n;

    invoke-virtual {v0}, Lug/n;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lug/j;

    return-object v0
.end method

.method private static f(Lug/j;)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->a:Lug/n;

    invoke-virtual {v0, p0}, Lug/n;->m(Ljava/lang/Object;)V

    return-void
.end method
