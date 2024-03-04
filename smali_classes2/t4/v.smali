.class final Lt4/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lt4/g;

.field final synthetic b:Lt4/w;


# direct methods
.method constructor <init>(Lt4/w;Lt4/g;)V
    .locals 0

    iput-object p1, p0, Lt4/v;->b:Lt4/w;

    iput-object p2, p0, Lt4/v;->a:Lt4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt4/v;->b:Lt4/w;

    invoke-static {v0}, Lt4/w;->b(Lt4/w;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt4/v;->b:Lt4/w;

    invoke-static {v1}, Lt4/w;->a(Lt4/w;)Lt4/d;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lt4/w;->a(Lt4/w;)Lt4/d;

    move-result-object v1

    iget-object v2, p0, Lt4/v;->a:Lt4/g;

    invoke-virtual {v2}, Lt4/g;->j()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/p;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lt4/d;->a(Ljava/lang/Exception;)V

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
