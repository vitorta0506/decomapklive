.class public final Lcom/google/android/gms/internal/recaptcha/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/content/Context;Lcom/google/android/gms/internal/recaptcha/m4;)Lcom/google/android/gms/internal/recaptcha/h4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/recaptcha/m4;",
            ")",
            "Lcom/google/android/gms/internal/recaptcha/h4<",
            "Lcom/google/android/gms/internal/recaptcha/v1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/recaptcha/x2;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/recaptcha/w2;

    move-result-object p0

    const-string v0, "recaptcha"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/w2;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/w2;

    const-string v0, "token.pb"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/w2;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/recaptcha/w2;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/w2;->a()Landroid/net/Uri;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/j4;->i()Lcom/google/android/gms/internal/recaptcha/i4;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/recaptcha/i4;->e(Landroid/net/Uri;)Lcom/google/android/gms/internal/recaptcha/i4;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/v1;->u()Lcom/google/android/gms/internal/recaptcha/v1;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/recaptcha/i4;->c(Lcom/google/android/gms/internal/recaptcha/gh;)Lcom/google/android/gms/internal/recaptcha/i4;

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/recaptcha/i4;->f(Z)Lcom/google/android/gms/internal/recaptcha/i4;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/i4;->g()Lcom/google/android/gms/internal/recaptcha/j4;

    move-result-object p0

    .line 7
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/recaptcha/m4;->a(Lcom/google/android/gms/internal/recaptcha/j4;)Lcom/google/android/gms/internal/recaptcha/h4;

    move-result-object p0

    return-object p0
.end method
