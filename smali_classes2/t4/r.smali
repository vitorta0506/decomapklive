.class final Lt4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lt4/s;


# direct methods
.method constructor <init>(Lt4/s;)V
    .locals 0

    iput-object p1, p0, Lt4/r;->a:Lt4/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt4/r;->a:Lt4/s;

    invoke-static {v0}, Lt4/s;->b(Lt4/s;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt4/r;->a:Lt4/s;

    invoke-static {v1}, Lt4/s;->a(Lt4/s;)Lt4/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lt4/s;->a(Lt4/s;)Lt4/b;

    move-result-object v1

    invoke-interface {v1}, Lt4/b;->b()V

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
