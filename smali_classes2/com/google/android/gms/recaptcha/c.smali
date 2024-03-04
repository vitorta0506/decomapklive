.class final Lcom/google/android/gms/recaptcha/c;
.super Lcom/google/android/gms/recaptcha/VerificationHandle;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/recaptcha/j1;

.field private final g:Lcom/google/android/gms/internal/recaptcha/ji;

.field private final h:Lcom/google/android/gms/internal/recaptcha/mf;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Lcom/google/android/gms/internal/recaptcha/j1;Lcom/google/android/gms/internal/recaptcha/ji;Lcom/google/android/gms/internal/recaptcha/mf;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/recaptcha/VerificationHandle;-><init>()V

    const-string v0, "Null verificationToken"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/recaptcha/c;->a:Ljava/lang/String;

    const-string p1, "Null siteKey"

    .line 2
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/recaptcha/c;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/recaptcha/c;->c:J

    iput p5, p0, Lcom/google/android/gms/recaptcha/c;->d:I

    const-string p1, "Null operationAbortedToken"

    .line 3
    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/recaptcha/c;->e:Ljava/lang/String;

    const-string p1, "Null recaptchaTimeProvider"

    .line 4
    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/recaptcha/c;->f:Lcom/google/android/gms/internal/recaptcha/j1;

    const-string p1, "Null creationTimestamp"

    .line 5
    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p8, p0, Lcom/google/android/gms/recaptcha/c;->g:Lcom/google/android/gms/internal/recaptcha/ji;

    const-string p1, "Null validityDuration"

    .line 6
    invoke-static {p9, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p9, p0, Lcom/google/android/gms/recaptcha/c;->h:Lcom/google/android/gms/internal/recaptcha/mf;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/recaptcha/VerificationHandle;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/recaptcha/VerificationHandle;

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->getVerificationToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->getSiteKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/recaptcha/c;->c:J

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->getTimeoutMinutes()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/recaptcha/c;->d:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->getCodeLength()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->getOperationAbortedToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->f:Lcom/google/android/gms/internal/recaptcha/j1;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->zza()Lcom/google/android/gms/internal/recaptcha/j1;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->g:Lcom/google/android/gms/internal/recaptcha/ji;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->zzc()Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/recaptcha/dg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->h:Lcom/google/android/gms/internal/recaptcha/mf;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->zzb()Lcom/google/android/gms/internal/recaptcha/mf;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/recaptcha/dg;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final getCodeLength()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/recaptcha/c;->d:I

    return v0
.end method

.method public final getOperationAbortedToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getSiteKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimeoutMinutes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/recaptcha/c;->c:J

    return-wide v0
.end method

.method public final getVerificationToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/c;->a:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/recaptcha/c;->c:J

    const v4, 0xf4243

    xor-int/2addr v0, v4

    mul-int v0, v0, v4

    xor-int/2addr v0, v1

    mul-int v0, v0, v4

    const/16 v1, 0x20

    ushr-long v5, v2, v1

    xor-long v1, v5, v2

    long-to-int v2, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v4

    iget v1, p0, Lcom/google/android/gms/recaptcha/c;->d:I

    xor-int/2addr v0, v1

    mul-int v0, v0, v4

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v4

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->f:Lcom/google/android/gms/internal/recaptcha/j1;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v4

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->g:Lcom/google/android/gms/internal/recaptcha/ji;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/dg;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v4

    iget-object v1, p0, Lcom/google/android/gms/recaptcha/c;->h:Lcom/google/android/gms/internal/recaptcha/mf;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/dg;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/recaptcha/c;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/recaptcha/c;->b:Ljava/lang/String;

    iget-wide v3, v0, Lcom/google/android/gms/recaptcha/c;->c:J

    iget v5, v0, Lcom/google/android/gms/recaptcha/c;->d:I

    iget-object v6, v0, Lcom/google/android/gms/recaptcha/c;->e:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/recaptcha/c;->f:Lcom/google/android/gms/internal/recaptcha/j1;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/recaptcha/c;->g:Lcom/google/android/gms/internal/recaptcha/ji;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/recaptcha/c;->h:Lcom/google/android/gms/internal/recaptcha/mf;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit16 v10, v10, 0xc4

    add-int/2addr v10, v11

    add-int/2addr v10, v12

    add-int/2addr v10, v13

    add-int/2addr v10, v14

    add-int/2addr v10, v15

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "VerificationHandle{verificationToken="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", siteKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeoutMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", codeLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", operationAbortedToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recaptchaTimeProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validityDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()Lcom/google/android/gms/internal/recaptcha/j1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/c;->f:Lcom/google/android/gms/internal/recaptcha/j1;

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/recaptcha/mf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/c;->h:Lcom/google/android/gms/internal/recaptcha/mf;

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/recaptcha/ji;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/recaptcha/c;->g:Lcom/google/android/gms/internal/recaptcha/ji;

    return-object v0
.end method
