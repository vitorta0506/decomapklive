.class final Lio/reactivex/internal/schedulers/b$a;
.super Lio/reactivex/s$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lwh/b;

.field private final b:Lth/a;

.field private final c:Lwh/b;

.field private final d:Lio/reactivex/internal/schedulers/b$c;

.field volatile e:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/schedulers/b$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/reactivex/s$c;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->d:Lio/reactivex/internal/schedulers/b$c;

    .line 3
    new-instance p1, Lwh/b;

    invoke-direct {p1}, Lwh/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/b$a;->a:Lwh/b;

    .line 4
    new-instance v0, Lth/a;

    invoke-direct {v0}, Lth/a;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/b$a;->b:Lth/a;

    .line 5
    new-instance v1, Lwh/b;

    invoke-direct {v1}, Lwh/b;-><init>()V

    iput-object v1, p0, Lio/reactivex/internal/schedulers/b$a;->c:Lwh/b;

    .line 6
    invoke-virtual {v1, p1}, Lwh/b;->b(Lth/b;)Z

    .line 7
    invoke-virtual {v1, v0}, Lwh/b;->b(Lth/b;)Z

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;)Lth/b;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/b$a;->d:Lio/reactivex/internal/schedulers/b$c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/b$a;->a:Lwh/b;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/f;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lwh/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lth/b;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->e:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/b$a;->d:Lio/reactivex/internal/schedulers/b$c;

    iget-object v5, p0, Lio/reactivex/internal/schedulers/b$a;->b:Lth/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/schedulers/f;->g(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lwh/a;)Lio/reactivex/internal/schedulers/ScheduledRunnable;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->e:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/schedulers/b$a;->c:Lwh/b;

    invoke-virtual {v0}, Lwh/b;->dispose()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/b$a;->e:Z

    return v0
.end method
