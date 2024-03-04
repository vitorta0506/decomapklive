.class final Lio/grpc/netty/shaded/io/netty/channel/e0$g;
.super Lio/grpc/netty/shaded/io/netty/channel/b;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/t;
.implements Lio/grpc/netty/shaded/io/netty/channel/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "g"
.end annotation


# instance fields
.field private final m:Lio/grpc/netty/shaded/io/netty/channel/e$a;

.field final synthetic n:Lio/grpc/netty/shaded/io/netty/channel/e0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lio/grpc/netty/shaded/io/netty/channel/e0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->n:Lio/grpc/netty/shaded/io/netty/channel/e0;

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/e0;->u0()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lug/j;Ljava/lang/String;Ljava/lang/Class;)V

    .line 3
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/e0;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->m:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m1()Z

    return-void
.end method

.method private r1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->n:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->v0(Lio/grpc/netty/shaded/io/netty/channel/e0;)Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->n:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->v0(Lio/grpc/netty/shaded/io/netty/channel/e0;)Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->read()Lio/grpc/netty/shaded/io/netty/channel/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    return-void
.end method

.method public C(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->w()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public D(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->q()Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->r1()V

    return-void
.end method

.method public E(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    return-void
.end method

.method public V(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->m:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    invoke-interface {p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method public X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public Y(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->x()Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->n:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->v0(Lio/grpc/netty/shaded/io/netty/channel/e0;)Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->isOpen()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->n:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->w0(Lio/grpc/netty/shaded/io/netty/channel/e0;)V

    :cond_0
    return-void
.end method

.method public Z(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->r1()V

    return-void
.end method

.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 0

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->m:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    invoke-interface {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/m;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public j(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->m:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->M(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->m:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method public n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->m:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->flush()V

    return-void
.end method

.method public o(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->m:Lio/grpc/netty/shaded/io/netty/channel/e$a;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->T()V

    return-void
.end method

.method public r(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e0$g;->n:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->v1()V

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->y()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->n0()Lio/grpc/netty/shaded/io/netty/channel/m;

    return-void
.end method

.method public z()Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 0

    return-object p0
.end method
