.class public abstract Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->d(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->c(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;
    .locals 1

    .line 1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->i(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->g(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->h(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 4
    :cond_2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/e;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    .line 2
    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p0

    const-string v1, "Using java.util.logging as the default logging framework"

    invoke-interface {p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V

    return-object v0
.end method

.method private static g(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/logging/h;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    .line 2
    invoke-virtual {v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p0

    const-string v2, "Using Log4J2 as the default logging framework"

    invoke-interface {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static h(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/logging/j;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    .line 2
    invoke-virtual {v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p0

    const-string v2, "Using Log4J as the default logging framework"

    invoke-interface {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private static i(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/internal/logging/m;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    .line 2
    invoke-virtual {v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p0

    const-string v2, "Using SLF4J as the default logging framework"

    invoke-interface {p0, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method


# virtual methods
.method protected abstract e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
.end method
