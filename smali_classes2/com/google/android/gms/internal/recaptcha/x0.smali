.class final Lcom/google/android/gms/internal/recaptcha/x0;
.super Lcom/google/android/gms/internal/recaptcha/b1;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/gms/internal/recaptcha/zzkj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "Lcom/google/android/gms/internal/recaptcha/zzvj;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/recaptcha/xj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/zzkj;Lcom/google/android/gms/internal/recaptcha/xj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "Lcom/google/android/gms/internal/recaptcha/zzvj;",
            ">;",
            "Lcom/google/android/gms/internal/recaptcha/xj;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/b1;-><init>()V

    const-string v0, "Null requestedSignals"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/x0;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    const-string p1, "Null mobileDynamicChallengeSignals"

    .line 2
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/x0;->c:Lcom/google/android/gms/internal/recaptcha/xj;

    return-void
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/recaptcha/zzkj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkj<",
            "Lcom/google/android/gms/internal/recaptcha/zzvj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x0;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    return-object v0
.end method

.method final b()Lcom/google/android/gms/internal/recaptcha/xj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x0;->c:Lcom/google/android/gms/internal/recaptcha/xj;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/recaptcha/b1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/b1;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x0;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/b1;->a()Lcom/google/android/gms/internal/recaptcha/zzkj;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/recaptcha/zzkj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x0;->c:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/b1;->b()Lcom/google/android/gms/internal/recaptcha/xj;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/recaptcha/dg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x0;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzkj;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x0;->c:Lcom/google/android/gms/internal/recaptcha/xj;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/dg;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/x0;->b:Lcom/google/android/gms/internal/recaptcha/zzkj;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/x0;->c:Lcom/google/android/gms/internal/recaptcha/xj;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x48

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "OutOfGuardsSignalData{requestedSignals="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mobileDynamicChallengeSignals="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
