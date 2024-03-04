.class final Lcom/google/android/gms/internal/recaptcha/sj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/android/gms/internal/recaptcha/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/ah<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/recaptcha/zzpy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/zzuh;->zze:Lcom/google/android/gms/internal/recaptcha/zzuh;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/recaptcha/zzuh;->zzl:Lcom/google/android/gms/internal/recaptcha/zzuh;

    sget-object v3, Lcom/google/android/gms/internal/recaptcha/zzpy;->zzb:Lcom/google/android/gms/internal/recaptcha/zzpy;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/recaptcha/ah;->d(Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/zzuh;Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/ah;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/sj;->a:Lcom/google/android/gms/internal/recaptcha/ah;

    return-void
.end method
