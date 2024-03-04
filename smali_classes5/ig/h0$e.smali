.class final Lig/h0$e;
.super Lio/grpc/netty/shaded/io/netty/channel/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final b:Lig/j;


# direct methods
.method public constructor <init>(Lig/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/p;-><init>()V

    const-string v0, "next"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lig/j;

    iput-object p1, p0, Lig/h0$e;->b:Lig/j;

    return-void
.end method


# virtual methods
.method public X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lig/f0;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lig/f0;

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Lig/h0$e;->b:Lig/j;

    invoke-interface {v0, p1, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->t0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 4
    iget-object p1, p0, Lig/h0$e;->b:Lig/j;

    .line 5
    invoke-virtual {p2}, Lig/f0;->a()Lio/grpc/a;

    move-result-object v0

    invoke-virtual {p2}, Lig/f0;->b()Lio/grpc/c0$c;

    move-result-object p2

    .line 6
    invoke-virtual {p1, v0, p2}, Lig/j;->A0(Lio/grpc/a;Lio/grpc/c0$c;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/p;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
