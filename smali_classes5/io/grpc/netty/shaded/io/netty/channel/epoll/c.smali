.class public abstract Lio/grpc/netty/shaded/io/netty/channel/epoll/c;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/epoll/c$b;,
        Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;,
        Lio/grpc/netty/shaded/io/netty/channel/epoll/c$d;,
        Lio/grpc/netty/shaded/io/netty/channel/epoll/c$c;
    }
.end annotation


# static fields
.field private static final I:Lio/grpc/netty/shaded/io/netty/channel/q;

.field private static final J:Ljava/lang/String;

.field private static final K:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final D:Ljava/lang/Runnable;

.field private volatile E:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/netty/shaded/io/netty/channel/epoll/c$d;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

.field private G:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

.field private H:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/q;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/q;-><init>(ZI)V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->I:Lio/grpc/netty/shaded/io/netty/channel/q;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lkg/j;

    .line 4
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;

    .line 5
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->J:Ljava/lang/String;

    .line 6
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->K:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Ljava/net/SocketAddress;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Ljava/net/SocketAddress;)V

    .line 2
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$a;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->D:Ljava/lang/Runnable;

    .line 3
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    sget p2, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->d:I

    or-int/2addr p1, p2

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;Z)V

    .line 5
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$a;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->D:Ljava/lang/Runnable;

    .line 6
    iget p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    sget p2, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->d:I

    or-int/2addr p1, p2

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->y:I

    return-void
.end method

.method static synthetic g1(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->E:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic h1(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    return-object p0
.end method

.method private i1(JJJ)V
    .locals 2

    const/4 v0, 0x1

    cmp-long v1, p1, p3

    if-nez v1, :cond_0

    shl-long/2addr p1, v0

    cmp-long p3, p1, p5

    if-lez p3, :cond_1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->O(J)V

    goto :goto_0

    :cond_0
    const-wide/16 p5, 0x1000

    cmp-long v1, p1, p5

    if-lez v1, :cond_1

    ushr-long/2addr p1, v0

    cmp-long p5, p3, p1

    if-gez p5, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->O(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private j1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->E:Ljava/util/Queue;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$d;

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 3
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 4
    :cond_2
    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$d;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v2, v1}, Lug/x;->z(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method private k1(Lio/grpc/netty/shaded/io/netty/channel/s;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->J()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v2

    check-cast v2, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->e1()Lio/grpc/netty/shaded/io/netty/channel/unix/a;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->h(J)V

    .line 4
    invoke-virtual {p1, v2}, Lio/grpc/netty/shaded/io/netty/channel/s;->m(Lio/grpc/netty/shaded/io/netty/channel/s$e;)V

    .line 5
    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->e()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 6
    invoke-direct {p0, p1, v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->o1(Lio/grpc/netty/shaded/io/netty/channel/s;Lio/grpc/netty/shaded/io/netty/channel/unix/a;)I

    move-result p1

    return p1

    :cond_0
    const-wide/16 v0, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/s;->A(J)V

    const/4 p1, 0x0

    return p1
.end method

.method private static m1(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->K:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "Error while closing a pipe"

    invoke-interface {v0, v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private n1(Lio/grpc/netty/shaded/io/netty/channel/s;Lkg/j;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p2}, Lkg/j;->b1()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lkg/j;->s1()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lkg/j;->t1()[Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 5
    array-length v6, v5

    int-to-long v7, v0

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/d;->J()J

    move-result-wide v9

    move-object v3, p0

    move-object v4, p1

    .line 7
    invoke-direct/range {v3 .. v10}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->p1(Lio/grpc/netty/shaded/io/netty/channel/s;[Ljava/nio/ByteBuffer;IJJ)I

    move-result p1

    return p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->U0(Lio/grpc/netty/shaded/io/netty/channel/s;Lkg/j;)I

    move-result p1

    return p1
.end method

.method private o1(Lio/grpc/netty/shaded/io/netty/channel/s;Lio/grpc/netty/shaded/io/netty/channel/unix/a;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->k()J

    move-result-wide v1

    .line 2
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->e()I

    move-result v0

    .line 3
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->i(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->p(JI)J

    move-result-wide v7

    const-wide/16 v3, 0x0

    cmp-long v0, v7, v3

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/unix/a;->g()J

    move-result-wide v5

    move-object v0, p0

    move-wide v3, v7

    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->i1(JJJ)V

    .line 5
    invoke-virtual {p1, v7, v8}, Lio/grpc/netty/shaded/io/netty/channel/s;->A(J)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const p1, 0x7fffffff

    return p1
.end method

.method private p1(Lio/grpc/netty/shaded/io/netty/channel/s;[Ljava/nio/ByteBuffer;IJJ)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    cmp-long v0, p4, p6

    if-lez v0, :cond_0

    move-wide p4, p6

    .line 1
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    const/4 v3, 0x0

    move-object v2, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;->o([Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    move-object v1, p0

    move-wide v2, p4

    move-wide v4, p2

    move-wide v6, p6

    .line 2
    invoke-direct/range {v1 .. v7}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->i1(JJJ)V

    .line 3
    invoke-virtual {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/s;->A(J)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method private q1(Lio/grpc/netty/shaded/io/netty/channel/s;Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->d()J

    move-result-wide v8

    .line 2
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->count()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->e()J

    move-result-wide v2

    sub-long v6, v10, v8

    move-object v1, p2

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;->o0(Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;JJJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 5
    invoke-virtual {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/s;->w(J)V

    .line 6
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;->d()J

    move-result-wide v0

    cmp-long p2, v0, v10

    if-ltz p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v4, :cond_3

    .line 8
    invoke-virtual {p0, p2, v8, v9}, Lio/grpc/netty/shaded/io/netty/channel/a;->C0(Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;J)V

    :cond_3
    const p1, 0x7fffffff

    return p1
.end method

.method private r1(Lio/grpc/netty/shaded/io/netty/channel/s;Lio/grpc/netty/shaded/io/netty/channel/p0;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/p0;->d()J

    move-result-wide v0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/p0;->count()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->H:Ljava/nio/channels/WritableByteChannel;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$b;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->H:Ljava/nio/channels/WritableByteChannel;

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->H:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/p0;->d()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/p0;->g(Ljava/nio/channels/WritableByteChannel;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 6
    invoke-virtual {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/s;->w(J)V

    .line 7
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/p0;->d()J

    move-result-wide v0

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/p0;->count()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-ltz p2, :cond_2

    .line 8
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const p1, 0x7fffffff

    return p1
.end method


# virtual methods
.method protected bridge synthetic A0()Lio/grpc/netty/shaded/io/netty/channel/a$a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->d1()Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    move-result-object v0

    return-object v0
.end method

.method public R()Lio/grpc/netty/shaded/io/netty/channel/q;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->I:Lio/grpc/netty/shaded/io/netty/channel/q;

    return-object v0
.end method

.method protected d1()Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$c;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)V

    return-object v0
.end method

.method protected h0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->h0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->m1(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;)V

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->G:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->m1(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;)V

    .line 4
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->j1()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->F:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->m1(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;)V

    .line 6
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->G:Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->m1(Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;)V

    .line 7
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->j1()V

    .line 8
    throw v0
.end method

.method public bridge synthetic isActive()Z
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isActive()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpen()Z
    .locals 1

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected l1(Lio/grpc/netty/shaded/io/netty/channel/s;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->g()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkg/j;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lkg/j;

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->n1(Lio/grpc/netty/shaded/io/netty/channel/s;Lkg/j;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->q1(Lio/grpc/netty/shaded/io/netty/channel/s;Lio/grpc/netty/shaded/io/netty/channel/DefaultFileRegion;)I

    move-result p1

    return p1

    .line 6
    :cond_1
    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/channel/p0;

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/p0;

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->r1(Lio/grpc/netty/shaded/io/netty/channel/s;Lio/grpc/netty/shaded/io/netty/channel/p0;)I

    move-result p1

    return p1

    .line 8
    :cond_2
    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;

    if-eqz v1, :cond_4

    .line 9
    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;->a()Z

    move-result v0

    if-nez v0, :cond_3

    const p1, 0x7fffffff

    return p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method protected final o0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->X(ZZ)V

    return-void
.end method

.method protected p0(Lio/grpc/netty/shaded/io/netty/channel/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/c0;->i()I

    move-result v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->G()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->g()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lkg/j;

    if-eqz v2, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->k1(Lio/grpc/netty/shaded/io/netty/channel/s;)I

    move-result v1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 5
    sget p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c:I

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->P0(I)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->l1(Lio/grpc/netty/shaded/io/netty/channel/s;)I

    move-result v1

    :goto_0
    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    if-nez v0, :cond_3

    .line 7
    sget p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c:I

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->P0(I)V

    .line 8
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->D:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 9
    :cond_3
    sget p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c:I

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->e1(I)V

    :goto_1
    return-void
.end method

.method protected r0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p1, Lkg/j;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lkg/j;

    .line 3
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/unix/h;->b(Lkg/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->b1(Lkg/j;)Lkg/j;

    move-result-object p1

    :cond_0
    return-object p1

    .line 4
    :cond_1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/p0;

    if-nez v0, :cond_3

    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$e;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->J:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-object p1
.end method
