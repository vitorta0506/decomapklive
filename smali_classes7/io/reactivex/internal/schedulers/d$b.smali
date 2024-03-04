.class final Lio/reactivex/internal/schedulers/d$b;
.super Lio/reactivex/s$c;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lth/a;

.field private final b:Lio/reactivex/internal/schedulers/d$a;

.field private final c:Lio/reactivex/internal/schedulers/d$c;

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/internal/schedulers/d$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/s$c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/d$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/schedulers/d$b;->b:Lio/reactivex/internal/schedulers/d$a;

    .line 4
    new-instance v0, Lth/a;

    invoke-direct {v0}, Lth/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/d$b;->a:Lth/a;

    .line 5
    invoke-virtual {p1}, Lio/reactivex/internal/schedulers/d$a;->c()Lio/reactivex/internal/schedulers/d$c;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/internal/schedulers/d$b;->c:Lio/reactivex/internal/schedulers/d$c;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lth/b;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/d$b;->a:Lth/a;

    invoke-virtual {v0}, Lth/a;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/d$b;->c:Lio/reactivex/internal/schedulers/d$c;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/d$b;->a:Lth/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/f;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lwh/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/d$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/d$b;->a:Lth/a;

    invoke-virtual {v0}, Lth/a;->dispose()V

    .line 3
    sget-boolean v0, Lio/reactivex/internal/schedulers/d;->j:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lio/reactivex/internal/schedulers/d$b;->c:Lio/reactivex/internal/schedulers/d$c;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lio/reactivex/internal/schedulers/f;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lwh/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/d$b;->b:Lio/reactivex/internal/schedulers/d$a;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/d$b;->c:Lio/reactivex/internal/schedulers/d$c;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/schedulers/d$a;->f(Lio/reactivex/internal/schedulers/d$c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/schedulers/d$b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/schedulers/d$b;->b:Lio/reactivex/internal/schedulers/d$a;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/d$b;->c:Lio/reactivex/internal/schedulers/d$c;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/schedulers/d$a;->f(Lio/reactivex/internal/schedulers/d$c;)V

    return-void
.end method
