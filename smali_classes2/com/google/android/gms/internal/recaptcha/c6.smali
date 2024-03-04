.class final Lcom/google/android/gms/internal/recaptcha/c6;
.super Lcom/google/android/gms/internal/recaptcha/cb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/recaptcha/cb<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private h:Lcom/google/android/gms/internal/recaptcha/e6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/e6<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final i:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/recaptcha/e6;ILcom/google/android/gms/internal/recaptcha/a6;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/cb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/c6;->h:Lcom/google/android/gms/internal/recaptcha/e6;

    iput p2, p0, Lcom/google/android/gms/internal/recaptcha/c6;->i:I

    return-void
.end method


# virtual methods
.method protected final k()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c6;->h:Lcom/google/android/gms/internal/recaptcha/e6;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/e6;->a(Lcom/google/android/gms/internal/recaptcha/e6;)Lcom/google/android/gms/internal/recaptcha/b6;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/b6;->b(Lcom/google/android/gms/internal/recaptcha/b6;)Lcom/google/android/gms/internal/recaptcha/cc;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 1
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xb

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "callable=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/c6;->h:Lcom/google/android/gms/internal/recaptcha/e6;

    .line 2
    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/e6;->e(Lcom/google/android/gms/internal/recaptcha/e6;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/d6;

    if-eqz v2, :cond_2

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trial=["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method protected final l()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/c6;->h:Lcom/google/android/gms/internal/recaptcha/e6;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/recaptcha/c6;->h:Lcom/google/android/gms/internal/recaptcha/e6;

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/e6;->g(Lcom/google/android/gms/internal/recaptcha/e6;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/e6;->e(Lcom/google/android/gms/internal/recaptcha/e6;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/recaptcha/d6;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/d6;->S(Lcom/google/android/gms/internal/recaptcha/d6;)I

    move-result v3

    iget v4, p0, Lcom/google/android/gms/internal/recaptcha/c6;->i:I

    if-gt v3, v4, :cond_2

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/recaptcha/cb;->cancel(Z)Z

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/e6;->e(Lcom/google/android/gms/internal/recaptcha/e6;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    return-void
.end method

.method protected final n(Lcom/google/android/gms/internal/recaptcha/nd;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "+TT;>;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/recaptcha/cb;->n(Lcom/google/android/gms/internal/recaptcha/nd;)Z

    move-result p1

    return p1
.end method
