.class final Lzh/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzh/d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;"
    }
.end annotation


# static fields
.field static final h:Lzh/d$a$a;


# instance fields
.field final a:Lio/reactivex/b;

.field final b:Lvh/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:Lio/reactivex/internal/util/AtomicThrowable;

.field final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lzh/d$a$a;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Z

.field g:Lth/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzh/d$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzh/d$a$a;-><init>(Lzh/d$a;)V

    sput-object v0, Lzh/d$a;->h:Lzh/d$a$a;

    return-void
.end method

.method constructor <init>(Lio/reactivex/b;Lvh/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzh/d$a;->a:Lio/reactivex/b;

    .line 3
    iput-object p2, p0, Lzh/d$a;->b:Lvh/o;

    .line 4
    iput-boolean p3, p0, Lzh/d$a;->c:Z

    .line 5
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lzh/d$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lzh/d$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzh/d$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lzh/d$a;->h:Lzh/d$a$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzh/d$a$a;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lzh/d$a$a;->a()V

    :cond_0
    return-void
.end method

.method b(Lzh/d$a$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzh/d$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lzh/d$a;->f:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lzh/d$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lzh/d$a;->a:Lio/reactivex/b;

    invoke-interface {p1}, Lio/reactivex/b;->onComplete()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lzh/d$a;->a:Lio/reactivex/b;

    invoke-interface {v0, p1}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method c(Lzh/d$a$a;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzh/d$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lzh/d$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-boolean p1, p0, Lzh/d$a;->c:Z

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, p0, Lzh/d$a;->f:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lzh/d$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lzh/d$a;->a:Lio/reactivex/b;

    invoke-interface {p2, p1}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lzh/d$a;->dispose()V

    .line 8
    iget-object p1, p0, Lzh/d$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 9
    sget-object p2, Lio/reactivex/internal/util/f;->a:Ljava/lang/Throwable;

    if-eq p1, p2, :cond_1

    .line 10
    iget-object p2, p0, Lzh/d$a;->a:Lio/reactivex/b;

    invoke-interface {p2, p1}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 11
    :cond_2
    invoke-static {p2}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzh/d$a;->g:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 2
    invoke-virtual {p0}, Lzh/d$a;->a()V

    return-void
.end method

.method public isDisposed()Z
    .locals 2

    iget-object v0, p0, Lzh/d$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lzh/d$a;->h:Lzh/d$a$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lzh/d$a;->f:Z

    .line 2
    iget-object v0, p0, Lzh/d$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lzh/d$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lzh/d$a;->a:Lio/reactivex/b;

    invoke-interface {v0}, Lio/reactivex/b;->onComplete()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lzh/d$a;->a:Lio/reactivex/b;

    invoke-interface {v1, v0}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzh/d$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lzh/d$a;->c:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lzh/d$a;->onComplete()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lzh/d$a;->a()V

    .line 5
    iget-object p1, p0, Lzh/d$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 6
    sget-object v0, Lio/reactivex/internal/util/f;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_2

    .line 7
    iget-object v0, p0, Lzh/d$a;->a:Lio/reactivex/b;

    invoke-interface {v0, p1}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lzh/d$a;->b:Lvh/o;

    invoke-interface {v0, p1}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null CompletableSource"

    invoke-static {p1, v0}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    new-instance v0, Lzh/d$a$a;

    invoke-direct {v0, p0}, Lzh/d$a$a;-><init>(Lzh/d$a;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lzh/d$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzh/d$a$a;

    .line 4
    sget-object v2, Lzh/d$a;->h:Lzh/d$a$a;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lzh/d$a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1}, Lzh/d$a$a;->a()V

    .line 7
    :cond_2
    invoke-interface {p1, v0}, Lio/reactivex/c;->a(Lio/reactivex/b;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lzh/d$a;->g:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 10
    invoke-virtual {p0, p1}, Lzh/d$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzh/d$a;->g:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lzh/d$a;->g:Lth/b;

    .line 3
    iget-object p1, p0, Lzh/d$a;->a:Lio/reactivex/b;

    invoke-interface {p1, p0}, Lio/reactivex/b;->onSubscribe(Lth/b;)V

    :cond_0
    return-void
.end method
