.class public final Lcom/google/android/gms/internal/recaptcha/q8;
.super Lcom/google/android/gms/internal/recaptcha/o8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/o8<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/o8;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/q8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/recaptcha/q8<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/recaptcha/o8;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/o8;

    return-object p0
.end method

.method public final e(Ljava/util/Iterator;)Lcom/google/android/gms/internal/recaptcha/q8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/recaptcha/q8<",
            "TE;>;"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-super {p0, v0}, Lcom/google/android/gms/internal/recaptcha/o8;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/o8;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final f()Lcom/google/android/gms/internal/recaptcha/zzkj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/o8;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/o8;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/o8;->b:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/zzkj;->zzl([Ljava/lang/Object;I)Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v0

    return-object v0
.end method
