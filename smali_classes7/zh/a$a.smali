.class final Lzh/a$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/r;
.implements Lth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzh/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/r<",
        "TT;>;",
        "Lth/b;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321c7f6dd838d46aL


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

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:Lio/reactivex/internal/util/AtomicThrowable;

.field final e:Lzh/a$a$a;

.field final f:I

.field g:Lyh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyh/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field h:Lth/b;

.field volatile i:Z

.field volatile j:Z

.field volatile k:Z


# direct methods
.method constructor <init>(Lio/reactivex/b;Lvh/o;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b;",
            "Lvh/o<",
            "-TT;+",
            "Lio/reactivex/c;",
            ">;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lzh/a$a;->a:Lio/reactivex/b;

    .line 3
    iput-object p2, p0, Lzh/a$a;->b:Lvh/o;

    .line 4
    iput-object p3, p0, Lzh/a$a;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lzh/a$a;->f:I

    .line 6
    new-instance p1, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {p1}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object p1, p0, Lzh/a$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 7
    new-instance p1, Lzh/a$a$a;

    invoke-direct {p1, p0}, Lzh/a$a$a;-><init>(Lzh/a$a;)V

    iput-object p1, p0, Lzh/a$a;->e:Lzh/a$a$a;

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lzh/a$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    .line 3
    iget-object v1, p0, Lzh/a$a;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 4
    :cond_1
    iget-boolean v2, p0, Lzh/a$a;->k:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lzh/a$a;->g:Lyh/g;

    invoke-interface {v0}, Lyh/g;->clear()V

    return-void

    .line 6
    :cond_2
    iget-boolean v2, p0, Lzh/a$a;->i:Z

    if-nez v2, :cond_7

    .line 7
    sget-object v2, Lio/reactivex/internal/util/ErrorMode;->BOUNDARY:Lio/reactivex/internal/util/ErrorMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    iput-boolean v3, p0, Lzh/a$a;->k:Z

    .line 10
    iget-object v1, p0, Lzh/a$a;->g:Lyh/g;

    invoke-interface {v1}, Lyh/g;->clear()V

    .line 11
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lzh/a$a;->a:Lio/reactivex/b;

    invoke-interface {v1, v0}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_3
    iget-boolean v2, p0, Lzh/a$a;->j:Z

    const/4 v4, 0x0

    .line 14
    :try_start_0
    iget-object v5, p0, Lzh/a$a;->g:Lyh/g;

    invoke-interface {v5}, Lyh/g;->poll()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 15
    iget-object v4, p0, Lzh/a$a;->b:Lvh/o;

    invoke-interface {v4, v5}, Lvh/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null CompletableSource"

    invoke-static {v4, v5}, Lxh/b;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    .line 16
    iput-boolean v3, p0, Lzh/a$a;->k:Z

    .line 17
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v1, p0, Lzh/a$a;->a:Lio/reactivex/b;

    invoke-interface {v1, v0}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object v0, p0, Lzh/a$a;->a:Lio/reactivex/b;

    invoke-interface {v0}, Lio/reactivex/b;->onComplete()V

    :goto_1
    return-void

    :cond_6
    if-nez v5, :cond_7

    .line 20
    iput-boolean v3, p0, Lzh/a$a;->i:Z

    .line 21
    iget-object v2, p0, Lzh/a$a;->e:Lzh/a$a$a;

    invoke-interface {v4, v2}, Lio/reactivex/c;->a(Lio/reactivex/b;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 22
    invoke-static {v1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 23
    iput-boolean v3, p0, Lzh/a$a;->k:Z

    .line 24
    iget-object v2, p0, Lzh/a$a;->g:Lyh/g;

    invoke-interface {v2}, Lyh/g;->clear()V

    .line 25
    iget-object v2, p0, Lzh/a$a;->h:Lth/b;

    invoke-interface {v2}, Lth/b;->dispose()V

    .line 26
    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    .line 27
    invoke-virtual {v0}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lzh/a$a;->a:Lio/reactivex/b;

    invoke-interface {v1, v0}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 29
    :cond_7
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_1

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lzh/a$a;->i:Z

    .line 2
    invoke-virtual {p0}, Lzh/a$a;->a()V

    return-void
.end method

.method c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzh/a$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lzh/a$a;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lzh/a$a;->k:Z

    .line 4
    iget-object p1, p0, Lzh/a$a;->h:Lth/b;

    invoke-interface {p1}, Lth/b;->dispose()V

    .line 5
    iget-object p1, p0, Lzh/a$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 6
    sget-object v0, Lio/reactivex/internal/util/f;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lzh/a$a;->a:Lio/reactivex/b;

    invoke-interface {v0, p1}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lzh/a$a;->g:Lyh/g;

    invoke-interface {p1}, Lyh/g;->clear()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lzh/a$a;->i:Z

    .line 11
    invoke-virtual {p0}, Lzh/a$a;->a()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lzh/a$a;->k:Z

    .line 2
    iget-object v0, p0, Lzh/a$a;->h:Lth/b;

    invoke-interface {v0}, Lth/b;->dispose()V

    .line 3
    iget-object v0, p0, Lzh/a$a;->e:Lzh/a$a$a;

    invoke-virtual {v0}, Lzh/a$a$a;->a()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lzh/a$a;->g:Lyh/g;

    invoke-interface {v0}, Lyh/g;->clear()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lzh/a$a;->k:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lzh/a$a;->j:Z

    .line 2
    invoke-virtual {p0}, Lzh/a$a;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzh/a$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lzh/a$a;->c:Lio/reactivex/internal/util/ErrorMode;

    sget-object v0, Lio/reactivex/internal/util/ErrorMode;->IMMEDIATE:Lio/reactivex/internal/util/ErrorMode;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lzh/a$a;->k:Z

    .line 4
    iget-object p1, p0, Lzh/a$a;->e:Lzh/a$a$a;

    invoke-virtual {p1}, Lzh/a$a$a;->a()V

    .line 5
    iget-object p1, p0, Lzh/a$a;->d:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {p1}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 6
    sget-object v0, Lio/reactivex/internal/util/f;->a:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lzh/a$a;->a:Lio/reactivex/b;

    invoke-interface {v0, p1}, Lio/reactivex/b;->onError(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lzh/a$a;->g:Lyh/g;

    invoke-interface {p1}, Lyh/g;->clear()V

    goto :goto_0

    .line 10
    :cond_1
    iput-boolean v1, p0, Lzh/a$a;->j:Z

    .line 11
    invoke-virtual {p0}, Lzh/a$a;->a()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lzh/a$a;->g:Lyh/g;

    invoke-interface {v0, p1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Lzh/a$a;->a()V

    return-void
.end method

.method public onSubscribe(Lth/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzh/a$a;->h:Lth/b;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lth/b;Lth/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lzh/a$a;->h:Lth/b;

    .line 3
    instance-of v0, p1, Lyh/b;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lyh/b;

    const/4 v0, 0x3

    .line 5
    invoke-interface {p1, v0}, Lyh/c;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput-object p1, p0, Lzh/a$a;->g:Lyh/g;

    .line 7
    iput-boolean v1, p0, Lzh/a$a;->j:Z

    .line 8
    iget-object p1, p0, Lzh/a$a;->a:Lio/reactivex/b;

    invoke-interface {p1, p0}, Lio/reactivex/b;->onSubscribe(Lth/b;)V

    .line 9
    invoke-virtual {p0}, Lzh/a$a;->a()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10
    iput-object p1, p0, Lzh/a$a;->g:Lyh/g;

    .line 11
    iget-object p1, p0, Lzh/a$a;->a:Lio/reactivex/b;

    invoke-interface {p1, p0}, Lio/reactivex/b;->onSubscribe(Lth/b;)V

    return-void

    .line 12
    :cond_1
    new-instance p1, Lio/reactivex/internal/queue/b;

    iget v0, p0, Lzh/a$a;->f:I

    invoke-direct {p1, v0}, Lio/reactivex/internal/queue/b;-><init>(I)V

    iput-object p1, p0, Lzh/a$a;->g:Lyh/g;

    .line 13
    iget-object p1, p0, Lzh/a$a;->a:Lio/reactivex/b;

    invoke-interface {p1, p0}, Lio/reactivex/b;->onSubscribe(Lth/b;)V

    :cond_2
    return-void
.end method
