.class public abstract Lcom/google/android/gms/internal/recaptcha/j4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/recaptcha/gh;",
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

.method public static i()Lcom/google/android/gms/internal/recaptcha/i4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/recaptcha/gh;",
            ">()",
            "Lcom/google/android/gms/internal/recaptcha/i4<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/recaptcha/x3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/recaptcha/x3;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/p4;->a()Lcom/google/android/gms/internal/recaptcha/p4;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/x3;->h(Lcom/google/android/gms/internal/recaptcha/p4;)Lcom/google/android/gms/internal/recaptcha/i4;

    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/s5;->a()Lcom/google/android/gms/internal/recaptcha/s5;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/i4;->b(Lcom/google/android/gms/internal/recaptcha/z3;)Lcom/google/android/gms/internal/recaptcha/i4;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/i4;->d(Z)Lcom/google/android/gms/internal/recaptcha/i4;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/i4;->a(Z)Lcom/google/android/gms/internal/recaptcha/i4;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/i4;->f(Z)Lcom/google/android/gms/internal/recaptcha/i4;

    return-object v0
.end method


# virtual methods
.method public abstract a()Landroid/net/Uri;
.end method

.method public abstract b()Lcom/google/android/gms/internal/recaptcha/z3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/z3<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract c()Lcom/google/android/gms/internal/recaptcha/zzkj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "Lcom/google/android/gms/internal/recaptcha/b4<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/google/android/gms/internal/recaptcha/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()Lcom/google/android/gms/internal/recaptcha/p4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/p4;"
        }
    .end annotation
.end method
