.class Lio/grpc/alts/internal/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/alts/internal/g0;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic b:Lio/grpc/alts/internal/g0;


# direct methods
.method constructor <init>(Lio/grpc/alts/internal/g0;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/alts/internal/g0$a;->b:Lio/grpc/alts/internal/g0;

    iput-object p2, p0, Lio/grpc/alts/internal/g0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/g0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lio/grpc/alts/internal/g0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->f0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lio/grpc/alts/internal/g0$a;->b:Lio/grpc/alts/internal/g0;

    invoke-static {p1}, Lio/grpc/alts/internal/g0;->M(Lio/grpc/alts/internal/g0;)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lio/grpc/alts/internal/g0$a;->b:Lio/grpc/alts/internal/g0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/grpc/alts/internal/g0;->N(Lio/grpc/alts/internal/g0;Z)Z

    .line 6
    :try_start_0
    iget-object p1, p0, Lio/grpc/alts/internal/g0$a;->b:Lio/grpc/alts/internal/g0;

    iget-object v0, p0, Lio/grpc/alts/internal/g0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-static {p1, v0}, Lio/grpc/alts/internal/g0;->O(Lio/grpc/alts/internal/g0;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    iget-object v0, p0, Lio/grpc/alts/internal/g0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 8
    :goto_0
    iget-object p1, p0, Lio/grpc/alts/internal/g0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

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

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/g0$a;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
