.class Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;
.super Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x18869d0bd8562dfbL


# instance fields
.field final transient a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    .line 2
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/util/logging/Logger;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/logging/LogRecord;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    const/4 v3, -0x1

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 5
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 6
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    if-eq v1, v3, :cond_4

    .line 8
    aget-object p0, v0, v1

    .line 9
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p2, p3}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a(Ljava/lang/String;Ljava/util/logging/LogRecord;)V

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->h(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 5
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 8
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 11
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->h(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 5
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 8
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 11
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->h(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 5
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 8
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    sget-object p3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, p3, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 11
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->h(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 5
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 8
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 11
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->h(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 5
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 8
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 12
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/k;->a(Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;

    move-result-object p1

    .line 11
    sget-object p2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/a;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p2, v1, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/d;->b(Ljava/lang/String;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
