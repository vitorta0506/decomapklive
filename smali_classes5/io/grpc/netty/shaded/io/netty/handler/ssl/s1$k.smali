.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;
.super Lug/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/h<",
        "Lio/grpc/netty/shaded/io/netty/channel/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-direct {p0}, Lug/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/handler/ssl/t1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)V

    return-void
.end method


# virtual methods
.method protected r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lug/h;->r()V

    return-void
.end method

.method protected v()Lug/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
