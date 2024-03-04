.class final Lio/grpc/netty/shaded/io/netty/channel/o0;
.super Lio/grpc/netty/shaded/io/netty/channel/b0;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/b0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    const-string p1, "cause"

    .line 2
    invoke-static {p3, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/o0;->c:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public L()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/o0;->c:Ljava/lang/Throwable;

    return-object v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
