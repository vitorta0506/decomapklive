.class final Lcom/google/android/play/core/internal/l;
.super Lcom/google/android/play/core/internal/h;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/play/core/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/internal/s;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/l;->b:Lcom/google/android/play/core/internal/s;

    invoke-direct {p0}, Lcom/google/android/play/core/internal/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/l;->b:Lcom/google/android/play/core/internal/s;

    invoke-static {v0}, Lcom/google/android/play/core/internal/s;->d(Lcom/google/android/play/core/internal/s;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/play/core/internal/s;->f(Lcom/google/android/play/core/internal/s;)Lcom/google/android/play/core/internal/g;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unbind from service."

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/internal/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/internal/l;->b:Lcom/google/android/play/core/internal/s;

    invoke-static {v0}, Lcom/google/android/play/core/internal/s;->a(Lcom/google/android/play/core/internal/s;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/play/core/internal/s;->b(Lcom/google/android/play/core/internal/s;)Landroid/content/ServiceConnection;

    move-result-object v0

    .line 2
    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/l;->b:Lcom/google/android/play/core/internal/s;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/s;->k(Lcom/google/android/play/core/internal/s;Z)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/l;->b:Lcom/google/android/play/core/internal/s;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/s;->l(Lcom/google/android/play/core/internal/s;Landroid/os/IInterface;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/l;->b:Lcom/google/android/play/core/internal/s;

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/s;->j(Lcom/google/android/play/core/internal/s;Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/l;->b:Lcom/google/android/play/core/internal/s;

    .line 6
    invoke-static {v0}, Lcom/google/android/play/core/internal/s;->m(Lcom/google/android/play/core/internal/s;)V

    return-void
.end method
