.class final Lcom/google/android/gms/internal/recaptcha/y0;
.super Lcom/google/android/gms/internal/recaptcha/c1;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/gms/internal/recaptcha/zzkl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/recaptcha/zzkl<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/recaptcha/zzpy;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/internal/recaptcha/zj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/recaptcha/zzkl;Lcom/google/android/gms/internal/recaptcha/zj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/recaptcha/zzkl<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/recaptcha/zzpy;",
            ">;",
            "Lcom/google/android/gms/internal/recaptcha/zj;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/c1;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/y0;->b:Lcom/google/android/gms/internal/recaptcha/zzkl;

    const-string p1, "Null mobileDynamicChallengeSignalsResults"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/y0;->c:Lcom/google/android/gms/internal/recaptcha/zj;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/recaptcha/zzkl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/recaptcha/zzkl<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/recaptcha/zzpy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y0;->b:Lcom/google/android/gms/internal/recaptcha/zzkl;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/recaptcha/zj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y0;->c:Lcom/google/android/gms/internal/recaptcha/zj;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/recaptcha/c1;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/recaptcha/c1;

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/y0;->b:Lcom/google/android/gms/internal/recaptcha/zzkl;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/c1;->a()Lcom/google/android/gms/internal/recaptcha/zzkl;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/recaptcha/zzkl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/y0;->c:Lcom/google/android/gms/internal/recaptcha/zj;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/c1;->b()Lcom/google/android/gms/internal/recaptcha/zj;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y0;->b:Lcom/google/android/gms/internal/recaptcha/zzkl;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zzkl;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/y0;->c:Lcom/google/android/gms/internal/recaptcha/zj;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/dg;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/y0;->b:Lcom/google/android/gms/internal/recaptcha/zzkl;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/y0;->c:Lcom/google/android/gms/internal/recaptcha/zj;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4e

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "OutOfGuardsSignalResults{signalValues="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mobileDynamicChallengeSignalsResults="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
