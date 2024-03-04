.class Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->S0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lug/q;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/channel/y;

.field final synthetic d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lug/q;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->a:Lug/q;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    iput-object p4, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->c:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->a:Lug/q;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lug/q;->cancel(Z)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->f0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    .line 4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->c:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->e0(Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->g0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    move-result-object p1

    invoke-virtual {p1}, Lug/h;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->b:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object p1

    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$a;

    invoke-direct {v2, p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;J)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v2, v0, v1, v3}, Lug/l;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->d:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->g0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$k;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$b;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;Lug/q;)V

    invoke-virtual {v0, v1}, Lug/h;->c(Lug/r;)Lug/x;

    :goto_1
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

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$a;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
