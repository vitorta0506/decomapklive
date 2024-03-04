.class final Lcom/google/android/gms/internal/recaptcha/t;
.super Lcom/google/android/gms/internal/recaptcha/ti;
.source "SourceFile"


# instance fields
.field final synthetic a:Lt4/h;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/w;Lt4/h;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/t;->a:Lt4/h;

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/ti;-><init>()V

    return-void
.end method


# virtual methods
.method public final k(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/recaptcha/zzx;)V
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/recaptcha/zzx;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/recaptcha/zzx;->I()Lcom/google/android/gms/recaptcha/RecaptchaResultData;

    move-result-object p2

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/t;->a:Lt4/h;

    .line 3
    invoke-static {p1, p2, v0}, Lv3/m;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lt4/h;)V

    return-void
.end method
