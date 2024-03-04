.class final Lt4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/b0;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lt4/a;

.field private final c:Lt4/g0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lt4/a;Lt4/g0;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt4/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lt4/g0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/o;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lt4/o;->b:Lt4/a;

    iput-object p3, p0, Lt4/o;->c:Lt4/g0;

    return-void
.end method

.method static bridge synthetic a(Lt4/o;)Lt4/a;
    .locals 0

    iget-object p0, p0, Lt4/o;->b:Lt4/a;

    return-object p0
.end method

.method static bridge synthetic b(Lt4/o;)Lt4/g0;
    .locals 0

    iget-object p0, p0, Lt4/o;->c:Lt4/g0;

    return-object p0
.end method


# virtual methods
.method public final E()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final c(Lt4/g;)V
    .locals 2
    .param p1    # Lt4/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lt4/o;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lt4/n;

    invoke-direct {v1, p0, p1}, Lt4/n;-><init>(Lt4/o;Lt4/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
