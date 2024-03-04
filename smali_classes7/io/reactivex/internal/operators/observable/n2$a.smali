.class final Lio/reactivex/internal/operators/observable/n2$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lvh/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lth/b;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lvh/g<",
        "Lth/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3f2c4fd6dc101621L


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/n2<",
            "*>;"
        }
    .end annotation
.end field

.field b:Lth/b;

.field c:J

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/n2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/n2<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/n2$a;->a:Lio/reactivex/internal/operators/observable/n2;

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lth/b;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/n2$a;->b(Lth/b;)V

    return-void
.end method

.method public b(Lth/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->replace(Ljava/util/concurrent/atomic/AtomicReference;Lth/b;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$a;->a:Lio/reactivex/internal/operators/observable/n2;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/n2$a;->e:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/n2$a;->a:Lio/reactivex/internal/operators/observable/n2;

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/n2;->a:Lbi/a;

    check-cast v1, Lwh/c;

    invoke-interface {v1, p1}, Lwh/c;->b(Lth/b;)V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n2$a;->a:Lio/reactivex/internal/operators/observable/n2;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/n2;->g(Lio/reactivex/internal/operators/observable/n2$a;)V

    return-void
.end method
