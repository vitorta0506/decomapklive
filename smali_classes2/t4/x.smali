.class final Lt4/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lt4/g;

.field final synthetic b:Lt4/y;


# direct methods
.method constructor <init>(Lt4/y;Lt4/g;)V
    .locals 0

    iput-object p1, p0, Lt4/x;->b:Lt4/y;

    iput-object p2, p0, Lt4/x;->a:Lt4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt4/x;->b:Lt4/y;

    invoke-static {v0}, Lt4/y;->b(Lt4/y;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt4/x;->b:Lt4/y;

    invoke-static {v1}, Lt4/y;->a(Lt4/y;)Lt4/e;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lt4/y;->a(Lt4/y;)Lt4/e;

    move-result-object v1

    iget-object v2, p0, Lt4/x;->a:Lt4/g;

    invoke-virtual {v2}, Lt4/g;->k()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lt4/e;->onSuccess(Ljava/lang/Object;)V

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
