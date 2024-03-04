.class final Lcom/google/android/gms/internal/recaptcha/tb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/recaptcha/nd;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/gms/internal/recaptcha/vb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/vb;Lcom/google/android/gms/internal/recaptcha/nd;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/tb;->c:Lcom/google/android/gms/internal/recaptcha/vb;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/tb;->a:Lcom/google/android/gms/internal/recaptcha/nd;

    iput p3, p0, Lcom/google/android/gms/internal/recaptcha/tb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/tb;->a:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/tb;->c:Lcom/google/android/gms/internal/recaptcha/vb;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/vb;->e0(Lcom/google/android/gms/internal/recaptcha/vb;Lcom/google/android/gms/internal/recaptcha/zzke;)Lcom/google/android/gms/internal/recaptcha/zzke;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/tb;->c:Lcom/google/android/gms/internal/recaptcha/vb;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/recaptcha/cb;->cancel(Z)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/tb;->c:Lcom/google/android/gms/internal/recaptcha/vb;

    iget v2, p0, Lcom/google/android/gms/internal/recaptcha/tb;->b:I

    iget-object v3, p0, Lcom/google/android/gms/internal/recaptcha/tb;->a:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 5
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/vb;->g0(Lcom/google/android/gms/internal/recaptcha/vb;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/tb;->c:Lcom/google/android/gms/internal/recaptcha/vb;

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/recaptcha/vb;->h0(Lcom/google/android/gms/internal/recaptcha/vb;Lcom/google/android/gms/internal/recaptcha/zzke;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/tb;->c:Lcom/google/android/gms/internal/recaptcha/vb;

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/recaptcha/vb;->h0(Lcom/google/android/gms/internal/recaptcha/vb;Lcom/google/android/gms/internal/recaptcha/zzke;)V

    .line 8
    throw v1
.end method
