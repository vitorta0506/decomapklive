.class abstract Lio/grpc/netty/shaded/io/netty/channel/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/r0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/t0$d;,
        Lio/grpc/netty/shaded/io/netty/channel/t0$b;,
        Lio/grpc/netty/shaded/io/netty/channel/t0$c;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/r0$a;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/r0$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "estimatorHandle"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/t0;->a:Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/r0$a;Lio/grpc/netty/shaded/io/netty/channel/t0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/t0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/r0$a;)V

    return-void
.end method

.method static c(Lio/grpc/netty/shaded/io/netty/channel/e;)Lio/grpc/netty/shaded/io/netty/channel/t0;
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    instance-of v0, v0, Lio/grpc/netty/shaded/io/netty/channel/e0;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/t0$c;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p0

    check-cast p0, Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/t0$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;)V

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->S()Lio/grpc/netty/shaded/io/netty/channel/s;

    move-result-object v0

    .line 4
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object p0

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/f;->j()Lio/grpc/netty/shaded/io/netty/channel/r0;

    move-result-object p0

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/r0;->a()Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    move-result-object p0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/t0$d;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/t0$d;-><init>(Lio/grpc/netty/shaded/io/netty/channel/r0$a;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/t0$b;

    invoke-direct {v1, v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/t0$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/s;Lio/grpc/netty/shaded/io/netty/channel/r0$a;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract a(J)V
.end method

.method public abstract b(J)V
.end method

.method public final size(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/t0;->a:Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/r0$a;->size(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
