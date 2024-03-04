.class final Lig/h0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lig/j;)Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 2

    .line 1
    new-instance v0, Lig/h0$e;

    invoke-direct {v0, p1}, Lig/h0$e;-><init>(Lig/j;)V

    .line 2
    new-instance v1, Lig/h0$n;

    .line 3
    invoke-virtual {p1}, Lig/j;->z0()Lio/grpc/ChannelLogger;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lig/h0$n;-><init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)V

    return-object v1
.end method

.method public b()Lio/grpc/netty/shaded/io/netty/util/c;
    .locals 1

    sget-object v0, Lig/m0;->f:Lio/grpc/netty/shaded/io/netty/util/c;

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method
