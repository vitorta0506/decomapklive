.class final Lcom/google/android/gms/internal/recaptcha/ha;
.super Lcom/google/android/gms/internal/recaptcha/n9;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/n9;-><init>()V

    const-string p1, "SHA-256"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/ha;->e(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ha;->a:Ljava/security/MessageDigest;

    .line 2
    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/recaptcha/ha;->b:I

    const-string p2, "Hashing.sha256()"

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/ha;->d:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/recaptcha/ha;->f(Ljava/security/MessageDigest;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/recaptcha/ha;->c:Z

    return-void
.end method

.method private static e(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    .line 2
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static f(Ljava/security/MessageDigest;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final l()Lcom/google/android/gms/internal/recaptcha/x9;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/ha;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ga;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/ha;->a:Ljava/security/MessageDigest;

    .line 1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    iget v3, p0, Lcom/google/android/gms/internal/recaptcha/ha;->b:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/ga;-><init>(Ljava/security/MessageDigest;ILcom/google/android/gms/internal/recaptcha/fa;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/recaptcha/ga;

    iget-object v2, p0, Lcom/google/android/gms/internal/recaptcha/ha;->a:Ljava/security/MessageDigest;

    .line 2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/recaptcha/ha;->e(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/recaptcha/ha;->b:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/recaptcha/ga;-><init>(Ljava/security/MessageDigest;ILcom/google/android/gms/internal/recaptcha/fa;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ha;->d:Ljava/lang/String;

    return-object v0
.end method
