.class Lig/a0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/a0;->h(Lio/grpc/internal/k1$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lig/a0;


# direct methods
.method constructor <init>(Lig/a0;)V
    .locals 0

    iput-object p1, p0, Lig/a0$e;->a:Lig/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lig/a0$e;->a:Lig/a0;

    invoke-static {v0}, Lig/a0;->j(Lig/a0;)Lig/d;

    move-result-object v0

    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lig/m0;->s(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {v0, p1}, Lig/d;->g(Lio/grpc/Status;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lug/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/i;

    invoke-virtual {p0, p1}, Lig/a0$e;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
