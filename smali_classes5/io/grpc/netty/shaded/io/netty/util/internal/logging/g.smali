.class Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;
.super Lorg/apache/logging/log4j/spi/ExtendedLoggerWrapper;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g$a;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;->a:Z

    return-void
.end method

.method constructor <init>(Lorg/apache/logging/log4j/Logger;)V
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/spi/ExtendedLogger;

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/logging/log4j/Logger;->getMessageFactory()Lorg/apache/logging/log4j/message/MessageFactory;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/logging/log4j/spi/ExtendedLoggerWrapper;-><init>(Lorg/apache/logging/log4j/spi/ExtendedLogger;Ljava/lang/String;Lorg/apache/logging/log4j/message/MessageFactory;)V

    .line 2
    sget-boolean p1, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;->a:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Log4J2 version mismatch"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g$b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lorg/apache/logging/log4j/Level;->TRACE:Lorg/apache/logging/log4j/Level;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/Error;

    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    throw p0

    .line 4
    :cond_1
    sget-object p0, Lorg/apache/logging/log4j/Level;->ERROR:Lorg/apache/logging/log4j/Level;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lorg/apache/logging/log4j/Level;->WARN:Lorg/apache/logging/log4j/Level;

    return-object p0

    .line 6
    :cond_3
    sget-object p0, Lorg/apache/logging/log4j/Level;->DEBUG:Lorg/apache/logging/log4j/Level;

    return-object p0

    .line 7
    :cond_4
    sget-object p0, Lorg/apache/logging/log4j/Level;->INFO:Lorg/apache/logging/log4j/Level;

    return-object p0
.end method


# virtual methods
.method public isEnabled(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;)Z
    .locals 0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;->a(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;->isEnabled(Lorg/apache/logging/log4j/Level;)Z

    move-result p1

    return p1
.end method

.method public log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;->a(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs log(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;->a(Lio/grpc/netty/shaded/io/netty/util/internal/logging/InternalLogLevel;)Lorg/apache/logging/log4j/Level;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;->log(Lorg/apache/logging/log4j/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
