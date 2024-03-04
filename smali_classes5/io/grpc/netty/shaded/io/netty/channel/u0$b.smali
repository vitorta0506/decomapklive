.class final Lio/grpc/netty/shaded/io/netty/channel/u0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final f:Lio/grpc/netty/shaded/io/netty/util/internal/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r<",
            "Lio/grpc/netty/shaded/io/netty/channel/u0$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lio/grpc/netty/shaded/io/netty/channel/u0$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

.field private c:J

.field private d:Lio/grpc/netty/shaded/io/netty/channel/y;

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/u0$b$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/u0$b$a;-><init>()V

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->b(Lio/grpc/netty/shaded/io/netty/util/internal/r$b;)Lio/grpc/netty/shaded/io/netty/util/internal/r;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->f:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/util/internal/r$a<",
            "Lio/grpc/netty/shaded/io/netty/channel/u0$b;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;Lio/grpc/netty/shaded/io/netty/channel/u0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;-><init>(Lio/grpc/netty/shaded/io/netty/util/internal/r$a;)V

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Lio/grpc/netty/shaded/io/netty/channel/u0$b;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->b:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/channel/u0$b;Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Lio/grpc/netty/shaded/io/netty/channel/u0$b;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->b:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    return-object p1
.end method

.method static synthetic c(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)J
    .locals 2

    iget-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->c:J

    return-wide v0
.end method

.method static synthetic d(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->d:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object p0
.end method

.method static synthetic f(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->h()V

    return-void
.end method

.method static g(Ljava/lang/Object;ILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/u0$b;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->f:Lio/grpc/netty/shaded/io/netty/util/internal/r;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    int-to-long v1, p1

    .line 2
    iput-wide v1, v0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->c:J

    .line 3
    iput-object p0, v0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->e:Ljava/lang/Object;

    .line 4
    iput-object p2, v0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->d:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object v0
.end method

.method private h()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->c:J

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->b:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    .line 3
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->e:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->d:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->a:Lio/grpc/netty/shaded/io/netty/util/internal/r$a;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/r$a;->a(Ljava/lang/Object;)V

    return-void
.end method
