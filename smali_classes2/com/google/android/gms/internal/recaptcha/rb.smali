.class final Lcom/google/android/gms/internal/recaptcha/rb;
.super Lcom/google/android/gms/internal/recaptcha/sb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/sb<",
        "TI;TO;",
        "Lcom/google/android/gms/internal/recaptcha/p7<",
        "-TI;+TO;>;TO;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/p7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TI;>;",
            "Lcom/google/android/gms/internal/recaptcha/p7<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/sb;-><init>(Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic S(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/p7;

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/recaptcha/p7;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final T(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->H(Ljava/lang/Object;)Z

    return-void
.end method
