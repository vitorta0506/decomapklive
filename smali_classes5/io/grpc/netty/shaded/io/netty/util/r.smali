.class public final Lio/grpc/netty/shaded/io/netty/util/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/r;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/util/r;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "touch"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->d(Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/s;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/s;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/s;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/s;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->retain()Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/r;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v2, "Failed to release a message: {}"

    invoke-interface {v1, v2, p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/util/s;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/util/s;

    invoke-interface {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/s;->touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object p0

    :cond_0
    return-object p0
.end method
