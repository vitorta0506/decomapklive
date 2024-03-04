.class public Lcom/google/auth/oauth2/ServiceAccountCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/IdTokenProvider;
.implements Lcom/google/auth/oauth2/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_LIFETIME_IN_SECONDS:I = 0xe10

.field private static final DEFAULT_NUMBER_OF_RETRIES:I = 0x3

.field private static final GRANT_TYPE:Ljava/lang/String; = "urn:ietf:params:oauth:grant-type:jwt-bearer"

.field private static final INITIAL_RETRY_INTERVAL_MILLIS:I = 0x3e8

.field private static final PARSE_ERROR_PREFIX:Ljava/lang/String; = "Error parsing token refresh response. "

.field private static final RETRY_MULTIPLIER:D = 2.0

.field private static final RETRY_RANDOMIZATION_FACTOR:D = 0.1

.field private static final TWELVE_HOURS_IN_SECONDS:I = 0xa8c0

.field private static final serialVersionUID:J = 0x6c59f77c65e8abbaL


# instance fields
.field private final clientEmail:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;

.field private final defaultRetriesEnabled:Z

.field private final defaultScopes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lifetime:I

.field private final privateKey:Ljava/security/PrivateKey;

.field private final privateKeyId:Ljava/lang/String;

.field private final projectId:Ljava/lang/String;

.field private final quotaProjectId:Ljava/lang/String;

.field private final scopes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceAccountUser:Ljava/lang/String;

.field private final tokenServerUri:Ljava/net/URI;

.field private transient transportFactory:Ls5/b;

.field private final transportFactoryClassName:Ljava/lang/String;

.field private final useJwtAccessWithScope:Z


# direct methods
.method constructor <init>(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->f(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientId:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->g(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->l(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 5
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->m(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->n(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->n(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    .line 7
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->o(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->o(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultScopes:Ljava/util/Collection;

    .line 10
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->p(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ls5/b;

    move-result-object v0

    const-class v1, Ls5/b;

    sget-object v2, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    .line 11
    invoke-static {v1, v2}, Lcom/google/auth/oauth2/OAuth2Credentials;->getFromServiceLoader(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls5/b;

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactory:Ls5/b;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactoryClassName:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->q(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/auth/oauth2/n;->a:Ljava/net/URI;

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->q(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/net/URI;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->tokenServerUri:Ljava/net/URI;

    .line 15
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->r(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->serviceAccountUser:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->s(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->projectId:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->h(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->quotaProjectId:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->i(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)I

    move-result v0

    const v1, 0xa8c0

    if-gt v0, v1, :cond_3

    .line 19
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->i(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)I

    move-result v0

    iput v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->lifetime:I

    .line 20
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->j(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->useJwtAccessWithScope:Z

    .line 21
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->k(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultRetriesEnabled:Z

    return-void

    .line 22
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lifetime must be less than or equal to 43200"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$1400(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/security/PrivateKey;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKey:Ljava/security/PrivateKey;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultScopes:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ls5/b;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactory:Ls5/b;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->tokenServerUri:Ljava/net/URI;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->serviceAccountUser:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->projectId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->quotaProjectId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/auth/oauth2/ServiceAccountCredentials;)I
    .locals 0

    iget p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->lifetime:I

    return p0
.end method

.method static synthetic access$2600(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->useJwtAccessWithScope:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/google/auth/oauth2/ServiceAccountCredentials;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultRetriesEnabled:Z

    return p0
.end method

.method static fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ls5/b;",
            ")",
            "Lcom/google/auth/oauth2/ServiceAccountCredentials;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "client_id"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "client_email"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "private_key"

    .line 3
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "private_key_id"

    .line 4
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "project_id"

    .line 5
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "token_uri"

    .line 6
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "quota_project_id"

    .line 7
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 8
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Token server URI specified in \'token_uri\' could not be parsed."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 10
    invoke-static {}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->newBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v5

    .line 11
    invoke-virtual {v5, v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->v(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->u(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v3}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->A(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->x(Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v6}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->G(Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v4}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->B(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p1

    .line 17
    invoke-virtual {p1, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->C(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 18
    invoke-static {v2, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromPkcs8(Ljava/lang/String;Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p0

    return-object p0

    .line 19
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Error reading service account credential from JSON, expecting  \'client_id\', \'client_email\', \'private_key\' and \'private_key_id\'."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static fromPkcs8(Ljava/lang/String;Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-static {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyFromPkcs8(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    .line 48
    invoke-virtual {p1, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->z(Ljava/security/PrivateKey;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    .line 49
    new-instance p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;-><init>(Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)V

    return-object p0
.end method

.method public static fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/ServiceAccountCredentials;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->newBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->v(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->u(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p3}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->A(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p4}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->D(Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 6
    invoke-static {p2, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromPkcs8(Ljava/lang/String;Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/ServiceAccountCredentials;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->newBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->v(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->u(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 10
    invoke-virtual {p0, p3}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->A(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 11
    invoke-virtual {p0, p4, p5}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->E(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 12
    invoke-static {p2, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromPkcs8(Ljava/lang/String;Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ls5/b;Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ls5/b;",
            "Ljava/net/URI;",
            ")",
            "Lcom/google/auth/oauth2/ServiceAccountCredentials;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->newBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->v(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->u(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 24
    invoke-virtual {p0, p3}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->A(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 25
    invoke-virtual {p0, p4, p5}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->E(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 26
    invoke-virtual {p0, p6}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->x(Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 27
    invoke-virtual {p0, p7}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->G(Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 28
    invoke-static {p2, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromPkcs8(Ljava/lang/String;Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ls5/b;Ljava/net/URI;Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ls5/b;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/auth/oauth2/ServiceAccountCredentials;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->newBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->v(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->u(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 41
    invoke-virtual {p0, p3}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->A(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 42
    invoke-virtual {p0, p4, p5}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->E(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 43
    invoke-virtual {p0, p6}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->x(Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 44
    invoke-virtual {p0, p7}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->G(Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 45
    invoke-virtual {p0, p8}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->F(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 46
    invoke-static {p2, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromPkcs8(Ljava/lang/String;Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ls5/b;Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ls5/b;",
            "Ljava/net/URI;",
            ")",
            "Lcom/google/auth/oauth2/ServiceAccountCredentials;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->newBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->v(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->u(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 16
    invoke-virtual {p0, p3}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->A(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 17
    invoke-virtual {p0, p4}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->D(Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 18
    invoke-virtual {p0, p5}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->x(Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p6}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->G(Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 20
    invoke-static {p2, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromPkcs8(Ljava/lang/String;Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ls5/b;Ljava/net/URI;Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ls5/b;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/auth/oauth2/ServiceAccountCredentials;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->newBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->v(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->u(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 32
    invoke-virtual {p0, p3}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->A(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 33
    invoke-virtual {p0, p4}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->D(Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 34
    invoke-virtual {p0, p5}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->x(Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 35
    invoke-virtual {p0, p6}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->G(Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p7}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->F(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p0

    .line 37
    invoke-static {p2, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromPkcs8(Ljava/lang/String;Lcom/google/auth/oauth2/ServiceAccountCredentials$b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    invoke-static {p0, v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromStream(Ljava/io/InputStream;Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    .line 5
    new-instance v1, Lg5/e;

    invoke-direct {v1, v0}, Lg5/e;-><init>(Lg5/c;)V

    .line 6
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-class v2, Lg5/b;

    .line 7
    invoke-virtual {v1, p0, v0, v2}, Lg5/e;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg5/b;

    const-string v0, "type"

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "service_account"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-static {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    aput-object v1, p1, v0

    const-string v0, "Error reading credentials from stream, \'type\' value \'%s\' not recognized. Expecting \'%s\'."

    .line 12
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Error reading credentials from stream, \'type\' field not specified."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getIssuer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    return-object v0
.end method

.method static getUriForSelfSignedJWT(Ljava/net/URI;)Ljava/net/URI;
    .locals 5

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    invoke-direct {v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;-><init>()V

    return-object v0
.end method

.method static privateKeyFromPkcs8(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string p0, "PRIVATE KEY"

    .line 2
    invoke-static {v0, p0}, Lcom/google/api/client/util/y;->b(Ljava/io/Reader;Ljava/lang/String;)Lcom/google/api/client/util/y$a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/api/client/util/y$a;->a()[B

    move-result-object p0

    .line 4
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 5
    :try_start_0
    invoke-static {}, Lcom/google/api/client/util/a0;->b()Ljava/security/KeyFactory;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 7
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected exception reading PKCS#8 data"

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid PKCS#8 data."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    iget-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactoryClassName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls5/b;

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactory:Ls5/b;

    return-void
.end method


# virtual methods
.method createAssertion(Lg5/c;J)Ljava/lang/String;
    .locals 4
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
    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Li5/a$a;->p(Ljava/lang/String;)Li5/a$a;

    .line 5
    new-instance v1, Li5/b$b;

    invoke-direct {v1}, Li5/b$b;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getIssuer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li5/b$b;->p(Ljava/lang/String;)Li5/b$b;

    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Li5/b$b;->o(Ljava/lang/Long;)Li5/b$b;

    .line 8
    iget v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->lifetime:I

    int-to-long v2, v2

    add-long/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Li5/b$b;->n(Ljava/lang/Long;)Li5/b$b;

    .line 9
    iget-object p2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->serviceAccountUser:Ljava/lang/String;

    invoke-virtual {v1, p2}, Li5/b$b;->q(Ljava/lang/String;)Li5/b$b;

    .line 10
    iget-object p2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/16 p3, 0x20

    const-string v2, "scope"

    if-eqz p2, :cond_0

    .line 11
    invoke-static {p3}, Lcom/google/api/client/util/o;->b(C)Lcom/google/api/client/util/o;

    move-result-object p2

    iget-object p3, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultScopes:Ljava/util/Collection;

    invoke-virtual {p2, p3}, Lcom/google/api/client/util/o;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p3}, Lcom/google/api/client/util/o;->b(C)Lcom/google/api/client/util/o;

    move-result-object p2

    iget-object p3, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    invoke-virtual {p2, p3}, Lcom/google/api/client/util/o;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_0
    sget-object p2, Lcom/google/auth/oauth2/n;->a:Ljava/net/URI;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Li5/b$b;->m(Ljava/lang/Object;)Li5/b$b;

    .line 14
    :try_start_0
    iget-object p2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKey:Ljava/security/PrivateKey;

    invoke-static {p2, p1, v0, v1}, Li5/a;->f(Ljava/security/PrivateKey;Lg5/c;Li5/a$a;Li5/b$b;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Error signing service account access token request with private key."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method createAssertionForIdToken(Lg5/c;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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
    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Li5/a$a;->p(Ljava/lang/String;)Li5/a$a;

    .line 5
    new-instance v1, Li5/b$b;

    invoke-direct {v1}, Li5/b$b;-><init>()V

    .line 6
    invoke-direct {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getIssuer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Li5/b$b;->p(Ljava/lang/String;)Li5/b$b;

    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Li5/b$b;->o(Ljava/lang/Long;)Li5/b$b;

    .line 8
    iget v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->lifetime:I

    int-to-long v2, v2

    add-long/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Li5/b$b;->n(Ljava/lang/Long;)Li5/b$b;

    .line 9
    iget-object p2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->serviceAccountUser:Ljava/lang/String;

    invoke-virtual {v1, p2}, Li5/b$b;->q(Ljava/lang/String;)Li5/b$b;

    if-nez p4, :cond_0

    .line 10
    sget-object p2, Lcom/google/auth/oauth2/n;->a:Ljava/net/URI;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Li5/b$b;->m(Ljava/lang/Object;)Li5/b$b;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1, p4}, Li5/b$b;->m(Ljava/lang/Object;)Li5/b$b;

    :goto_0
    :try_start_0
    const-string p2, "target_audience"

    .line 12
    invoke-virtual {v1, p2, p5}, Li5/b$b;->l(Ljava/lang/String;Ljava/lang/Object;)Li5/b$b;

    .line 13
    iget-object p2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 14
    invoke-static {p2, p1, v0, v1}, Li5/a;->f(Ljava/security/PrivateKey;Lg5/c;Li5/a$a;Li5/b$b;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 15
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Error signing service account access token request with private key."

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public createDelegated(Ljava/lang/String;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->toBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->F(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->t()Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p1

    return-object p1
.end method

.method public createScoped(Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/GoogleCredentials;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->createScoped(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object p1

    return-object p1
.end method

.method public createScoped(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/GoogleCredentials;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->toBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->E(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->t()Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p1

    return-object p1
.end method

.method public createScopedRequired()Z
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultScopes:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method createSelfSignedJwtCredentials(Ljava/net/URI;)Lcom/google/auth/oauth2/JwtCredentials;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/auth/oauth2/JwtClaims;->newBuilder()Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtClaims$a;->d(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtClaims$a;->e(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/16 v1, 0x20

    if-nez p1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/google/api/client/util/o;->b(C)Lcom/google/api/client/util/o;

    move-result-object p1

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/google/api/client/util/o;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v1}, Lcom/google/api/client/util/o;->b(C)Lcom/google/api/client/util/o;

    move-result-object p1

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultScopes:Ljava/util/Collection;

    invoke-virtual {p1, v1}, Lcom/google/api/client/util/o;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "scope"

    .line 5
    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/JwtClaims$a;->b(Ljava/util/Map;)Lcom/google/auth/oauth2/JwtClaims$a;

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getUriForSelfSignedJWT(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/JwtClaims$a;->c(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    .line 7
    :goto_1
    invoke-static {}, Lcom/google/auth/oauth2/JwtCredentials;->newBuilder()Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/auth/oauth2/JwtCredentials$b;->j(Ljava/security/PrivateKey;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v1}, Lcom/google/auth/oauth2/JwtCredentials$b;->k(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    .line 10
    invoke-virtual {v0}, Lcom/google/auth/oauth2/JwtClaims$a;->a()Lcom/google/auth/oauth2/JwtClaims;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/JwtCredentials$b;->h(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/i;

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/JwtCredentials$b;->g(Lcom/google/api/client/util/i;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->a()Lcom/google/auth/oauth2/JwtCredentials;

    move-result-object p1

    return-object p1
.end method

.method public createWithCustomLifetime(I)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->toBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->y(I)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->t()Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createWithCustomRetryStrategy(Z)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->createWithCustomRetryStrategy(Z)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p1

    return-object p1
.end method

.method public createWithCustomRetryStrategy(Z)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->toBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->w(Z)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->t()Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p1

    return-object p1
.end method

.method public createWithUseJwtAccessWithScope(Z)Lcom/google/auth/oauth2/ServiceAccountCredentials;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->toBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->H(Z)Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;->t()Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKey:Ljava/security/PrivateKey;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 5
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactoryClassName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactoryClassName:Ljava/lang/String;

    .line 7
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->tokenServerUri:Ljava/net/URI;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->tokenServerUri:Ljava/net/URI;

    .line 8
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    .line 9
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultScopes:Ljava/util/Collection;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultScopes:Ljava/util/Collection;

    .line 10
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->quotaProjectId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->quotaProjectId:Ljava/lang/String;

    .line 11
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->lifetime:I

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->lifetime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->useJwtAccessWithScope:Z

    .line 13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean v2, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->useJwtAccessWithScope:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultRetriesEnabled:Z

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p1, p1, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultRetriesEnabled:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getClientEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAdditionalHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->quotaProjectId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1, v0}, Lcom/google/auth/oauth2/GoogleCredentials;->addQuotaProjectIdToRequestMetadata(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getClientEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDefaultScopes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultScopes:Ljava/util/Collection;

    return-object v0
.end method

.method getLifetime()I
    .locals 1

    iget v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->lifetime:I

    return v0
.end method

.method public final getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public final getPrivateKeyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaProjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->quotaProjectId:Ljava/lang/String;

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

    .line 4
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->createScopedRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Scopes and uri are not configured for service account. Specify the scopes by calling createScoped or passing scopes to constructor or providing uri to getRequestMetadata."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->createScopedRequired()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->useJwtAccessWithScope:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->serviceAccountUser:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 8
    :cond_3
    invoke-super {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->createScopedRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->useJwtAccessWithScope:Z

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0, v1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->createSelfSignedJwtCredentials(Ljava/net/URI;)Lcom/google/auth/oauth2/JwtCredentials;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->createSelfSignedJwtCredentials(Ljava/net/URI;)Lcom/google/auth/oauth2/JwtCredentials;

    move-result-object p1

    .line 12
    :goto_1
    invoke-virtual {p1, v1}, Lcom/google/auth/oauth2/JwtCredentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->quotaProjectId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;->addQuotaProjectIdToRequestMetadata(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getRequestMetadata(Ljava/net/URI;Ljava/util/concurrent/Executor;Lcom/google/auth/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->useJwtAccessWithScope:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p3}, Lcom/google/auth/Credentials;->blockingGetToCallback(Ljava/net/URI;Lcom/google/auth/a;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/auth/oauth2/OAuth2Credentials;->getRequestMetadata(Ljava/net/URI;Ljava/util/concurrent/Executor;Lcom/google/auth/a;)V

    :goto_0
    return-void
.end method

.method public final getScopes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    return-object v0
.end method

.method public final getServiceAccountUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->serviceAccountUser:Ljava/lang/String;

    return-object v0
.end method

.method public final getTokenServerUri()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->tokenServerUri:Ljava/net/URI;

    return-object v0
.end method

.method public getUseJwtAccessWithScope()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->useJwtAccessWithScope:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKey:Ljava/security/PrivateKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactoryClassName:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->tokenServerUri:Ljava/net/URI;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultScopes:Ljava/util/Collection;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->quotaProjectId:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->lifetime:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->useJwtAccessWithScope:Z

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultRetriesEnabled:Z

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public idTokenWithAudience(Ljava/lang/String;Ljava/util/List;)Lcom/google/auth/oauth2/IdToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/auth/oauth2/IdTokenProvider$Option;",
            ">;)",
            "Lcom/google/auth/oauth2/IdToken;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p2, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    .line 2
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/i;

    invoke-interface {v0}, Lcom/google/api/client/util/i;->a()J

    move-result-wide v2

    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->tokenServerUri:Ljava/net/URI;

    .line 4
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p2

    move-object v5, p1

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->createAssertionForIdToken(Lg5/c;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/google/api/client/util/GenericData;

    invoke-direct {v0}, Lcom/google/api/client/util/GenericData;-><init>()V

    const-string v1, "grant_type"

    const-string v2, "urn:ietf:params:oauth:grant-type:jwt-bearer"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    const-string v1, "assertion"

    .line 8
    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 9
    new-instance p1, Lcom/google/api/client/http/x;

    invoke-direct {p1, v0}, Lcom/google/api/client/http/x;-><init>(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactory:Ls5/b;

    invoke-interface {v0}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/s;->c()Lcom/google/api/client/http/n;

    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/api/client/http/d;

    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->tokenServerUri:Ljava/net/URI;

    invoke-direct {v1, v2}, Lcom/google/api/client/http/d;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/http/n;->b(Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    move-result-object p1

    .line 12
    new-instance v0, Lg5/e;

    invoke-direct {v0, p2}, Lg5/e;-><init>(Lg5/c;)V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/m;->r(Lcom/google/api/client/util/w;)Lcom/google/api/client/http/m;

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const-class p2, Lcom/google/api/client/util/GenericData;

    invoke-virtual {p1, p2}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/util/GenericData;

    const-string p2, "id_token"

    const-string v0, "Error parsing token refresh response. "

    .line 15
    invoke-static {p1, p2, v0}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/google/auth/oauth2/IdToken;->create(Ljava/lang/String;)Lcom/google/auth/oauth2/IdToken;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 17
    new-instance p2, Ljava/io/IOException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getIssuer()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Error getting id token for service account: %s, iss: %s"

    .line 19
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public jwtWithClaims(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/auth/oauth2/JwtClaims;->newBuilder()Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getIssuer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtClaims$a;->d(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtClaims$a;->e(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/auth/oauth2/JwtCredentials;->newBuilder()Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/auth/oauth2/JwtCredentials$b;->j(Ljava/security/PrivateKey;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/auth/oauth2/JwtCredentials$b;->k(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/google/auth/oauth2/JwtClaims$a;->a()Lcom/google/auth/oauth2/JwtClaims;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/JwtClaims;->merge(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtClaims;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->h(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/i;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/JwtCredentials$b;->g(Lcom/google/api/client/util/i;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->a()Lcom/google/auth/oauth2/JwtCredentials;

    move-result-object p1

    return-object p1
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    .line 2
    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/i;

    invoke-interface {v1}, Lcom/google/api/client/util/i;->a()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->createAssertion(Lg5/c;J)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/google/api/client/util/GenericData;

    invoke-direct {v2}, Lcom/google/api/client/util/GenericData;-><init>()V

    const-string v3, "grant_type"

    const-string v4, "urn:ietf:params:oauth:grant-type:jwt-bearer"

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    const-string v3, "assertion"

    .line 6
    invoke-virtual {v2, v3, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 7
    new-instance v1, Lcom/google/api/client/http/x;

    invoke-direct {v1, v2}, Lcom/google/api/client/http/x;-><init>(Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactory:Ls5/b;

    invoke-interface {v2}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/s;->c()Lcom/google/api/client/http/n;

    move-result-object v2

    .line 9
    new-instance v3, Lcom/google/api/client/http/d;

    iget-object v4, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->tokenServerUri:Ljava/net/URI;

    invoke-direct {v3, v4}, Lcom/google/api/client/http/d;-><init>(Ljava/net/URI;)V

    invoke-virtual {v2, v3, v1}, Lcom/google/api/client/http/n;->b(Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    move-result-object v1

    .line 10
    iget-boolean v2, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultRetriesEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/api/client/http/m;->q(I)Lcom/google/api/client/http/m;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1, v3}, Lcom/google/api/client/http/m;->q(I)Lcom/google/api/client/http/m;

    .line 13
    :goto_0
    new-instance v2, Lg5/e;

    invoke-direct {v2, v0}, Lg5/e;-><init>(Lg5/c;)V

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/m;->r(Lcom/google/api/client/util/w;)Lcom/google/api/client/http/m;

    .line 14
    new-instance v0, Lcom/google/api/client/util/l$a;

    invoke-direct {v0}, Lcom/google/api/client/util/l$a;-><init>()V

    const/16 v2, 0x3e8

    .line 15
    invoke-virtual {v0, v2}, Lcom/google/api/client/util/l$a;->b(I)Lcom/google/api/client/util/l$a;

    move-result-object v0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    .line 16
    invoke-virtual {v0, v4, v5}, Lcom/google/api/client/util/l$a;->d(D)Lcom/google/api/client/util/l$a;

    move-result-object v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 17
    invoke-virtual {v0, v4, v5}, Lcom/google/api/client/util/l$a;->c(D)Lcom/google/api/client/util/l$a;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/api/client/util/l$a;->a()Lcom/google/api/client/util/l;

    move-result-object v0

    .line 19
    new-instance v2, Lcom/google/api/client/http/e;

    invoke-direct {v2, v0}, Lcom/google/api/client/http/e;-><init>(Lcom/google/api/client/util/c;)V

    new-instance v0, Lcom/google/auth/oauth2/ServiceAccountCredentials$a;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$a;-><init>(Lcom/google/auth/oauth2/ServiceAccountCredentials;)V

    .line 20
    invoke-virtual {v2, v0}, Lcom/google/api/client/http/e;->b(Lcom/google/api/client/http/e$a;)Lcom/google/api/client/http/e;

    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/api/client/http/m;->u(Lcom/google/api/client/http/t;)Lcom/google/api/client/http/m;

    const-string v0, "Error getting access token for service account: %s, iss: %s"

    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 22
    :try_start_0
    invoke-virtual {v1}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/GenericData;

    const-string v1, "access_token"

    const-string v2, "Error parsing token refresh response. "

    .line 24
    invoke-static {v0, v1, v2}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "expires_in"

    .line 25
    invoke-static {v0, v3, v2}, Lcom/google/auth/oauth2/n;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 26
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/i;

    invoke-interface {v2}, Lcom/google/api/client/util/i;->a()J

    move-result-wide v2

    int-to-long v4, v0

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    add-long/2addr v2, v4

    .line 27
    new-instance v0, Lcom/google/auth/oauth2/AccessToken;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v4}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v0

    :catch_0
    move-exception v1

    .line 28
    new-instance v5, Ljava/io/IOException;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-direct {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getIssuer()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v1

    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-direct {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getIssuer()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Lcom/google/auth/oauth2/l;->b(Lcom/google/api/client/http/HttpResponseException;Ljava/lang/String;)Lcom/google/auth/oauth2/l;

    move-result-object v0

    throw v0
.end method

.method public sign([B)[B
    .locals 2

    :try_start_0
    const-string v0, "SHA256withRSA"

    .line 1
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 4
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 5
    :goto_0
    new-instance v0, Lcom/google/auth/ServiceAccountSigner$SigningException;

    const-string v1, "Failed to sign the provided bytes"

    invoke-direct {v0, v1, p1}, Lcom/google/auth/ServiceAccountSigner$SigningException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/GoogleCredentials$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->toBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->toBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/auth/oauth2/ServiceAccountCredentials$b;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/ServiceAccountCredentials$b;-><init>(Lcom/google/auth/oauth2/ServiceAccountCredentials;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientId:Ljava/lang/String;

    const-string v2, "clientId"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->clientEmail:Ljava/lang/String;

    const-string v2, "clientEmail"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyId:Ljava/lang/String;

    const-string v2, "privateKeyId"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->transportFactoryClassName:Ljava/lang/String;

    const-string v2, "transportFactoryClassName"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->tokenServerUri:Ljava/net/URI;

    const-string v2, "tokenServerUri"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->scopes:Ljava/util/Collection;

    const-string v2, "scopes"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultScopes:Ljava/util/Collection;

    const-string v2, "defaultScopes"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->serviceAccountUser:Ljava/lang/String;

    const-string v2, "serviceAccountUser"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->quotaProjectId:Ljava/lang/String;

    const-string v2, "quotaProjectId"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->lifetime:I

    const-string v2, "lifetime"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->useJwtAccessWithScope:Z

    const-string v2, "useJwtAccessWithScope"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/auth/oauth2/ServiceAccountCredentials;->defaultRetriesEnabled:Z

    const-string v2, "defaultRetriesEnabled"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
