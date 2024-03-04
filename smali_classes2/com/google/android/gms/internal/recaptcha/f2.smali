.class public final Lcom/google/android/gms/internal/recaptcha/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/internal/recaptcha/d2;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/e2;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "false"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/recaptcha/g2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
