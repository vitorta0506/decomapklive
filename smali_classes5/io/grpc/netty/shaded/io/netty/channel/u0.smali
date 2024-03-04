.class public final Lio/grpc/netty/shaded/io/netty/channel/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/u0$b;
    }
.end annotation


# static fields
.field private static final h:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final i:I


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/channel/v;

.field private final b:Lug/j;

.field private final c:Lio/grpc/netty/shaded/io/netty/channel/t0;

.field private d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

.field private e:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

.field private f:I

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/u0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/u0;->h:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const/16 v0, 0x40

    const-string v1, "io.grpc.netty.shaded.io.netty.transport.pendingWriteSizeOverhead"

    .line 2
    invoke-static {v1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/grpc/netty/shaded/io/netty/channel/u0;->i:I

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/t0;->c(Lio/grpc/netty/shaded/io/netty/channel/e;)Lio/grpc/netty/shaded/io/netty/channel/t0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->c:Lio/grpc/netty/shaded/io/netty/channel/t0;

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->a:Lio/grpc/netty/shaded/io/netty/channel/v;

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->b:Lug/j;

    return-void
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method private e(Lio/grpc/netty/shaded/io/netty/channel/u0$b;Z)V
    .locals 5

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->a(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    move-result-object v0

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->c(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)J

    move-result-wide v1

    if-eqz p2, :cond_1

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->e:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->f:I

    const-wide/16 v3, 0x0

    .line 5
    iput-wide v3, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->g:J

    goto :goto_0

    .line 6
    :cond_0
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    .line 7
    iget p2, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->f:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->f:I

    .line 8
    iget-wide v3, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->g:J

    sub-long/2addr v3, v1

    iput-wide v3, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->g:J

    .line 9
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->f(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)V

    .line 10
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->c:Lio/grpc/netty/shaded/io/netty/channel/t0;

    invoke-virtual {p1, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/t0;->a(J)V

    return-void
.end method

.method private static i(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    instance-of v0, p0, Lio/grpc/netty/shaded/io/netty/channel/e1;

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/u0;->h:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "Failed to mark a promise as failure because it\'s done already: {}"

    invoke-interface {v0, v1, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private k(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->c:Lio/grpc/netty/shaded/io/netty/channel/t0;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/t0;->size(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    sget v0, Lio/grpc/netty/shaded/io/netty/channel/u0;->i:I

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 5

    const-string v0, "msg"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "promise"

    .line 2
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/u0;->k(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-static {p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->g(Ljava/lang/Object;ILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->e:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    if-nez p2, :cond_0

    .line 6
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->e:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->b(Lio/grpc/netty/shaded/io/netty/channel/u0$b;Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    .line 8
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->e:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    .line 9
    :goto_0
    iget p2, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->f:I

    .line 10
    iget-wide v1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->g:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->g:J

    .line 11
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->c:Lio/grpc/netty/shaded/io/netty/channel/t0;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->c(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/t0;->b(J)V

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->d(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->e(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->d(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 4
    invoke-direct {p0, v0, v2}, Lio/grpc/netty/shaded/io/netty/channel/u0;->e(Lio/grpc/netty/shaded/io/netty/channel/u0$b;Z)V

    return-object v1
.end method

.method public g(Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "cause"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->e:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->f:I

    const-wide/16 v2, 0x0

    .line 5
    iput-wide v2, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->g:J

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->a(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    move-result-object v2

    .line 7
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->d(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/util/r;->c(Ljava/lang/Object;)V

    .line 8
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->e(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    .line 9
    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/u0;->e(Lio/grpc/netty/shaded/io/netty/channel/u0$b;Z)V

    .line 10
    invoke-static {v3, p1}, Lio/grpc/netty/shaded/io/netty/channel/u0;->i(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/u0;->b()V

    return-void
.end method

.method public h()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/u0;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->a:Lio/grpc/netty/shaded/io/netty/channel/v;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    .line 3
    new-instance v2, Lug/y;

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->b:Lug/j;

    invoke-direct {v2, v3}, Lug/y;-><init>(Lug/j;)V

    .line 4
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    if-eqz v3, :cond_3

    .line 5
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->e:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->d:Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    const/4 v4, 0x0

    .line 6
    iput v4, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->f:I

    const-wide/16 v5, 0x0

    .line 7
    iput-wide v5, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->g:J

    :goto_0
    if-eqz v3, :cond_1

    .line 8
    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->a(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Lio/grpc/netty/shaded/io/netty/channel/u0$b;

    move-result-object v5

    .line 9
    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->d(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Ljava/lang/Object;

    move-result-object v6

    .line 10
    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/channel/u0$b;->e(Lio/grpc/netty/shaded/io/netty/channel/u0$b;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v7

    .line 11
    invoke-direct {p0, v3, v4}, Lio/grpc/netty/shaded/io/netty/channel/u0;->e(Lio/grpc/netty/shaded/io/netty/channel/u0$b;Z)V

    .line 12
    instance-of v3, v7, Lio/grpc/netty/shaded/io/netty/channel/e1;

    if-nez v3, :cond_2

    .line 13
    invoke-virtual {v2, v7}, Lug/y;->j(Lug/x;)V

    .line 14
    :cond_2
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->a:Lio/grpc/netty/shaded/io/netty/channel/v;

    invoke-interface {v3, v6, v7}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-object v3, v5

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {v2, v0}, Lug/y;->m(Lug/x;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 16
    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 17
    :goto_1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/u0;->b()V

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/u0;->f:I

    return v0
.end method
