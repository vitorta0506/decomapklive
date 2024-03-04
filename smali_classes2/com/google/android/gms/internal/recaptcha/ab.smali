.class final Lcom/google/android/gms/internal/recaptcha/ab;
.super Lcom/google/android/gms/internal/recaptcha/bb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/bb<",
        "TV;TX;",
        "Lcom/google/android/gms/internal/recaptcha/dc<",
        "-TX;+TV;>;",
        "Lcom/google/android/gms/internal/recaptcha/nd<",
        "+TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Class;Lcom/google/android/gms/internal/recaptcha/dc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/recaptcha/dc<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/recaptcha/bb;-><init>(Lcom/google/android/gms/internal/recaptcha/nd;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final bridge synthetic S(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/recaptcha/dc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 2
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/recaptcha/z7;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method final bridge synthetic T(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    return-void
.end method
