.class final Lxb/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb/b;->onComplete(Lwb/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwb/f;

.field final synthetic b:Lxb/b;


# direct methods
.method constructor <init>(Lxb/b;Lwb/f;)V
    .locals 0

    iput-object p1, p0, Lxb/b$a;->b:Lxb/b;

    iput-object p2, p0, Lxb/b$a;->a:Lwb/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lxb/b$a;->b:Lxb/b;

    invoke-static {v0}, Lxb/b;->a(Lxb/b;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lxb/b$a;->b:Lxb/b;

    invoke-static {v1}, Lxb/b;->b(Lxb/b;)Lwb/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lxb/b$a;->b:Lxb/b;

    invoke-static {v1}, Lxb/b;->b(Lxb/b;)Lwb/c;

    move-result-object v1

    iget-object v2, p0, Lxb/b$a;->a:Lwb/f;

    invoke-interface {v1, v2}, Lwb/c;->onComplete(Lwb/f;)V

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
