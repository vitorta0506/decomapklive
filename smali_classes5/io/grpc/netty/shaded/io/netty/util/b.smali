.class public abstract Lio/grpc/netty/shaded/io/netty/util/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/util/s;


# static fields
.field private static final AIF_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/netty/shaded/io/netty/util/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFCNT_FIELD_OFFSET:J

.field private static final updater:Lio/grpc/netty/shaded/io/netty/util/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/util/internal/y<",
            "Lio/grpc/netty/shaded/io/netty/util/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile refCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/util/b;

    const-string v1, "refCnt"

    .line 2
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lio/grpc/netty/shaded/io/netty/util/b;->REFCNT_FIELD_OFFSET:J

    const-string v1, "refCnt"

    .line 3
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/b;->AIF_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/b$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/b$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/util/b;->updater:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/b;->updater:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    .line 3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->b()I

    move-result v0

    iput v0, p0, Lio/grpc/netty/shaded/io/netty/util/b;->refCnt:I

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/b;->AIF_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    sget-wide v0, Lio/grpc/netty/shaded/io/netty/util/b;->REFCNT_FIELD_OFFSET:J

    return-wide v0
.end method

.method private handleRelease(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/util/b;->deallocate()V

    :cond_0
    return p1
.end method


# virtual methods
.method protected abstract deallocate()V
.end method

.method public refCnt()I
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/b;->updater:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->g(Lio/grpc/netty/shaded/io/netty/util/s;)I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/b;->updater:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->h(Lio/grpc/netty/shaded/io/netty/util/s;)Z

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/b;->handleRelease(Z)Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/b;->updater:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->i(Lio/grpc/netty/shaded/io/netty/util/s;I)Z

    move-result p1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/b;->handleRelease(Z)Z

    move-result p1

    return p1
.end method

.method public retain()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/b;->updater:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->k(Lio/grpc/netty/shaded/io/netty/util/s;)Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object v0

    return-object v0
.end method

.method public retain(I)Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/b;->updater:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->l(Lio/grpc/netty/shaded/io/netty/util/s;I)Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object p1

    return-object p1
.end method

.method protected final setRefCnt(I)V
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/util/b;->updater:Lio/grpc/netty/shaded/io/netty/util/internal/y;

    invoke-virtual {v0, p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/y;->o(Lio/grpc/netty/shaded/io/netty/util/s;I)V

    return-void
.end method

.method public touch()Lio/grpc/netty/shaded/io/netty/util/s;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/s;->touch(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/util/s;

    move-result-object v0

    return-object v0
.end method
