.class public Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;
.super Lcom/google/auth/Credentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;
    }
.end annotation


# static fields
.field private static final CLOCK_SKEW:J

.field static final JWT_ACCESS_PREFIX:Ljava/lang/String; = "Bearer "

.field static final LIFE_SPAN_SECS:J

.field private static final serialVersionUID:J = -0x64f5d52f1af73d35L


# instance fields
.field private final clientEmail:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;

.field transient clock:Lcom/google/api/client/util/i;

.field private transient credentialsCache:Lcom/google/common/cache/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/g<",
            "Lcom/google/auth/oauth2/JwtClaims;",
            "Lcom/google/auth/oauth2/JwtCredentials;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultAudience:Ljava/net/URI;

.field private final privateKey:Ljava/security/PrivateKey;

.field private final privateKeyId:Ljava/lang/String;

.field private final quotaProjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->LIFE_SPAN_SECS:J

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->CLOCK_SKEW:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/auth/Credentials;-><init>()V

    .line 4
    sget-object v0, Lcom/google/api/client/util/i;->a:Lcom/google/api/client/util/i;

    iput-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clock:Lcom/google/api/client/util/i;

    .line 5
    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientId:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    .line 7
    invoke-static {p3}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/PrivateKey;

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 8
    iput-object p4, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKeyId:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->defaultAudience:Ljava/net/URI;

    .line 10
    invoke-direct {p0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->createCache()Lcom/google/common/cache/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->credentialsCache:Lcom/google/common/cache/g;

    .line 11
    iput-object p6, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->quotaProjectId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKeyId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/security/PrivateKey;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKey:Ljava/security/PrivateKey;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->defaultAudience:Ljava/net/URI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->quotaProjectId:Ljava/lang/String;

    return-object p0
.end method

.method private createCache()Lcom/google/common/cache/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/g<",
            "Lcom/google/auth/oauth2/JwtClaims;",
            "Lcom/google/auth/oauth2/JwtCredentials;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/cache/d;->y()Lcom/google/common/cache/d;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/d;->w(J)Lcom/google/common/cache/d;

    move-result-object v0

    sget-wide v1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->LIFE_SPAN_SECS:J

    sget-wide v3, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->CLOCK_SKEW:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/d;->g(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;

    move-result-object v0

    new-instance v1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$b;

    invoke-direct {v1, p0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$b;-><init>(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->C(Lcom/google/common/base/z;)Lcom/google/common/cache/d;

    move-result-object v0

    new-instance v1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$a;

    invoke-direct {v1, p0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$a;-><init>(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/common/cache/d;->b(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/g;

    move-result-object v0

    return-object v0
.end method

.method static fromJson(Ljava/util/Map;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->fromJson(Ljava/util/Map;Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    move-result-object p0

    return-object p0
.end method

.method static fromJson(Ljava/util/Map;Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/net/URI;",
            ")",
            "Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "client_id"

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v0, "client_email"

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "private_key"

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "private_key_id"

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const-string v0, "quota_project_id"

    .line 6
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    move-object v5, p1

    .line 7
    invoke-static/range {v1 .. v6}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Error reading service account credential from JSON, expecting  \'client_id\', \'client_email\', \'private_key\' and \'private_key_id\'."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    move-result-object p0

    return-object p0
.end method

.method static fromPkcs8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-static {p2}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->privateKeyFromPkcs8(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 4
    new-instance p2, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;)V

    return-object p2
.end method

.method public static fromStream(Ljava/io/InputStream;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->fromStream(Ljava/io/InputStream;Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    .line 4
    new-instance v1, Lg5/e;

    invoke-direct {v1, v0}, Lg5/e;-><init>(Lg5/c;)V

    .line 5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-class v2, Lg5/b;

    .line 6
    invoke-virtual {v1, p0, v0, v2}, Lg5/e;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg5/b;

    const-string v0, "type"

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "service_account"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-static {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->fromJson(Ljava/util/Map;Ljava/net/URI;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p1, v2

    const/4 v0, 0x1

    aput-object v1, p1, v0

    const-string v0, "Error reading credentials from stream, \'type\' value \'%s\' not recognized. Expecting \'%s\'."

    .line 11
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Error reading credentials from stream, \'type\' field not specified."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;

    invoke-direct {v0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;-><init>()V

    return-object v0
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
    sget-object p1, Lcom/google/api/client/util/i;->a:Lcom/google/api/client/util/i;

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clock:Lcom/google/api/client/util/i;

    .line 3
    invoke-direct {p0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->createCache()Lcom/google/common/cache/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->credentialsCache:Lcom/google/common/cache/g;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientId:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKey:Ljava/security/PrivateKey;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 5
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKeyId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKeyId:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->defaultAudience:Ljava/net/URI;

    iget-object v2, p1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->defaultAudience:Ljava/net/URI;

    .line 7
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->quotaProjectId:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->quotaProjectId:Ljava/lang/String;

    .line 8
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->getClientEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticationType()Ljava/lang/String;
    .locals 1

    const-string v0, "JWTAccess"

    return-object v0
.end method

.method public final getClientEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public final getPrivateKeyId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaProjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->quotaProjectId:Ljava/lang/String;

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

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->defaultAudience:Ljava/net/URI;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "JwtAccess requires Audience uri to be passed in or the defaultAudience to be specified"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/auth/oauth2/JwtClaims;->newBuilder()Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtClaims$a;->c(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtClaims$a;->d(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtClaims$a;->e(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/auth/oauth2/JwtClaims$a;->a()Lcom/google/auth/oauth2/JwtClaims;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->credentialsCache:Lcom/google/common/cache/g;

    invoke-interface {v1, v0}, Lcom/google/common/cache/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auth/oauth2/JwtCredentials;

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/JwtCredentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->quotaProjectId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;->addQuotaProjectIdToRequestMetadata(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/common/util/concurrent/UncheckedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/google/common/base/y;->k(Ljava/lang/Throwable;)V

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateJwtAccess threw an unchecked exception that couldn\'t be rethrown"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-class v1, Ljava/io/IOException;

    invoke-static {v0, v1}, Lcom/google/common/base/y;->i(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "generateJwtAccess threw an unexpected checked exception"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getRequestMetadata(Ljava/net/URI;Ljava/util/concurrent/Executor;Lcom/google/auth/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p3}, Lcom/google/auth/Credentials;->blockingGetToCallback(Ljava/net/URI;Lcom/google/auth/a;)V

    return-void
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

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKey:Ljava/security/PrivateKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKeyId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->defaultAudience:Ljava/net/URI;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->quotaProjectId:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public jwtWithClaims(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/auth/oauth2/JwtClaims;->newBuilder()Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtClaims$a;->d(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtClaims$a;->e(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->defaultAudience:Ljava/net/URI;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/JwtClaims$a;->c(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/auth/oauth2/JwtCredentials;->newBuilder()Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKey:Ljava/security/PrivateKey;

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/auth/oauth2/JwtCredentials$b;->j(Ljava/security/PrivateKey;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKeyId:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/auth/oauth2/JwtCredentials$b;->k(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/google/auth/oauth2/JwtClaims$a;->a()Lcom/google/auth/oauth2/JwtClaims;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/JwtClaims;->merge(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtClaims;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->h(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    sget-wide v0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->LIFE_SPAN_SECS:J

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/JwtCredentials$b;->i(Ljava/lang/Long;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clock:Lcom/google/api/client/util/i;

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/JwtCredentials$b;->g(Lcom/google/api/client/util/i;)Lcom/google/auth/oauth2/JwtCredentials$b;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtCredentials$b;->a()Lcom/google/auth/oauth2/JwtCredentials;

    move-result-object p1

    return-object p1
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->credentialsCache:Lcom/google/common/cache/g;

    invoke-interface {v0}, Lcom/google/common/cache/c;->v0()V

    return-void
.end method

.method public sign([B)[B
    .locals 2

    :try_start_0
    const-string v0, "SHA256withRSA"

    .line 1
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->getPrivateKey()Ljava/security/PrivateKey;

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

.method public toBuilder()Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;-><init>(Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientId:Ljava/lang/String;

    const-string v2, "clientId"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->clientEmail:Ljava/lang/String;

    const-string v2, "clientEmail"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->privateKeyId:Ljava/lang/String;

    const-string v2, "privateKeyId"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->defaultAudience:Ljava/net/URI;

    const-string v2, "defaultAudience"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->quotaProjectId:Ljava/lang/String;

    const-string v2, "quotaProjectId"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
