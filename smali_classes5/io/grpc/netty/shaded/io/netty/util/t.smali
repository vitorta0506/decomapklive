.class public abstract Lio/grpc/netty/shaded/io/netty/util/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/util/t$a;
    }
.end annotation


# static fields
.field private static final a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static volatile b:Lio/grpc/netty/shaded/io/netty/util/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/t;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/t$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/t$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/t;->b:Lio/grpc/netty/shaded/io/netty/util/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/t;->a:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method public static b()Lio/grpc/netty/shaded/io/netty/util/t;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/t;->b:Lio/grpc/netty/shaded/io/netty/util/t;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector<",
            "TT;>;"
        }
    .end annotation

    sget v0, Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;->h:I

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/t;->d(Ljava/lang/Class;I)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Class;I)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
    .locals 2
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

    const-string v0, "samplingInterval"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    const-wide v0, 0x7fffffffffffffffL

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/util/t;->e(Ljava/lang/Class;IJ)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;

    move-result-object p1

    return-object p1
.end method

.method public abstract e(Ljava/lang/Class;IJ)Lio/grpc/netty/shaded/io/netty/util/ResourceLeakDetector;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
