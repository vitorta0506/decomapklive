.class final Lcom/google/android/gms/internal/recaptcha/m;
.super Lcom/google/android/gms/internal/recaptcha/wk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lt4/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/n;Lt4/h;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/m;->a:Lt4/h;

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/wk;-><init>()V

    return-void
.end method


# virtual methods
.method public final P(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/recaptcha/m;->a:Lt4/h;

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lt4/h;->c(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/m;->a:Lt4/h;

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p2, v0}, Lt4/h;->b(Ljava/lang/Exception;)V

    return-void
.end method
