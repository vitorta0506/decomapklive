.class final Lcom/google/android/gms/internal/recaptcha/mc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/recaptcha/cc;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/recaptcha/pc;

.field final synthetic b:Lcom/google/android/gms/internal/recaptcha/cc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/rc;Lcom/google/android/gms/internal/recaptcha/pc;Lcom/google/android/gms/internal/recaptcha/cc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/mc;->a:Lcom/google/android/gms/internal/recaptcha/pc;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/mc;->b:Lcom/google/android/gms/internal/recaptcha/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/mc;->b:Lcom/google/android/gms/internal/recaptcha/cc;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/nd;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/mc;->a:Lcom/google/android/gms/internal/recaptcha/pc;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/recaptcha/oc;->a:Lcom/google/android/gms/internal/recaptcha/oc;

    sget-object v2, Lcom/google/android/gms/internal/recaptcha/oc;->c:Lcom/google/android/gms/internal/recaptcha/oc;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/gd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/gd;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/mc;->b:Lcom/google/android/gms/internal/recaptcha/cc;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/recaptcha/cc;->zza()Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object v0

    return-object v0
.end method
