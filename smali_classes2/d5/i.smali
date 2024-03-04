.class final Ld5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld5/d;

.field final synthetic b:Ld5/j;


# direct methods
.method constructor <init>(Ld5/j;Ld5/d;)V
    .locals 0

    iput-object p1, p0, Ld5/i;->b:Ld5/j;

    iput-object p2, p0, Ld5/i;->a:Ld5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld5/i;->b:Ld5/j;

    invoke-static {v0}, Ld5/j;->c(Ld5/j;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld5/i;->b:Ld5/j;

    invoke-static {v1}, Ld5/j;->b(Ld5/j;)Ld5/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ld5/j;->b(Ld5/j;)Ld5/b;

    move-result-object v1

    iget-object v2, p0, Ld5/i;->a:Ld5/d;

    invoke-virtual {v2}, Ld5/d;->d()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Ld5/b;->a(Ljava/lang/Exception;)V

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
