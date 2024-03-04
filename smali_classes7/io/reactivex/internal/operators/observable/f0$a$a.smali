.class final Lio/reactivex/internal/operators/observable/f0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/f0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/observable/f0$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/f0$a;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/f0$a$a;->a:Lio/reactivex/internal/operators/observable/f0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f0$a$a;->a:Lio/reactivex/internal/operators/observable/f0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/f0$a;->a:Lio/reactivex/r;

    invoke-interface {v0}, Lio/reactivex/r;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/f0$a$a;->a:Lio/reactivex/internal/operators/observable/f0$a;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/f0$a;->d:Lio/reactivex/s$c;

    invoke-interface {v0}, Lth/b;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/f0$a$a;->a:Lio/reactivex/internal/operators/observable/f0$a;

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/f0$a;->d:Lio/reactivex/s$c;

    invoke-interface {v1}, Lth/b;->dispose()V

    .line 3
    throw v0
.end method
