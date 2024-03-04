.class public final Lcom/google/android/gms/internal/recaptcha/v8;
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
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/recaptcha/o8;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/v8;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/recaptcha/v8<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/recaptcha/o8;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/o8;

    return-object p0
.end method

.method public final e()Lcom/google/android/gms/internal/recaptcha/zzkn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkn<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/o8;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/o8;->a:[Ljava/lang/Object;

    .line 1
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/recaptcha/zzkn;->zzj(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/recaptcha/zzkn;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/recaptcha/o8;->b:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/recaptcha/o8;->c:Z

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/o8;->a:[Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/h9;

    .line 5
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/recaptcha/h9;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 6
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/f9;->g:Lcom/google/android/gms/internal/recaptcha/f9;

    return-object v0
.end method
