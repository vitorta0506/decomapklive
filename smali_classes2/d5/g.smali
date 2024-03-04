.class final Ld5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld5/d;

.field final synthetic b:Ld5/h;


# direct methods
.method constructor <init>(Ld5/h;Ld5/d;)V
    .locals 0

    iput-object p1, p0, Ld5/g;->b:Ld5/h;

    iput-object p2, p0, Ld5/g;->a:Ld5/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld5/g;->b:Ld5/h;

    invoke-static {v0}, Ld5/h;->c(Ld5/h;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ld5/g;->b:Ld5/h;

    invoke-static {v1}, Ld5/h;->b(Ld5/h;)Ld5/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ld5/h;->b(Ld5/h;)Ld5/a;

    move-result-object v1

    iget-object v2, p0, Ld5/g;->a:Ld5/d;

    invoke-interface {v1, v2}, Ld5/a;->a(Ld5/d;)V

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
