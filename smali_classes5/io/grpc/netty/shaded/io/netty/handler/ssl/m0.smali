.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/r1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/handler/ssl/r1<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/m0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/m0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/m0<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/u0;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/m0<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/g0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    const-string v1, "USE_TASKS"

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;->f:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    const-string v1, "TLS_FALSE_START"

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;->g:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    const-string v1, "PRIVATE_KEY_METHOD"

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;->h:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    const-string v1, "ASYNC_PRIVATE_KEY_METHOD"

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;->i:Lio/grpc/netty/shaded/io/netty/handler/ssl/m0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r1;-><init>(Ljava/lang/String;)V

    return-void
.end method
