.class public Lio/grpc/netty/shaded/io/netty/channel/a0;
.super Lio/grpc/netty/shaded/io/netty/channel/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/a0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lio/grpc/netty/shaded/io/netty/channel/o;",
        "O::",
        "Lio/grpc/netty/shaded/io/netty/channel/t;",
        ">",
        "Lio/grpc/netty/shaded/io/netty/channel/g;"
    }
.end annotation


# static fields
.field private static final g:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

.field private c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

.field private volatile d:Z

.field private e:Lio/grpc/netty/shaded/io/netty/channel/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private f:Lio/grpc/netty/shaded/io/netty/channel/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/a0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/a0;->g:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/g;-><init>()V

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/l;->p()V

    return-void
.end method

.method private F(Lio/grpc/netty/shaded/io/netty/channel/o;Lio/grpc/netty/shaded/io/netty/channel/t;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    if-nez v0, :cond_2

    const-string v0, "inboundHandler"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "outboundHandler"

    .line 3
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/channel/t;

    const-string v0, " to get combined."

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p2, Lio/grpc/netty/shaded/io/netty/channel/o;

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "outboundHandler must not implement "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/o;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inboundHandler must not implement "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/t;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init() can not be invoked if "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/a0;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " was constructed with non-default constructor."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic s(Lio/grpc/netty/shaded/io/netty/channel/a0;)Lio/grpc/netty/shaded/io/netty/channel/a0$b;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    return-object p0
.end method

.method static synthetic u(Lio/grpc/netty/shaded/io/netty/channel/a0;)Lio/grpc/netty/shaded/io/netty/channel/t;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    return-object p0
.end method

.method static synthetic v()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/a0;->g:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-object v0
.end method

.method private w()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "handler not added to pipeline yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-direct {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/k;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/a0$a;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/a0$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a0;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/k;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->d:Z

    .line 5
    :try_start_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/k;->A(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/k;->A(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/k;->A(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 7
    throw p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() must be invoked before being added to a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " if "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/a0;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was constructed with the default constructor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final B()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a0;->w()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->b()V

    return-void
.end method

.method public C(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/o;->C(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->w()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public D(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/o;->D(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->q()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public E(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->b()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->b()V

    .line 3
    throw p1
.end method

.method public V(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/t;->V(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method public X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/o;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public Y(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/o;->Y(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->x()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public Z(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/o;->Z(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/o;->a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/t;->e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/o;->h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public j(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/t;->j(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->M(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/t;->l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method public n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/t;->n(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public o(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->c:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/t;->o(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public r(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/o;->r(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->y()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method public t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    iget-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->c:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/o;->t(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->n0()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method protected final x(Lio/grpc/netty/shaded/io/netty/channel/o;Lio/grpc/netty/shaded/io/netty/channel/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/a0;->F(Lio/grpc/netty/shaded/io/netty/channel/o;Lio/grpc/netty/shaded/io/netty/channel/t;)V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/o;

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    return-void
.end method

.method protected final y()Lio/grpc/netty/shaded/io/netty/channel/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->f:Lio/grpc/netty/shaded/io/netty/channel/t;

    return-object v0
.end method

.method public final z()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a0;->w()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a0;->b:Lio/grpc/netty/shaded/io/netty/channel/a0$b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a0$b;->b()V

    return-void
.end method
