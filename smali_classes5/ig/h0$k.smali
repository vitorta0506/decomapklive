.class Lig/h0$k;
.super Lio/grpc/netty/shaded/io/netty/channel/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field private final b:Lio/grpc/netty/shaded/io/netty/channel/k;

.field private final c:Ljava/lang/String;

.field private d:Lig/f0;

.field private final e:Lio/grpc/ChannelLogger;


# direct methods
.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/g;-><init>()V

    const-string v0, "next"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/k;

    iput-object p1, p0, Lig/h0$k;->b:Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Handler"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lig/h0$k;->c:Ljava/lang/String;

    const-string p1, "negotiationLogger"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ChannelLogger;

    iput-object p1, p0, Lig/h0$k;->e:Lio/grpc/ChannelLogger;

    return-void
.end method


# virtual methods
.method public final A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lig/h0$k;->e:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lig/h0$k;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "{0} started"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lig/h0$k;->v(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method public final X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lig/f0;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lig/h0$k;->d:Lig/f0;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "pre-existing negotiation: %s < %s"

    invoke-static {v1, v2, v0, p2}, Lcom/google/common/base/o;->E(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    check-cast p2, Lig/f0;

    iput-object p2, p0, Lig/h0$k;->d:Lig/f0;

    .line 4
    invoke-virtual {p0, p1}, Lig/h0$k;->w(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0, p1, p2}, Lig/h0$k;->y(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected final s(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lig/h0$k;->d:Lig/f0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "previous protocol negotiation event hasn\'t triggered"

    invoke-static {v0, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lig/h0$k;->e:Lio/grpc/ChannelLogger;

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lig/h0$k;->c:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v2, "{0} completed"

    invoke-virtual {v0, v3, v2, v1}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lig/h0$k;->b:Lio/grpc/netty/shaded/io/netty/channel/k;

    invoke-interface {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/w;->t0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 4
    iget-object v0, p0, Lig/h0$k;->d:Lig/f0;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method protected final u()Lig/f0;
    .locals 2

    .line 1
    iget-object v0, p0, Lig/h0$k;->d:Lig/f0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "previous protocol negotiation event hasn\'t triggered"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lig/h0$k;->d:Lig/f0;

    return-object v0
.end method

.method protected v(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/l;->A(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method protected w(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    return-void
.end method

.method protected final x(Lig/f0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lig/h0$k;->d:Lig/f0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "previous protocol negotiation event hasn\'t triggered"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lig/f0;

    iput-object p1, p0, Lig/h0$k;->d:Lig/f0;

    return-void
.end method

.method protected y(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/p;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    return-void
.end method
