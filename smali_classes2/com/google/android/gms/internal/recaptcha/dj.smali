.class public final Lcom/google/android/gms/internal/recaptcha/dj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/internal/recaptcha/za;)Lcom/google/android/gms/internal/recaptcha/ji;
    .locals 2

    .line 1
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/time/Instant;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/recaptcha/fj;->d(JI)Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object p0

    return-object p0
.end method
