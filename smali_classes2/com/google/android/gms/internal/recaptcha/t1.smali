.class final Lcom/google/android/gms/internal/recaptcha/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/gms/internal/recaptcha/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/ah<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/recaptcha/a2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzuh;->zzi:Lcom/google/android/gms/internal/recaptcha/zzuh;

    sget-object v1, Lcom/google/android/gms/internal/recaptcha/zzuh;->zzk:Lcom/google/android/gms/internal/recaptcha/zzuh;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/a2;->v()Lcom/google/android/gms/internal/recaptcha/a2;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/recaptcha/ah;->d(Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/ah;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/t1;->a:Lcom/google/android/gms/internal/recaptcha/ah;

    return-void
.end method
