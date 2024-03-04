.class final Lcom/google/android/gms/internal/recaptcha/nc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/recaptcha/ce;

.field final synthetic b:Lcom/google/android/gms/internal/recaptcha/zd;

.field final synthetic c:Lcom/google/android/gms/internal/recaptcha/nd;

.field final synthetic d:Lcom/google/android/gms/internal/recaptcha/nd;

.field final synthetic e:Lcom/google/android/gms/internal/recaptcha/pc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/rc;Lcom/google/android/gms/internal/recaptcha/ce;Lcom/google/android/gms/internal/recaptcha/zd;Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/pc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/nc;->a:Lcom/google/android/gms/internal/recaptcha/ce;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/nc;->b:Lcom/google/android/gms/internal/recaptcha/zd;

    iput-object p4, p0, Lcom/google/android/gms/internal/recaptcha/nc;->c:Lcom/google/android/gms/internal/recaptcha/nd;

    iput-object p5, p0, Lcom/google/android/gms/internal/recaptcha/nc;->d:Lcom/google/android/gms/internal/recaptcha/nd;

    iput-object p6, p0, Lcom/google/android/gms/internal/recaptcha/nc;->e:Lcom/google/android/gms/internal/recaptcha/pc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nc;->a:Lcom/google/android/gms/internal/recaptcha/ce;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/cb;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nc;->b:Lcom/google/android/gms/internal/recaptcha/zd;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/nc;->c:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/cb;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nc;->d:Lcom/google/android/gms/internal/recaptcha/nd;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nc;->e:Lcom/google/android/gms/internal/recaptcha/pc;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/recaptcha/oc;->a:Lcom/google/android/gms/internal/recaptcha/oc;

    sget-object v2, Lcom/google/android/gms/internal/recaptcha/oc;->b:Lcom/google/android/gms/internal/recaptcha/oc;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/nc;->a:Lcom/google/android/gms/internal/recaptcha/ce;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/cb;->cancel(Z)Z

    :cond_1
    return-void
.end method
