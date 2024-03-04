.class final Lcom/google/android/gms/internal/recaptcha/k;
.super Lcom/google/android/gms/internal/recaptcha/xf;
.source "SourceFile"


# instance fields
.field final synthetic a:Lt4/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/n;Lt4/h;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/k;->a:Lt4/h;

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/xf;-><init>()V

    return-void
.end method


# virtual methods
.method public final m0(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/recaptcha/zzai;)V
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/recaptcha/zzai;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/k;->a:Lt4/h;

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, v0}, Lt4/h;->b(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/k;->a:Lt4/h;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/recaptcha/zzai;->I()Lcom/google/android/gms/recaptcha/RecaptchaHandle;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Lt4/h;->c(Ljava/lang/Object;)V

    return-void
.end method
