.class final Lcom/google/android/gms/internal/recaptcha/qb;
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
        "Lcom/google/android/gms/internal/recaptcha/dc<",
        "-TI;+TO;>;",
        "Lcom/google/android/gms/internal/recaptcha/nd<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/nd;Lcom/google/android/gms/internal/recaptcha/dc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TI;>;",
            "Lcom/google/android/gms/internal/recaptcha/dc<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/sb;-><init>(Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic S(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/dc;

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/recaptcha/dc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 3
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/recaptcha/z7;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method final bridge synthetic T(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/nd;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    return-void
.end method
