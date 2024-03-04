.class final Ld5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld5/m;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private final c:Ld5/b;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ld5/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld5/j;->b:Ljava/lang/Object;

    iput-object p1, p0, Ld5/j;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ld5/j;->c:Ld5/b;

    return-void
.end method

.method static bridge synthetic b(Ld5/j;)Ld5/b;
    .locals 0

    iget-object p0, p0, Ld5/j;->c:Ld5/b;

    return-object p0
.end method

.method static bridge synthetic c(Ld5/j;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ld5/j;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Ld5/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ld5/d;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ld5/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld5/j;->c:Ld5/b;

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ld5/j;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Ld5/i;

    invoke-direct {v1, p0, p1}, Ld5/i;-><init>(Ld5/j;Ld5/d;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method
