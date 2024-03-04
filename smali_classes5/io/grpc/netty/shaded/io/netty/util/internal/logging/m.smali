.class public Lio/grpc/netty/shaded/io/netty/util/internal/logging/m;
.super Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;
.source "SourceFile"


# static fields
.field public static final b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

.field static final c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/m;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/m;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/m;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/m;-><init>(Z)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/m;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;-><init>()V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;-><init>()V

    .line 3
    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object p1

    instance-of p1, p1, Lorg/slf4j/helpers/NOPLoggerFactory;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NoClassDefFoundError;

    const-string v0, "NOPLoggerFactory not supported"

    invoke-direct {p1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static j(Lorg/slf4j/Logger;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    instance-of v0, p0, Lorg/slf4j/spi/LocationAwareLogger;

    if-eqz v0, :cond_0

    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;

    check-cast p0, Lorg/slf4j/spi/LocationAwareLogger;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/f;-><init>(Lorg/slf4j/spi/LocationAwareLogger;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/l;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/l;-><init>(Lorg/slf4j/Logger;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 0

    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/m;->j(Lorg/slf4j/Logger;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p1

    return-object p1
.end method
