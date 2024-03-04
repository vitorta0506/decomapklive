.class public abstract Lmg/a;
.super Lmg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmg/a$b;
    }
.end annotation


# static fields
.field private static final D:Lio/grpc/netty/shaded/io/netty/channel/q;

.field private static final E:Ljava/lang/String;


# instance fields
.field private final B:Ljava/lang/Runnable;

.field private C:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/q;

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/q;-><init>(ZI)V

    sput-object v0, Lmg/a;->D:Lio/grpc/netty/shaded/io/netty/channel/q;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lkg/j;

    .line 3
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/p0;

    .line 4
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmg/a;->E:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e;Ljava/nio/channels/SelectableChannel;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lmg/b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Ljava/nio/channels/SelectableChannel;I)V

    .line 2
    new-instance p1, Lmg/a$a;

    invoke-direct {p1, p0}, Lmg/a$a;-><init>(Lmg/a;)V

    iput-object p1, p0, Lmg/a;->B:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic V0(Lio/grpc/netty/shaded/io/netty/channel/f;)Z
    .locals 0

    invoke-static {p0}, Lmg/a;->f1(Lio/grpc/netty/shaded/io/netty/channel/f;)Z

    move-result p0

    return p0
.end method

.method static synthetic X0(Lmg/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmg/a;->C:Z

    return p1
.end method

.method private d1(Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lkg/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    check-cast p2, Lkg/j;

    .line 3
    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    return v2

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lmg/a;->b1(Lkg/j;)I

    move-result v0

    if-lez v0, :cond_5

    int-to-long v2, v0

    .line 6
    invoke-virtual {p1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/s;->w(J)V

    .line 7
    invoke-virtual {p2}, Lkg/j;->j1()Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    :cond_1
    return v1

    .line 9
    :cond_2
    instance-of v0, p2, Lio/grpc/netty/shaded/io/netty/channel/p0;

    if-eqz v0, :cond_6

    .line 10
    check-cast p2, Lio/grpc/netty/shaded/io/netty/channel/p0;

    .line 11
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/p0;->d()J

    move-result-wide v3

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/p0;->count()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    return v2

    .line 13
    :cond_3
    invoke-virtual {p0, p2}, Lmg/a;->c1(Lio/grpc/netty/shaded/io/netty/channel/p0;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 14
    invoke-virtual {p1, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/s;->w(J)V

    .line 15
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/p0;->d()J

    move-result-wide v2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/p0;->count()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-ltz p2, :cond_4

    .line 16
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->x()Z

    :cond_4
    return v1

    :cond_5
    const p1, 0x7fffffff

    return p1

    .line 17
    :cond_6
    new-instance p1, Ljava/lang/Error;

    invoke-direct {p1}, Ljava/lang/Error;-><init>()V

    throw p1
.end method

.method private static f1(Lio/grpc/netty/shaded/io/netty/channel/f;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lng/j;

    if-eqz v0, :cond_0

    check-cast p0, Lng/j;

    .line 2
    invoke-interface {p0}, Lng/f;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public R()Lio/grpc/netty/shaded/io/netty/channel/q;
    .locals 1

    sget-object v0, Lmg/a;->D:Lio/grpc/netty/shaded/io/netty/channel/q;

    return-object v0
.end method

.method protected final Y0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmg/b;->T0()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    and-int/lit8 v1, v1, -0x5

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    return-void
.end method

.method protected abstract Z0(Lkg/j;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final a1(Lio/grpc/netty/shaded/io/netty/channel/s;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->g()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/s;->g()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmg/a;->d1(Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected abstract b1(Lkg/j;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract c1(Lio/grpc/netty/shaded/io/netty/channel/p0;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final e1(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lmg/a;->h1()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lmg/a;->Y0()V

    .line 3
    invoke-virtual {p0}, Lmg/b;->Q0()Lmg/d;

    move-result-object p1

    iget-object v0, p0, Lmg/a;->B:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lug/f0;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method protected abstract g1()Z
.end method

.method protected final h1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmg/b;->T0()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    or-int/lit8 v1, v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    return-void
.end method

.method final i1(Lio/grpc/netty/shaded/io/netty/channel/f;)Z
    .locals 1

    invoke-virtual {p0}, Lmg/a;->g1()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmg/a;->C:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lmg/a;->f1(Lio/grpc/netty/shaded/io/netty/channel/f;)Z

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

.method protected abstract j1()Lio/grpc/netty/shaded/io/netty/channel/i;
.end method

.method protected final r0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p1, Lkg/j;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lkg/j;

    .line 3
    invoke-virtual {v0}, Lkg/j;->h1()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lmg/b;->S0(Lkg/j;)Lkg/j;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/p0;

    if-eqz v0, :cond_2

    return-object p1

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lmg/a;->E:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
