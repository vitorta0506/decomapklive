.class final Lt4/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/e;
.implements Lt4/d;
.implements Lt4/b;
.implements Lt4/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt4/e<",
        "TTContinuationResult;>;",
        "Lt4/d;",
        "Lt4/b;",
        "Lt4/b0;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lt4/f;

.field private final c:Lt4/g0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lt4/f;Lt4/g0;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lt4/g0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/a0;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lt4/a0;->b:Lt4/f;

    iput-object p3, p0, Lt4/a0;->c:Lt4/g0;

    return-void
.end method

.method static bridge synthetic d(Lt4/a0;)Lt4/f;
    .locals 0

    iget-object p0, p0, Lt4/a0;->b:Lt4/f;

    return-object p0
.end method


# virtual methods
.method public final E()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lt4/a0;->c:Lt4/g0;

    invoke-virtual {v0, p1}, Lt4/g0;->q(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lt4/a0;->c:Lt4/g0;

    invoke-virtual {v0}, Lt4/g0;->s()Z

    return-void
.end method

.method public final c(Lt4/g;)V
    .locals 2
    .param p1    # Lt4/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lt4/a0;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lt4/z;

    invoke-direct {v1, p0, p1}, Lt4/z;-><init>(Lt4/a0;Lt4/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lt4/a0;->c:Lt4/g0;

    invoke-virtual {v0, p1}, Lt4/g0;->r(Ljava/lang/Object;)V

    return-void
.end method
