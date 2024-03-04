.class final Lcom/google/android/play/core/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/internal/s;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/internal/s;Lcom/google/android/play/core/internal/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/s;

    invoke-static {v0}, Lcom/google/android/play/core/internal/s;->f(Lcom/google/android/play/core/internal/s;)Lcom/google/android/play/core/internal/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/s;

    new-instance v0, Lcom/google/android/play/core/internal/o;

    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/internal/o;-><init>(Lcom/google/android/play/core/internal/r;Landroid/os/IBinder;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/internal/s;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/s;

    invoke-static {v0}, Lcom/google/android/play/core/internal/s;->f(Lcom/google/android/play/core/internal/s;)Lcom/google/android/play/core/internal/g;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/internal/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/s;

    new-instance v0, Lcom/google/android/play/core/internal/p;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/p;-><init>(Lcom/google/android/play/core/internal/r;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/internal/s;->c()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
