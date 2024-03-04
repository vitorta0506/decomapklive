.class public final Lio/grpc/netty/shaded/io/netty/util/internal/logging/h;
.super Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;
.source "SourceFile"


# static fields
.field public static final b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/h;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/h;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/h;->b:Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;

    invoke-static {p1}, Lorg/apache/logging/log4j/LogManager;->getLogger(Ljava/lang/String;)Lorg/apache/logging/log4j/Logger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/g;-><init>(Lorg/apache/logging/log4j/Logger;)V

    return-object v0
.end method
