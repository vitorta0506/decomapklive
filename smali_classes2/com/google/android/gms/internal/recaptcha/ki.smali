.class abstract Lcom/google/android/gms/internal/recaptcha/ki;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract b(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract c(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract d(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method abstract f()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract g(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract h(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract i(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract j(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract k(Ljava/lang/Object;ILcom/google/android/gms/internal/recaptcha/zzpy;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/google/android/gms/internal/recaptcha/zzpy;",
            ")V"
        }
    .end annotation
.end method

.method abstract l(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract m(Ljava/lang/Object;)V
.end method

.method abstract n(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract o(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract p(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/bj;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/recaptcha/bj;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final q(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/google/android/gms/internal/recaptcha/sh;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->c()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->b()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/recaptcha/ki;->h(Ljava/lang/Object;II)V

    return v2

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zza()Lcom/google/android/gms/internal/recaptcha/zzrq;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/ki;->f()Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    .line 4
    :cond_3
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->E()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/recaptcha/ki;->q(Ljava/lang/Object;Lcom/google/android/gms/internal/recaptcha/sh;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_4
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->c()I

    move-result p2

    if-ne v3, p2, :cond_5

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/recaptcha/ki;->g(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/recaptcha/ki;->j(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    .line 7
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/zzrr;->zzb()Lcom/google/android/gms/internal/recaptcha/zzrr;

    move-result-object p1

    throw p1

    .line 8
    :cond_6
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->H()Lcom/google/android/gms/internal/recaptcha/zzpy;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/recaptcha/ki;->k(Ljava/lang/Object;ILcom/google/android/gms/internal/recaptcha/zzpy;)V

    return v2

    .line 9
    :cond_7
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->e()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/recaptcha/ki;->i(Ljava/lang/Object;IJ)V

    return v2

    .line 10
    :cond_8
    invoke-interface {p2}, Lcom/google/android/gms/internal/recaptcha/sh;->g()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/recaptcha/ki;->l(Ljava/lang/Object;IJ)V

    return v2
.end method

.method abstract r(Lcom/google/android/gms/internal/recaptcha/sh;)Z
.end method
