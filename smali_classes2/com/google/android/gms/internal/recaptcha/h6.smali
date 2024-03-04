.class abstract Lcom/google/android/gms/internal/recaptcha/h6;
.super Lcom/google/android/gms/internal/recaptcha/f6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/recaptcha/u6;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/f6<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/internal/recaptcha/t6;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/u6;Lcom/google/android/gms/internal/recaptcha/t6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/google/android/gms/internal/recaptcha/t6;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/f6;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/u6;)V

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/recaptcha/t6;->b()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/z7;->e(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/h6;->d:Lcom/google/android/gms/internal/recaptcha/t6;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/UUID;Lcom/google/android/gms/internal/recaptcha/t6;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/recaptcha/f6;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/internal/recaptcha/t6;->b()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/z7;->e(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/h6;->d:Lcom/google/android/gms/internal/recaptcha/t6;

    return-void
.end method
