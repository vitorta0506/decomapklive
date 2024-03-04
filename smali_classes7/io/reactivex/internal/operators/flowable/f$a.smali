.class final Lio/reactivex/internal/operators/flowable/f$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/f;
.implements Lil/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lio/reactivex/f<",
        "TT;>;",
        "Lil/c;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56ae953858430cdeL


# instance fields
.field final a:Lil/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lil/b<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "-TT;>;"
        }
    .end annotation
.end field

.field c:Lil/c;

.field d:Z


# direct methods
.method constructor <init>(Lil/b;Lvh/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lil/b<",
            "-TT;>;",
            "Lvh/g<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/f$a;->a:Lil/b;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/f$a;->b:Lvh/g;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->c:Lil/c;

    invoke-interface {v0}, Lil/c;->cancel()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->d:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->a:Lil/b;

    invoke-interface {v0}, Lil/b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lci/a;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->d:Z

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->a:Lil/b;

    invoke-interface {v0, p1}, Lil/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->a:Lil/b;

    invoke-interface {v0, p1}, Lil/b;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    .line 4
    invoke-static {p0, v0, v1}, Lio/reactivex/internal/util/b;->c(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->b:Lvh/g;

    invoke-interface {v0, p1}, Lvh/g;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/f$a;->cancel()V

    .line 8
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/f$a;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lil/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->c:Lil/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lil/c;Lil/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/f$a;->c:Lil/c;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/f$a;->a:Lil/b;

    invoke-interface {v0, p0}, Lil/b;->onSubscribe(Lil/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lil/c;->request(J)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_0
    return-void
.end method
