.class public abstract Lkg/e;
.super Lkg/a;
.source "SourceFile"


# static fields
.field private static final k:J

.field private static final l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lkg/e;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lio/grpc/netty/shaded/io/netty/util/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/y<",
            "Lkg/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lkg/e;

    const-string v1, "refCnt"

    .line 2
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lkg/e;->k:J

    .line 3
    const-class v0, Lkg/e;

    const-string v1, "j"

    .line 4
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkg/e;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 5
    new-instance v0, Lkg/e$a;

    invoke-direct {v0}, Lkg/e$a;-><init>()V

    sput-object v0, Lkg/e;->m:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkg/a;-><init>(I)V

    .line 2
    sget-object p1, Lkg/e;->m:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->b()I

    move-result p1

    iput p1, p0, Lkg/e;->j:I

    return-void
.end method

.method static synthetic A3()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lkg/e;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method static synthetic B3()J
    .locals 2

    sget-wide v0, Lkg/e;->k:J

    return-wide v0
.end method

.method private D3(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkg/e;->C3()V

    :cond_0
    return p1
.end method


# virtual methods
.method protected abstract C3()V
.end method

.method protected final E3()V
    .locals 1

    sget-object v0, Lkg/e;->m:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->j(Lio/grpc/netty/shaded/io/netty/util/s;)V

    return-void
.end method

.method public T1()Lkg/j;
    .locals 1

    sget-object v0, Lkg/e;->m:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->k(Lio/grpc/netty/shaded/io/netty/util/s;)Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object v0

    check-cast v0, Lkg/j;

    return-object v0
.end method

.method public U1(I)Lkg/j;
    .locals 1

    sget-object v0, Lkg/e;->m:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->l(Lio/grpc/netty/shaded/io/netty/util/s;I)Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object p1

    check-cast p1, Lkg/j;

    return-object p1
.end method

.method f1()Z
    .locals 1

    sget-object v0, Lkg/e;->m:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->c(Lio/grpc/netty/shaded/io/netty/util/s;)Z

    move-result v0

    return v0
.end method

.method public q2()Lkg/j;
    .locals 0

    return-object p0
.end method

.method public r2(Ljava/lang/Object;)Lkg/j;
    .locals 0

    return-object p0
.end method

.method public refCnt()I
    .locals 1

    sget-object v0, Lkg/e;->m:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->g(Lio/grpc/netty/shaded/io/netty/util/s;)I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 1
    sget-object v0, Lkg/e;->m:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->h(Lio/grpc/netty/shaded/io/netty/util/s;)Z

    move-result v0

    invoke-direct {p0, v0}, Lkg/e;->D3(Z)Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 2
    sget-object v0, Lkg/e;->m:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->i(Lio/grpc/netty/shaded/io/netty/util/s;I)Z

    move-result p1

    invoke-direct {p0, p1}, Lkg/e;->D3(Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    invoke-virtual {p0}, Lkg/e;->T1()Lkg/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 0

    invoke-virtual {p0, p1}, Lkg/e;->r2(Ljava/lang/Object;)Lkg/j;

    move-result-object p1

    return-object p1
.end method
