.class Lorg/libpag/SynchronizeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/libpag/SynchronizeHandler$BlockingRunnable;,
        Lorg/libpag/SynchronizeHandler$TimeoutRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final runSync(Lorg/libpag/SynchronizeHandler$TimeoutRunnable;J)Z
    .locals 3

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    new-instance v0, Lorg/libpag/SynchronizeHandler$BlockingRunnable;

    invoke-direct {v0, p1}, Lorg/libpag/SynchronizeHandler$BlockingRunnable;-><init>(Lorg/libpag/SynchronizeHandler$TimeoutRunnable;)V

    .line 4
    invoke-virtual {v0, p0, p2, p3}, Lorg/libpag/SynchronizeHandler$BlockingRunnable;->postAndWait(Landroid/os/Handler;J)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeout must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "runnable must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
