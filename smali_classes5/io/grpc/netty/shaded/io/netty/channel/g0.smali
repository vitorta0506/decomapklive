.class public abstract Lio/grpc/netty/shaded/io/netty/channel/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/q0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/g0$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private volatile b:I

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/g0;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/g0;-><init>(IZ)V

    return-void
.end method

.method constructor <init>(IZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0;->c:Z

    .line 5
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/channel/g0;->a:Z

    .line 6
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/g0;->b(I)Lio/grpc/netty/shaded/io/netty/channel/q0;

    return-void
.end method

.method static synthetic d(Lio/grpc/netty/shaded/io/netty/channel/g0;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0;->c:Z

    return p0
.end method

.method static synthetic e(Lio/grpc/netty/shaded/io/netty/channel/g0;)Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0;->a:Z

    return p0
.end method


# virtual methods
.method public b(I)Lio/grpc/netty/shaded/io/netty/channel/q0;
    .locals 1

    const-string v0, "maxMessagesPerRead"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/g0;->b:I

    return-object p0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/g0;->b:I

    return v0
.end method
