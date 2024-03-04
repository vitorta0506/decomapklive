.class final Lt4/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lt4/g;

.field final synthetic b:Lt4/u;


# direct methods
.method constructor <init>(Lt4/u;Lt4/g;)V
    .locals 0

    iput-object p1, p0, Lt4/t;->b:Lt4/u;

    iput-object p2, p0, Lt4/t;->a:Lt4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt4/t;->b:Lt4/u;

    invoke-static {v0}, Lt4/u;->b(Lt4/u;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt4/t;->b:Lt4/u;

    invoke-static {v1}, Lt4/u;->a(Lt4/u;)Lt4/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lt4/u;->a(Lt4/u;)Lt4/c;

    move-result-object v1

    iget-object v2, p0, Lt4/t;->a:Lt4/g;

    invoke-interface {v1, v2}, Lt4/c;->a(Lt4/g;)V

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
