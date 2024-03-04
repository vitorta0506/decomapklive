.class final Lig/h0$g;
.super Lio/grpc/netty/shaded/io/netty/channel/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lig/j;

.field private final d:Lio/grpc/ChannelLogger;

.field private e:Lig/f0;


# direct methods
.method constructor <init>(Ljava/lang/String;Lig/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/p;-><init>()V

    const-string v0, "authority"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lig/h0$g;->b:Ljava/lang/String;

    const-string p1, "next"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lig/j;

    iput-object p1, p0, Lig/h0$g;->c:Lig/j;

    .line 4
    invoke-virtual {p2}, Lig/j;->z0()Lio/grpc/ChannelLogger;

    move-result-object p1

    iput-object p1, p0, Lig/h0$g;->d:Lio/grpc/ChannelLogger;

    return-void
.end method


# virtual methods
.method public A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lig/h0$g;->d:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v2, "Http2Upgrade started"

    invoke-virtual {v0, v1, v2}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/o;-><init>()V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->J0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 4
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;

    iget-object v2, p0, Lig/h0$g;->c:Lig/j;

    invoke-direct {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/w;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)V

    .line 5
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;

    const/16 v4, 0x3e8

    invoke-direct {v2, v0, v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$a;Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$b;I)V

    .line 6
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->J0(Ljava/lang/String;Ljava/lang/String;Lio/grpc/netty/shaded/io/netty/channel/k;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 7
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;->i:Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;

    const-string v3, "/"

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/h;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http/y;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/f;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->L:Lio/grpc/netty/shaded/io/netty/util/c;

    iget-object v3, p0, Lig/h0$g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;->d(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/t;

    .line 9
    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/j;->j3:Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 10
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/l;->A(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method public X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lig/f0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lig/h0$g;->e:Lig/f0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string p1, "negotiation already started"

    invoke-static {v1, p1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    check-cast p2, Lig/f0;

    iput-object p2, p0, Lig/h0$g;->e:Lig/f0;

    goto :goto_2

    .line 4
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;->UPGRADE_SUCCESSFUL:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;

    if-ne p2, v0, :cond_3

    .line 5
    iget-object p2, p0, Lig/h0$g;->e:Lig/f0;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string p2, "negotiation not yet complete"

    invoke-static {v1, p2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 6
    iget-object p2, p0, Lig/h0$g;->d:Lio/grpc/ChannelLogger;

    sget-object v0, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v1, "Http2Upgrade finished"

    invoke-virtual {p2, v0, v1}, Lio/grpc/ChannelLogger;->a(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p2

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/w;->remove(Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 8
    iget-object p1, p0, Lig/h0$g;->c:Lig/j;

    iget-object p2, p0, Lig/h0$g;->e:Lig/f0;

    invoke-virtual {p2}, Lig/f0;->a()Lio/grpc/a;

    move-result-object p2

    iget-object v0, p0, Lig/h0$g;->e:Lig/f0;

    invoke-virtual {v0}, Lig/f0;->b()Lio/grpc/c0$c;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lig/j;->A0(Lio/grpc/a;Lio/grpc/c0$c;)V

    goto :goto_2

    .line 9
    :cond_3
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;->UPGRADE_REJECTED:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpClientUpgradeHandler$UpgradeEvent;

    if-ne p2, v0, :cond_4

    const-string p2, "HTTP/2 upgrade rejected"

    .line 10
    invoke-static {p2}, Lig/h0;->a(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    goto :goto_2

    .line 11
    :cond_4
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/p;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
