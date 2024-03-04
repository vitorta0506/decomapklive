.class abstract Lio/grpc/netty/shaded/io/netty/channel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/m;
.implements Lio/grpc/netty/shaded/io/netty/util/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/channel/b$k;,
        Lio/grpc/netty/shaded/io/netty/channel/b$l;
    }
.end annotation


# static fields
.field private static final k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/channel/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:Lio/grpc/netty/shaded/io/netty/channel/b;

.field volatile b:Lio/grpc/netty/shaded/io/netty/channel/b;

.field private final c:Lio/grpc/netty/shaded/io/netty/channel/e0;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:I

.field final g:Lug/j;

.field private h:Lio/grpc/netty/shaded/io/netty/channel/i;

.field private i:Lio/grpc/netty/shaded/io/netty/channel/b$k;

.field private volatile j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    sput-object v1, Lio/grpc/netty/shaded/io/netty/channel/b;->k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v1, "j"

    .line 2
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/channel/b;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/e0;Lug/j;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/e0;",
            "Lug/j;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->j:I

    const-string v1, "name"

    .line 3
    invoke-static {p3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->d:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->c:Lio/grpc/netty/shaded/io/netty/channel/e0;

    .line 5
    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->g:Lug/j;

    .line 6
    invoke-static {p4}, Lio/grpc/netty/shaded/io/netty/channel/n;->c(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->f:I

    if-eqz p2, :cond_0

    .line 7
    instance-of p1, p2, Lug/v;

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->e:Z

    return-void
.end method

.method private C0(I)Lio/grpc/netty/shaded/io/netty/channel/b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    move-object v1, p0

    .line 2
    :cond_0
    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/b;->a:Lio/grpc/netty/shaded/io/netty/channel/b;

    const/16 v2, 0x1fe

    .line 3
    invoke-static {v1, v0, p1, v2}, Lio/grpc/netty/shaded/io/netty/channel/b;->p1(Lio/grpc/netty/shaded/io/netty/channel/b;Lug/j;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1
.end method

.method private D0(I)Lio/grpc/netty/shaded/io/netty/channel/b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    move-object v1, p0

    .line 2
    :cond_0
    iget-object v1, v1, Lio/grpc/netty/shaded/io/netty/channel/b;->b:Lio/grpc/netty/shaded/io/netty/channel/b;

    const v2, 0x1fe00

    .line 3
    invoke-static {v1, v0, p1, v2}, Lio/grpc/netty/shaded/io/netty/channel/b;->p1(Lio/grpc/netty/shaded/io/netty/channel/b;Lug/j;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1
.end method

.method private E0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/o;->D(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->q()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method static F0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->E0()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/b$e;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/b$e;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private G0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/o;->t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->n0()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method static H0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->G0()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/b$f;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/b$f;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static I0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->c:Lio/grpc/netty/shaded/io/netty/channel/e0;

    const-string v1, "msg"

    invoke-static {p1, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->K1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/b;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->K0(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/b$i;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b$i;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private K0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/o;->h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method private L0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/o;->Z(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->k()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method static M0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->L0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->i:Lio/grpc/netty/shaded/io/netty/channel/b$k;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/b$k;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/b$k;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->i:Lio/grpc/netty/shaded/io/netty/channel/b$k;

    .line 6
    :cond_1
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/b$k;->d(Lio/grpc/netty/shaded/io/netty/channel/b$k;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private N0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/o;->r(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->y()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method static P0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->N0()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/b$c;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/b$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private Q0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/o;->Y(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->x()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method static R0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Q0()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/b$d;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/b$d;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private S0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/o;->C(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->w()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method static T0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->S0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->i:Lio/grpc/netty/shaded/io/netty/channel/b$k;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/b$k;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/channel/b$k;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->i:Lio/grpc/netty/shaded/io/netty/channel/b$k;

    .line 6
    :cond_1
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/b$k;->e(Lio/grpc/netty/shaded/io/netty/channel/b$k;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private U0(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/t;->l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->k1(Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method private V0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/t;->V(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1, p3}, Lio/grpc/netty/shaded/io/netty/channel/b;->k1(Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/b;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method private X0(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/t;->j(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->k1(Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->M(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method static Y0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "cause"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/b$g;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b$g;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/b;->k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Failed to submit an exceptionCaught() event."

    .line 7
    invoke-interface {v0, v1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "The exceptionCaught() event that was failed to submit was:"

    .line 8
    invoke-interface {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Z0(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/k;->a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/b;->k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/e0;->e(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "An exception {}was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    .line 5
    invoke-interface {v1, v2, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "An exception \'{}\' [enable DEBUG level for full stacktrace] was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    .line 7
    invoke-interface {v1, v2, v0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :cond_2
    :goto_0
    return-void
.end method

.method private a1()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->b1()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method private b1()V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/t;->n(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private c1()Z
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 2
    iget-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->e:Z

    if-nez v2, :cond_0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic d0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->N0()V

    return-void
.end method

.method private d1()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/t;->o(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->read()Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method static synthetic e0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Q0()V

    return-void
.end method

.method static e1(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "event"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->f1(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/b$h;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b$h;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private f1(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/o;

    invoke-interface {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/o;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method static synthetic g0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/b;->V0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method static synthetic h0(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->X0(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method private h1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/t;

    invoke-interface {v0, p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/t;->e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->k1(Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :goto_0
    return-void
.end method

.method static synthetic i0(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->U0(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method static synthetic j0(Lio/grpc/netty/shaded/io/netty/channel/b;)Lio/grpc/netty/shaded/io/netty/channel/e0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->c:Lio/grpc/netty/shaded/io/netty/channel/e0;

    return-object p0
.end method

.method private j1(Lio/grpc/netty/shaded/io/netty/channel/y;Z)Z
    .locals 4

    const-string v0, "promise"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "promise already done: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/f0;

    if-ne v0, v1, :cond_2

    return v3

    :cond_2
    if-nez p2, :cond_4

    .line 7
    instance-of p2, p1, Lio/grpc/netty/shaded/io/netty/channel/e1;

    if-nez p2, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/e1;

    .line 9
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not allowed for this operation"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_4
    :goto_0
    instance-of p1, p1, Lio/grpc/netty/shaded/io/netty/channel/a$e;

    if-nez p1, :cond_5

    return v3

    .line 11
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/a$e;

    .line 12
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not allowed in a pipeline"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "promise.channel does not match: %s (expected: %s)"

    .line 15
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static k1(Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/e1;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/b;->k:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    :goto_0
    invoke-static {p1, p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/x;->b(Lug/x;Ljava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    return-void
.end method

.method static synthetic l0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->L0()V

    return-void
.end method

.method private static l1(Lug/j;Ljava/lang/Runnable;Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Object;Z)Z
    .locals 0

    if-eqz p4, :cond_0

    .line 1
    :try_start_0
    instance-of p4, p0, Lug/a;

    if-eqz p4, :cond_0

    .line 2
    check-cast p0, Lug/a;

    invoke-virtual {p0, p1}, Lug/a;->d(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    if-eqz p3, :cond_1

    .line 4
    :try_start_1
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 5
    invoke-interface {p2, p0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 6
    throw p1

    .line 7
    :cond_1
    :goto_1
    invoke-interface {p2, p0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic o0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->E0()V

    return-void
.end method

.method static synthetic p0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d1()V

    return-void
.end method

.method private static p1(Lio/grpc/netty/shaded/io/netty/channel/b;Lug/j;II)Z
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->f:I

    or-int/2addr p3, p2

    and-int/2addr p3, v0

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object p3

    if-ne p3, p1, :cond_0

    iget p0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->f:I

    and-int/2addr p0, p2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private q1(Ljava/lang/Object;ZLio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 4

    const-string v0, "msg"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, p3, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->j1(Lio/grpc/netty/shaded/io/netty/channel/y;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const v1, 0x18000

    goto :goto_0

    :cond_1
    const v1, 0x8000

    .line 4
    :goto_0
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->D0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->c:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v2, p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->K1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/b;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Lug/j;->Y()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {v1, p1, p3}, Lio/grpc/netty/shaded/io/netty/channel/b;->i1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v1, p1, p3}, Lio/grpc/netty/shaded/io/netty/channel/b;->g1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v1, p1, p3, p2}, Lio/grpc/netty/shaded/io/netty/channel/b$l;->f(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;Z)Lio/grpc/netty/shaded/io/netty/channel/b$l;

    move-result-object v1

    xor-int/2addr p2, v0

    .line 11
    invoke-static {v2, v1, p3, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->l1(Lug/j;Ljava/lang/Runnable;Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Object;Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/b$l;->b()V

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception p2

    .line 13
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z

    .line 14
    throw p2
.end method

.method static synthetic r0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->S0()V

    return-void
.end method

.method static synthetic s0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->a1()V

    return-void
.end method

.method static synthetic u0(Lio/grpc/netty/shaded/io/netty/channel/b;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->G0()V

    return-void
.end method

.method static synthetic v0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->Z0(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic w0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->f1(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic y0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->K0(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final A0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/k;->E(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->o1()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->o1()V

    .line 4
    throw v0
.end method

.method public B(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 3

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/o0;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lio/grpc/netty/shaded/io/netty/channel/o0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public B0(Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public F()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 3

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/f0;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/f0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    return-object v0
.end method

.method public I(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public J()Lio/grpc/netty/shaded/io/netty/channel/w;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->c:Lio/grpc/netty/shaded/io/netty/channel/e0;

    return-object v0
.end method

.method public L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->j1(Lio/grpc/netty/shaded/io/netty/channel/y;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    const/16 v1, 0x1000

    .line 2
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->D0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lug/j;->Y()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-direct {v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->U0(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance v3, Lio/grpc/netty/shaded/io/netty/channel/b$b;

    invoke-direct {v3, p0, v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/b$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    const/4 v1, 0x0

    invoke-static {v2, v3, p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->l1(Lug/j;Ljava/lang/Runnable;Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Object;Z)Z

    :goto_0
    return-object p1
.end method

.method public M(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->R()Lio/grpc/netty/shaded/io/netty/channel/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/q;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->j1(Lio/grpc/netty/shaded/io/netty/channel/y;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    :cond_1
    const/16 v1, 0x800

    .line 4
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->D0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Lug/j;->Y()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-direct {v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->X0(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 8
    :cond_2
    new-instance v3, Lio/grpc/netty/shaded/io/netty/channel/b$a;

    invoke-direct {v3, p0, v1, p1}, Lio/grpc/netty/shaded/io/netty/channel/b$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    const/4 v1, 0x0

    invoke-static {v2, v3, p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->l1(Lug/j;Ljava/lang/Runnable;Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Object;Z)Z

    :goto_0
    return-object p1
.end method

.method public N()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0
.end method

.method public P()Lkg/k;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->a()Lkg/k;

    move-result-object v0

    return-object v0
.end method

.method public Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 9

    const-string v0, "remoteAddress"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p3, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->j1(Lio/grpc/netty/shaded/io/netty/channel/y;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p3

    :cond_0
    const/16 v1, 0x400

    .line 3
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/b;->D0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Lug/j;->Y()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-direct {v4, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/b;->V0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v8, Lio/grpc/netty/shaded/io/netty/channel/b$j;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/channel/b$j;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    const/4 p1, 0x0

    invoke-static {v1, v8, p3, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->l1(Lug/j;Ljava/lang/Runnable;Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Object;Z)Z

    :goto_0
    return-object p3
.end method

.method public b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' will handle the message from this point."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->q1(Ljava/lang/Object;ZLio/grpc/netty/shaded/io/netty/channel/y;)V

    return-object p2
.end method

.method public c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public close()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->c:Lio/grpc/netty/shaded/io/netty/channel/e0;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->B0(Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public f0()Z
    .locals 2

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public flush()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 5

    const/high16 v0, 0x10000

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->D0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lug/j;->Y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->a1()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->i:Lio/grpc/netty/shaded/io/netty/channel/b$k;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/b$k;

    invoke-direct {v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/b$k;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    iput-object v2, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->i:Lio/grpc/netty/shaded/io/netty/channel/b$k;

    .line 7
    :cond_1
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/channel/b$k;->b(Lio/grpc/netty/shaded/io/netty/channel/b$k;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/v;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/channel/b;->l1(Lug/j;Ljava/lang/Runnable;Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Object;Z)Z

    :goto_0
    return-object p0
.end method

.method public g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->u(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method g1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->h1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method i1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->c1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->h1(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 3
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->b1()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->u(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void
.end method

.method public k()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->C0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->M0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method public m()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->h:Lio/grpc/netty/shaded/io/netty/channel/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/d1;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/d1;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->h:Lio/grpc/netty/shaded/io/netty/channel/i;

    :cond_0
    return-object v0
.end method

.method public m0()Lug/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->g:Lug/j;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method final m1()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->j:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/b;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public n0()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->C0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->H0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method final n1()V
    .locals 3

    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/b;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method final o1()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->j:I

    return-void
.end method

.method public p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->C0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->I0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;)V

    return-object p0
.end method

.method public q()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->C0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->F0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method public read()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 3

    const/16 v0, 0x4000

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->D0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m0()Lug/j;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lug/j;->Y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d1()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->i:Lio/grpc/netty/shaded/io/netty/channel/b$k;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/b$k;

    invoke-direct {v2, v0}, Lio/grpc/netty/shaded/io/netty/channel/b$k;-><init>(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    iput-object v2, v0, Lio/grpc/netty/shaded/io/netty/channel/b;->i:Lio/grpc/netty/shaded/io/netty/channel/b$k;

    .line 7
    :cond_1
    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/channel/b$k;->a(Lio/grpc/netty/shaded/io/netty/channel/b$k;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-object p0
.end method

.method public s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->C0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->e1(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Object;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->l(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/b;->q1(Ljava/lang/Object;ZLio/grpc/netty/shaded/io/netty/channel/y;)V

    return-object p2
.end method

.method public v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->C0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/b;->Y0(Lio/grpc/netty/shaded/io/netty/channel/b;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public w()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->C0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->T0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method public x()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->C0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->R0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method public y()Lio/grpc/netty/shaded/io/netty/channel/m;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->C0(I)Lio/grpc/netty/shaded/io/netty/channel/b;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/b;->P0(Lio/grpc/netty/shaded/io/netty/channel/b;)V

    return-object p0
.end method

.method final z0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/b;->m1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/k;->A(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :cond_0
    return-void
.end method
