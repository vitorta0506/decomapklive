.class final Lcom/google/android/gms/internal/recaptcha/ga;
.super Lcom/google/android/gms/internal/recaptcha/m9;
.source "SourceFile"


# instance fields
.field private final b:Ljava/security/MessageDigest;

.field private final c:I

.field private d:Z


# direct methods
.method synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/android/gms/internal/recaptcha/fa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/m9;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/ga;->b:Ljava/security/MessageDigest;

    iput p2, p0, Lcom/google/android/gms/internal/recaptcha/ga;->c:I

    return-void
.end method

.method private final d()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/ga;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/recaptcha/z7;->j(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final b([BII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/ga;->d()V

    iget-object p2, p0, Lcom/google/android/gms/internal/recaptcha/ga;->b:Ljava/security/MessageDigest;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p1, v0, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method public final c()Lcom/google/android/gms/internal/recaptcha/v9;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/recaptcha/ga;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/recaptcha/ga;->d:Z

    iget v0, p0, Lcom/google/android/gms/internal/recaptcha/ga;->c:I

    iget-object v1, p0, Lcom/google/android/gms/internal/recaptcha/ga;->b:Ljava/security/MessageDigest;

    .line 2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ga;->b:Ljava/security/MessageDigest;

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/v9;->g([B)Lcom/google/android/gms/internal/recaptcha/v9;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/ga;->b:Ljava/security/MessageDigest;

    .line 4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/recaptcha/ga;->c:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/v9;->g([B)Lcom/google/android/gms/internal/recaptcha/v9;

    move-result-object v0

    :goto_0
    return-object v0
.end method
