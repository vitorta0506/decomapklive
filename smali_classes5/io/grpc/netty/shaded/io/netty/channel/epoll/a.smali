.class abstract Lio/grpc/netty/shaded/io/netty/channel/epoll/a;
.super Lio/grpc/netty/shaded/io/netty/channel/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;
    }
.end annotation


# static fields
.field private static final C:Lio/grpc/netty/shaded/io/netty/channel/q;


# instance fields
.field A:Z

.field protected volatile B:Z

.field final s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

.field private t:Lio/grpc/netty/shaded/io/netty/channel/y;

.field private u:Lug/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lug/q<",
            "*>;"
        }
    .end annotation
.end field

.field private v:Ljava/net/SocketAddress;

.field private volatile w:Ljava/net/SocketAddress;

.field private volatile x:Ljava/net/SocketAddress;

.field protected y:I

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/q;-><init>(Z)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->C:Lio/grpc/netty/shaded/io/netty/channel/q;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Ljava/net/SocketAddress;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    .line 8
    sget p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->e:I

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    const-string p1, "fd"

    .line 9
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->B:Z

    .line 11
    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->x:Ljava/net/SocketAddress;

    .line 12
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->G()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->w:Ljava/net/SocketAddress;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    .line 2
    sget p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->e:I

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    const-string p1, "fd"

    .line 3
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    .line 4
    iput-boolean p3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->B:Z

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->G()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->w:Ljava/net/SocketAddress;

    .line 6
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->K()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->x:Ljava/net/SocketAddress;

    :cond_0
    return-void
.end method

.method static synthetic D0(Lio/grpc/netty/shaded/io/netty/channel/f;)Z
    .locals 0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->X0(Lio/grpc/netty/shaded/io/netty/channel/f;)Z

    move-result p0

    return p0
.end method

.method static synthetic E0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->t:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object p0
.end method

.method static synthetic F0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->t:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object p1
.end method

.method static synthetic G0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Ljava/net/SocketAddress;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->v:Ljava/net/SocketAddress;

    return-object p0
.end method

.method static synthetic H0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->v:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic I0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lug/q;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->u:Lug/q;

    return-object p0
.end method

.method static synthetic K0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Lug/q;)Lug/q;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->u:Lug/q;

    return-object p1
.end method

.method static synthetic L0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->x:Ljava/net/SocketAddress;

    return-object p1
.end method

.method protected static M0(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {p0}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw p0
.end method

.method private static X0(Lio/grpc/netty/shaded/io/netty/channel/f;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->e()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    instance-of v0, p0, Lng/j;

    if-eqz v0, :cond_1

    check-cast p0, Lng/j;

    .line 4
    invoke-interface {p0}, Lng/f;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Z0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->m1(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V

    :cond_0
    return-void
.end method

.method private static c1(Ljava/lang/Object;Lkg/j;Lkg/k;I)Lkg/j;
    .locals 1

    .line 1
    invoke-interface {p2, p3}, Lkg/k;->h(I)Lkg/j;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {p2, p1, v0, p3}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    .line 3
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method protected bridge synthetic A0()Lio/grpc/netty/shaded/io/netty/channel/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->d1()Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    move-result-object v0

    return-object v0
.end method

.method protected B0()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->x:Ljava/net/SocketAddress;

    return-object v0
.end method

.method final N0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    .line 4
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->A()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$b;

    invoke-direct {v2, p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->b:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    :goto_0
    return-void
.end method

.method P0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Y0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Z0()V

    :cond_0
    return-void
.end method

.method public abstract Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;
.end method

.method public R()Lio/grpc/netty/shaded/io/netty/channel/q;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->C:Lio/grpc/netty/shaded/io/netty/channel/q;

    return-object v0
.end method

.method protected R0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p2

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->M0(Ljava/net/InetSocketAddress;)V

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->M0(Ljava/net/InetSocketAddress;)V

    .line 5
    :cond_2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->x:Ljava/net/SocketAddress;

    if-nez v1, :cond_6

    if-eqz p2, :cond_3

    .line 6
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1, p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->r(Ljava/net/SocketAddress;)V

    .line 7
    :cond_3
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->S0(Ljava/net/SocketAddress;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez v0, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    .line 9
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->K()Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/h;->a(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->x:Ljava/net/SocketAddress;

    .line 10
    :cond_5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->G()Ljava/net/InetSocketAddress;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->w:Ljava/net/SocketAddress;

    return p2

    .line 11
    :cond_6
    new-instance p1, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {p1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw p1
.end method

.method S0(Ljava/net/SocketAddress;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->s(Ljava/net/SocketAddress;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c:I

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->e1(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->h0()V

    .line 4
    throw p1
.end method

.method protected final T0(Lkg/j;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->R()Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    move-result-object v1

    invoke-virtual {p1}, Lkg/j;->t2()I

    move-result v2

    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/v0$c;->b(I)V

    .line 3
    invoke-virtual {p1}, Lkg/j;->b1()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p1}, Lkg/j;->p1()J

    move-result-wide v2

    invoke-virtual {p1}, Lkg/j;->F()I

    move-result v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->l(JII)I

    move-result v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lkg/j;->t2()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->k(Ljava/nio/ByteBuffer;II)I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p1, v0}, Lkg/j;->L2(I)Lkg/j;

    :cond_1
    return v1
.end method

.method protected final U0(Lio/grpc/netty/shaded/io/netty/channel/s;Lkg/j;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkg/j;->b1()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p2}, Lkg/j;->p1()J

    move-result-wide v2

    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v4

    invoke-virtual {p2}, Lkg/j;->K2()I

    move-result p2

    invoke-virtual {v0, v2, v3, v4, p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->n(JII)I

    move-result p2

    if-lez p2, :cond_2

    int-to-long v2, p2

    .line 3
    invoke-virtual {p1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/s;->A(J)V

    return v1

    .line 4
    :cond_0
    invoke-virtual {p2}, Lkg/j;->s1()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 5
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lkg/j;->q1()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 6
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, p2, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->m(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long v2, v0

    .line 8
    invoke-virtual {p1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/s;->A(J)V

    return v1

    :cond_2
    const p1, 0x7fffffff

    return p1
.end method

.method final V0(Lkg/j;Ljava/net/InetSocketAddress;Z)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkg/j;->b1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lkg/j;->p1()J

    move-result-wide v2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result p3

    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result p1

    invoke-virtual {p2, v2, v3, p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->n(JII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v4

    invoke-virtual {p1}, Lkg/j;->K2()I

    move-result v5

    .line 5
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    move v8, p3

    .line 6
    invoke-virtual/range {v1 .. v8}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->N(JIILjava/net/InetAddress;IZ)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lkg/j;->s1()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->e1()Lio/grpc/netty/shaded/io/netty/channel/unix/a;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v1

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->c(Lkg/j;II)Z

    .line 10
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->e()I

    move-result v6

    const/4 p1, 0x0

    if-nez p2, :cond_2

    .line 11
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->i(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, v6}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->p(JI)J

    move-result-wide p1

    return-wide p1

    .line 12
    :cond_2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->i(I)J

    move-result-wide v4

    .line 13
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    move v9, p3

    .line 14
    invoke-virtual/range {v3 .. v9}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->O(JILjava/net/InetAddress;IZ)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 15
    :cond_3
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v0

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lkg/j;->e1(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez p2, :cond_4

    .line 16
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    invoke-virtual {p1, v3, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->m(Ljava/nio/ByteBuffer;II)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 17
    :cond_4
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 18
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    move v8, p3

    .line 19
    invoke-virtual/range {v2 .. v8}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->M(Ljava/nio/ByteBuffer;IILjava/net/InetAddress;IZ)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method Y0(I)Z
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final a1(Ljava/lang/Object;Lkg/j;)Lkg/j;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 3
    sget-object p1, Lkg/s0;->d:Lkg/j;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->P()Lkg/k;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lkg/k;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-static {p1, p2, v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->c1(Ljava/lang/Object;Lkg/j;Lkg/k;I)Lkg/j;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-static {}, Lkg/n;->N()Lkg/j;

    move-result-object v2

    if-nez v2, :cond_2

    .line 8
    invoke-static {p1, p2, v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->c1(Ljava/lang/Object;Lkg/j;Lkg/k;I)Lkg/j;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-virtual {p2}, Lkg/j;->Q1()I

    move-result v1

    invoke-virtual {v2, p2, v1, v0}, Lkg/j;->z2(Lkg/j;II)Lkg/j;

    .line 10
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    return-object v2
.end method

.method public bridge synthetic b0()Lio/grpc/netty/shaded/io/netty/channel/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object v0

    return-object v0
.end method

.method protected final b1(Lkg/j;)Lkg/j;
    .locals 0

    invoke-virtual {p0, p1, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->a1(Ljava/lang/Object;Lkg/j;)Lkg/j;

    move-result-object p1

    return-object p1
.end method

.method protected abstract d1()Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;
.end method

.method e1(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Y0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    or-int/2addr p1, v0

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Z0()V

    :cond_0
    return-void
.end method

.method final f1(Lio/grpc/netty/shaded/io/netty/channel/f;)Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->z:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->X0(Lio/grpc/netty/shaded/io/netty/channel/f;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final g0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->f:Z

    .line 3
    sget v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->b:I

    invoke-virtual {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->e1(I)V

    .line 4
    iget-boolean v1, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->g:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->J(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    :cond_0
    return-void
.end method

.method protected h0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->B:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->z:Z

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->t:Lio/grpc/netty/shaded/io/netty/channel/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {v1, v3}, Lug/x;->z(Ljava/lang/Throwable;)Z

    .line 5
    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->t:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 6
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->u:Lug/q;

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v1, v0}, Lug/q;->cancel(Z)Z

    .line 8
    iput-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->u:Lug/q;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->O()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->i0()V

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$a;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_3
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V

    .line 15
    throw v0
.end method

.method protected i0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->q1(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->B:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->g()Z

    move-result v0

    return v0
.end method

.method protected j0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->h0()V

    return-void
.end method

.method protected l0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->A:Z

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->d1(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V

    return-void
.end method

.method protected u0(Lio/grpc/netty/shaded/io/netty/channel/l0;)Z
    .locals 0

    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    return p1
.end method

.method protected v0()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->w:Ljava/net/SocketAddress;

    return-object v0
.end method
