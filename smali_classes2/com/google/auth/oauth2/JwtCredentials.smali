.class public Lcom/google/auth/oauth2/JwtCredentials;
.super Lcom/google/auth/Credentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/JwtCredentials$b;
    }
.end annotation


# static fields
.field private static final CLOCK_SKEW:J

.field private static final JWT_ACCESS_PREFIX:Ljava/lang/String; = "Bearer "

.field private static final JWT_INCOMPLETE_ERROR_MESSAGE:Ljava/lang/String; = "JWT claims must contain audience, issuer, and subject."


# instance fields
.field transient clock:Lcom/google/api/client/util/i;

.field private transient expiryInSeconds:Ljava/lang/Long;

.field private transient jwt:Ljava/lang/String;

.field private final jwtClaims:Lcom/google/auth/oauth2/JwtClaims;

.field private final lifeSpanSeconds:Ljava/lang/Long;

.field private final lock:Ljava/lang/Object;

.field private final privateKey:Ljava/security/PrivateKey;

.field private final privateKeyId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/auth/oauth2/JwtCredentials;->CLOCK_SKEW:J

    return-void
.end method

.method private constructor <init>(Lcom/google/auth/oauth2/JwtCredentials$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/google/auth/Credentials;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->lock:Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->e()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 5
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->privateKeyId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->c()Lcom/google/auth/oauth2/JwtClaims;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auth/oauth2/JwtClaims;

    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->jwtClaims:Lcom/google/auth/oauth2/JwtClaims;

    .line 7
    invoke-virtual {v0}, Lcom/google/auth/oauth2/JwtClaims;->isComplete()Z

    move-result v0

    const-string v1, "JWT claims must contain audience, issuer, and subject."

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->lifeSpanSeconds:Ljava/lang/Long;

    .line 9
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->b()Lcom/google/api/client/util/i;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/util/i;

    iput-object p1, p0, Lcom/google/auth/oauth2/JwtCredentials;->clock:Lcom/google/api/client/util/i;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auth/oauth2/JwtCredentials$b;Lcom/google/auth/oauth2/JwtCredentials$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/JwtCredentials;-><init>(Lcom/google/auth/oauth2/JwtCredentials$b;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/JwtCredentials$b;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/JwtCredentials$b;

    invoke-direct {v0}, Lcom/google/auth/oauth2/JwtCredentials$b;-><init>()V

    return-object v0
.end method

.method private shouldRefresh()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->expiryInSeconds:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtCredentials;->getClock()Lcom/google/api/client/util/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/api/client/util/i;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->expiryInSeconds:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-wide v4, Lcom/google/auth/oauth2/JwtCredentials;->CLOCK_SKEW:J

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/JwtCredentials;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/JwtCredentials;

    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->privateKey:Ljava/security/PrivateKey;

    iget-object v2, p1, Lcom/google/auth/oauth2/JwtCredentials;->privateKey:Ljava/security/PrivateKey;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->privateKeyId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/JwtCredentials;->privateKeyId:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->jwtClaims:Lcom/google/auth/oauth2/JwtClaims;

    iget-object v2, p1, Lcom/google/auth/oauth2/JwtCredentials;->jwtClaims:Lcom/google/auth/oauth2/JwtClaims;

    .line 5
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->lifeSpanSeconds:Ljava/lang/Long;

    iget-object p1, p1, Lcom/google/auth/oauth2/JwtCredentials;->lifeSpanSeconds:Ljava/lang/Long;

    .line 6
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAuthenticationType()Ljava/lang/String;
    .locals 1

    const-string v0, "JWT"

    return-object v0
.end method

.method getClock()Lcom/google/api/client/util/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->clock:Lcom/google/api/client/util/i;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/api/client/util/i;->a:Lcom/google/api/client/util/i;

    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->clock:Lcom/google/api/client/util/i;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->clock:Lcom/google/api/client/util/i;

    return-object v0
.end method

.method public getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/auth/oauth2/JwtCredentials;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/auth/oauth2/JwtCredentials;->shouldRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtCredentials;->refresh()V

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->jwt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "Authorization"

    .line 5
    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasRequestMetadata()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasRequestMetadataOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->privateKey:Ljava/security/PrivateKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->privateKeyId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->jwtClaims:Lcom/google/auth/oauth2/JwtClaims;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->lifeSpanSeconds:Ljava/lang/Long;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public jwtWithClaims(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/auth/oauth2/JwtCredentials;->newBuilder()Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtCredentials$b;->j(Ljava/security/PrivateKey;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->privateKeyId:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtCredentials$b;->k(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->jwtClaims:Lcom/google/auth/oauth2/JwtClaims;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/auth/oauth2/JwtClaims;->merge(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtClaims;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->h(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->a()Lcom/google/auth/oauth2/JwtCredentials;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Li5/a$a;

    invoke-direct {v0}, Li5/a$a;-><init>()V

    const-string v1, "RS256"

    .line 2
    invoke-virtual {v0, v1}, Li5/a$a;->o(Ljava/lang/String;)Li5/a$a;

    const-string v1, "JWT"

    .line 3
    invoke-virtual {v0, v1}, Li5/a$a;->q(Ljava/lang/String;)Li5/a$a;

    .line 4
    iget-object v1, p0, Lcom/google/auth/oauth2/JwtCredentials;->privateKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Li5/a$a;->p(Ljava/lang/String;)Li5/a$a;

    .line 5
    new-instance v1, Li5/b$b;

    invoke-direct {v1}, Li5/b$b;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->jwtClaims:Lcom/google/auth/oauth2/JwtClaims;

    invoke-virtual {v2}, Lcom/google/auth/oauth2/JwtClaims;->getAudience()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li5/b$b;->m(Ljava/lang/Object;)Li5/b$b;

    .line 7
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->jwtClaims:Lcom/google/auth/oauth2/JwtClaims;

    invoke-virtual {v2}, Lcom/google/auth/oauth2/JwtClaims;->getIssuer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li5/b$b;->p(Ljava/lang/String;)Li5/b$b;

    .line 8
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->jwtClaims:Lcom/google/auth/oauth2/JwtClaims;

    invoke-virtual {v2}, Lcom/google/auth/oauth2/JwtClaims;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li5/b$b;->q(Ljava/lang/String;)Li5/b$b;

    .line 9
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->clock:Lcom/google/api/client/util/i;

    invoke-interface {v2}, Lcom/google/api/client/util/i;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 10
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Li5/b$b;->o(Ljava/lang/Long;)Li5/b$b;

    .line 11
    iget-object v4, p0, Lcom/google/auth/oauth2/JwtCredentials;->lifeSpanSeconds:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Li5/b$b;->n(Ljava/lang/Long;)Li5/b$b;

    .line 12
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->jwtClaims:Lcom/google/auth/oauth2/JwtClaims;

    invoke-virtual {v2}, Lcom/google/auth/oauth2/JwtClaims;->getAdditionalClaims()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/client/util/GenericData;->putAll(Ljava/util/Map;)V

    .line 13
    iget-object v2, p0, Lcom/google/auth/oauth2/JwtCredentials;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 14
    :try_start_0
    invoke-virtual {v1}, Li5/b$b;->k()Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/google/auth/oauth2/JwtCredentials;->expiryInSeconds:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    iget-object v3, p0, Lcom/google/auth/oauth2/JwtCredentials;->privateKey:Ljava/security/PrivateKey;

    sget-object v4, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    .line 16
    invoke-static {v3, v4, v0, v1}, Li5/a;->f(Ljava/security/PrivateKey;Lg5/c;Li5/a$a;Li5/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/JwtCredentials;->jwt:Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Error signing service account JWT access header with private key."

    invoke-direct {v1, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 19
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
