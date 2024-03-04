.class public abstract Lcom/google/android/gms/recaptcha/VerificationHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/recaptcha/dk;Lcom/google/android/gms/internal/recaptcha/j1;Ljava/lang/String;)Lcom/google/android/gms/recaptcha/VerificationHandle;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/dk;->w()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/dk;->v()Lcom/google/android/gms/internal/recaptcha/hk;

    move-result-object p0

    const-string v1, ""

    .line 3
    invoke-static {v0, p0, p2, v1, p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/hk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/j1;)Lcom/google/android/gms/recaptcha/VerificationHandle;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/recaptcha/fk;Lcom/google/android/gms/internal/recaptcha/j1;Ljava/lang/String;)Lcom/google/android/gms/recaptcha/VerificationHandle;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/fk;->w()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/recaptcha/fk;->v()Lcom/google/android/gms/internal/recaptcha/hk;

    move-result-object p0

    const-string v1, ""

    .line 3
    invoke-static {v0, p0, p2, v1, p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/hk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/j1;)Lcom/google/android/gms/recaptcha/VerificationHandle;

    move-result-object p0

    return-object p0
.end method

.method public static zzf(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/j1;Ljava/lang/String;)Lcom/google/android/gms/recaptcha/VerificationHandle;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/hk;->v()Lcom/google/android/gms/internal/recaptcha/gk;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/recaptcha/gk;->p(J)Lcom/google/android/gms/internal/recaptcha/gk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/recaptcha/gk;->o(I)Lcom/google/android/gms/internal/recaptcha/gk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/zf;->l()Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/recaptcha/hk;

    const-string v1, ""

    .line 2
    invoke-static {v1, v0, p2, p0, p1}, Lcom/google/android/gms/recaptcha/VerificationHandle;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/hk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/j1;)Lcom/google/android/gms/recaptcha/VerificationHandle;

    move-result-object p0

    return-object p0
.end method

.method private static zzg(Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/hk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/recaptcha/j1;)Lcom/google/android/gms/recaptcha/VerificationHandle;
    .locals 11

    new-instance v10, Lcom/google/android/gms/recaptcha/c;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/hk;->u()J

    move-result-wide v3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/hk;->t()I

    move-result v5

    .line 3
    invoke-interface {p4}, Lcom/google/android/gms/internal/recaptcha/j1;->zza()Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v8

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/hk;->u()J

    move-result-wide v0

    const-wide/16 v6, 0x3c

    mul-long v0, v0, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/cj;->b(J)Lcom/google/android/gms/internal/recaptcha/mf;

    move-result-object v9

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/recaptcha/c;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;Lcom/google/android/gms/internal/recaptcha/j1;Lcom/google/android/gms/internal/recaptcha/ji;Lcom/google/android/gms/internal/recaptcha/mf;)V

    return-object v10
.end method


# virtual methods
.method public abstract getCodeLength()I
.end method

.method public abstract getOperationAbortedToken()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSiteKey()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTimeoutMinutes()J
.end method

.method public abstract getVerificationToken()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public isValid()Z
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/gms/recaptcha/VerificationHandle;->zzc()Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/recaptcha/VerificationHandle;->zza()Lcom/google/android/gms/internal/recaptcha/j1;

    move-result-object v1

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/internal/recaptcha/j1;->zza()Lcom/google/android/gms/internal/recaptcha/ji;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/fj;->a(Lcom/google/android/gms/internal/recaptcha/ji;Lcom/google/android/gms/internal/recaptcha/ji;)Lcom/google/android/gms/internal/recaptcha/mf;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/recaptcha/VerificationHandle;->zzb()Lcom/google/android/gms/internal/recaptcha/mf;

    move-result-object v1

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/cj;->a(Lcom/google/android/gms/internal/recaptcha/mf;)Lcom/google/android/gms/internal/recaptcha/mf;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/cj;->a(Lcom/google/android/gms/internal/recaptcha/mf;)Lcom/google/android/gms/internal/recaptcha/mf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/mf;->u()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/mf;->u()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/mf;->t()I

    move-result v0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/recaptcha/mf;->t()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    const/4 v8, -0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    :goto_0
    if-gez v8, :cond_3

    return v6

    :cond_3
    return v7
.end method

.method abstract zza()Lcom/google/android/gms/internal/recaptcha/j1;
.end method

.method abstract zzb()Lcom/google/android/gms/internal/recaptcha/mf;
.end method

.method abstract zzc()Lcom/google/android/gms/internal/recaptcha/ji;
.end method
