.class final Lio/grpc/netty/shaded/io/netty/util/internal/t$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/util/internal/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/t$f$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t$f$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->c()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    const-string v1, "org.jctools-core.MpscChunkedArrayQueue: unavailable"

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t$f;->a:Z

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->c()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    const-string v1, "org.jctools-core.MpscChunkedArrayQueue: available"

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t$f;->a:Z

    :goto_1
    return-void
.end method

.method static a(II)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t$f;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lvg/u;

    invoke-direct {v0, p0, p1}, Lvg/u;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/r;

    invoke-direct {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/r;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method static b()Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    sget-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/t$f;->a:Z

    const/16 v1, 0x400

    if-eqz v0, :cond_0

    new-instance v0, Lvg/w;

    invoke-direct {v0, v1}, Lvg/w;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/t;

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/shaded/org/jctools/queues/atomic/t;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method static c(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    const/high16 v0, 0x40000000    # 2.0f

    .line 1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x800

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 v0, 0x400

    .line 2
    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/t$f;->a(II)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method
