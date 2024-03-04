.class abstract Lcom/google/android/gms/internal/recaptcha/r9;
.super Lcom/google/android/gms/internal/recaptcha/n9;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/n9;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/android/gms/internal/recaptcha/v9;
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 2
    array-length p2, p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/internal/recaptcha/n9;->c([BII)Lcom/google/android/gms/internal/recaptcha/v9;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)Lcom/google/android/gms/internal/recaptcha/x9;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/p9;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/recaptcha/p9;-><init>(Lcom/google/android/gms/internal/recaptcha/r9;I)V

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/recaptcha/x9;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/p9;

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/recaptcha/p9;-><init>(Lcom/google/android/gms/internal/recaptcha/r9;I)V

    return-object v0
.end method
