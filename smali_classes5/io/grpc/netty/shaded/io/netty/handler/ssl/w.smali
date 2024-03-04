.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/ssl/u;


# static fields
.field public static final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/w;

.field private static final b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/w;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/w;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/w;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/w;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/w$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/w$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/w;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$c;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Application protocol negotiation unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$e;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Application protocol negotiation unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/w;->b:Lio/grpc/netty/shaded/io/netty/handler/ssl/u$f;

    return-object v0
.end method
