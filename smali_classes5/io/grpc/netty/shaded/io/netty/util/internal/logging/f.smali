.class final Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;
.super Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x7313356d78149884L


# instance fields
.field private final transient a:Lorg/slf4j/spi/LocationAwareLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/slf4j/spi/LocationAwareLogger;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/slf4j/spi/LocationAwareLogger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/AbstractInternalLogger;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a:Lorg/slf4j/spi/LocationAwareLogger;

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private c(ILorg/slf4j/helpers/FormattingTuple;)V
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getArgArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2}, Lorg/slf4j/helpers/FormattingTuple;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    const/4 v1, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 2
    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 4
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 6
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->b(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    .line 8
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    .line 2
    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    .line 4
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    .line 6
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->b(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28

    .line 8
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 2
    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 4
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 6
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->b(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 8
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->b(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    .line 2
    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    .line 4
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    .line 8
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    .line 10
    invoke-direct {p0, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->b(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    .line 6
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;->c(ILorg/slf4j/helpers/FormattingTuple;)V

    :cond_0
    return-void
.end method
