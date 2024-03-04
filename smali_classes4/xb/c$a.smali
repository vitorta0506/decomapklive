.class final Lxb/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb/c;->onComplete(Lwb/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwb/f;

.field final synthetic b:Lxb/c;


# direct methods
.method constructor <init>(Lxb/c;Lwb/f;)V
    .locals 0

    iput-object p1, p0, Lxb/c$a;->b:Lxb/c;

    iput-object p2, p0, Lxb/c$a;->a:Lwb/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lxb/c$a;->b:Lxb/c;

    invoke-static {v0}, Lxb/c;->a(Lxb/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lxb/c$a;->b:Lxb/c;

    invoke-static {v1}, Lxb/c;->b(Lxb/c;)Lwb/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lxb/c$a;->b:Lxb/c;

    invoke-static {v1}, Lxb/c;->b(Lxb/c;)Lwb/d;

    move-result-object v1

    iget-object v2, p0, Lxb/c$a;->a:Lwb/f;

    invoke-virtual {v2}, Lwb/f;->d()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Lwb/d;->a(Ljava/lang/Exception;)V

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
