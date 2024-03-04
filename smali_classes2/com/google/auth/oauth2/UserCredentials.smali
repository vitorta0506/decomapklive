.class public Lcom/google/auth/oauth2/UserCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/p;
.implements Lcom/google/auth/oauth2/IdTokenProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/UserCredentials$b;
    }
.end annotation


# static fields
.field private static final GRANT_TYPE:Ljava/lang/String; = "refresh_token"

.field private static final PARSE_ERROR_PREFIX:Ljava/lang/String; = "Error parsing token refresh response. "

.field private static final serialVersionUID:J = -0x429fb8ab9e851888L


# instance fields
.field private final clientId:Ljava/lang/String;

.field private final clientSecret:Ljava/lang/String;

.field private final quotaProjectId:Ljava/lang/String;

.field private final refreshToken:Ljava/lang/String;

.field private final tokenServerUri:Ljava/net/URI;

.field private transient transportFactory:Ls5/b;

.field private final transportFactoryClassName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/AccessToken;Ls5/b;Ljava/net/URI;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p4}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    .line 3
    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials;->clientId:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials;->clientSecret:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/auth/oauth2/UserCredentials;->refreshToken:Ljava/lang/String;

    .line 6
    const-class p1, Ls5/b;

    sget-object p2, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    .line 7
    invoke-static {p1, p2}, Lcom/google/auth/oauth2/OAuth2Credentials;->getFromServiceLoader(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    invoke-static {p5, p1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls5/b;

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials;->transportFactory:Ls5/b;

    if-nez p6, :cond_0

    .line 9
    sget-object p6, Lcom/google/auth/oauth2/n;->a:Ljava/net/URI;

    :cond_0
    iput-object p6, p0, Lcom/google/auth/oauth2/UserCredentials;->tokenServerUri:Ljava/net/URI;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials;->transportFactoryClassName:Ljava/lang/String;

    .line 11
    iput-object p7, p0, Lcom/google/auth/oauth2/UserCredentials;->quotaProjectId:Ljava/lang/String;

    if-nez p4, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string p2, "Either accessToken or refreshToken must not be null"

    .line 12
    invoke-static {p1, p2}, Lcom/google/api/client/util/z;->h(ZLjava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/AccessToken;Ls5/b;Ljava/net/URI;Ljava/lang/String;Lcom/google/auth/oauth2/UserCredentials$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/auth/oauth2/UserCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/AccessToken;Ls5/b;Ljava/net/URI;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/auth/oauth2/UserCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/UserCredentials;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/auth/oauth2/UserCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/UserCredentials;->clientSecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/auth/oauth2/UserCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/UserCredentials;->refreshToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/auth/oauth2/UserCredentials;)Ls5/b;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/UserCredentials;->transportFactory:Ls5/b;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/auth/oauth2/UserCredentials;)Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/UserCredentials;->tokenServerUri:Ljava/net/URI;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/auth/oauth2/UserCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/UserCredentials;->quotaProjectId:Ljava/lang/String;

    return-object p0
.end method

.method private doRefreshAccessToken()Lcom/google/api/client/util/GenericData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->refreshToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/api/client/util/GenericData;

    invoke-direct {v0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->clientId:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 4
    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->clientSecret:Ljava/lang/String;

    const-string v2, "client_secret"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 5
    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->refreshToken:Ljava/lang/String;

    const-string v2, "refresh_token"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    const-string v1, "grant_type"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 7
    new-instance v1, Lcom/google/api/client/http/x;

    invoke-direct {v1, v0}, Lcom/google/api/client/http/x;-><init>(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->transportFactory:Ls5/b;

    invoke-interface {v0}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/s;->c()Lcom/google/api/client/http/n;

    move-result-object v0

    .line 9
    new-instance v2, Lcom/google/api/client/http/d;

    iget-object v3, p0, Lcom/google/auth/oauth2/UserCredentials;->tokenServerUri:Ljava/net/URI;

    invoke-direct {v2, v3}, Lcom/google/api/client/http/d;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/http/n;->b(Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    move-result-object v0

    .line 10
    new-instance v1, Lg5/e;

    sget-object v2, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-direct {v1, v2}, Lg5/e;-><init>(Lg5/c;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/m;->r(Lcom/google/api/client/util/w;)Lcom/google/api/client/http/m;

    .line 11
    :try_start_0
    invoke-virtual {v0}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/GenericData;

    return-object v0

    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/google/auth/oauth2/l;->a(Lcom/google/api/client/http/HttpResponseException;)Lcom/google/auth/oauth2/l;

    move-result-object v0

    throw v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UserCredentials instance cannot refresh because there is no refresh token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/UserCredentials;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ls5/b;",
            ")",
            "Lcom/google/auth/oauth2/UserCredentials;"
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

    const-string v1, "client_secret"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "refresh_token"

    .line 3
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "quota_project_id"

    .line 4
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/google/auth/oauth2/UserCredentials;->newBuilder()Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v0}, Lcom/google/auth/oauth2/UserCredentials$b;->h(Ljava/lang/String;)Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/UserCredentials$b;->i(Ljava/lang/String;)Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/auth/oauth2/UserCredentials$b;->l(Ljava/lang/String;)Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/UserCredentials$b;->g(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/UserCredentials$b;->j(Ls5/b;)Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v1}, Lcom/google/auth/oauth2/UserCredentials$b;->m(Ljava/net/URI;)Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lcom/google/auth/oauth2/UserCredentials$b;->k(Ljava/lang/String;)Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/google/auth/oauth2/UserCredentials$b;->f()Lcom/google/auth/oauth2/UserCredentials;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Error reading user credential from JSON,  expecting \'client_id\', \'client_secret\' and \'refresh_token\'."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromStream(Ljava/io/InputStream;)Lcom/google/auth/oauth2/UserCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    invoke-static {p0, v0}, Lcom/google/auth/oauth2/UserCredentials;->fromStream(Ljava/io/InputStream;Ls5/b;)Lcom/google/auth/oauth2/UserCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;Ls5/b;)Lcom/google/auth/oauth2/UserCredentials;
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

    const-string v1, "authorized_user"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-static {p0, p1}, Lcom/google/auth/oauth2/UserCredentials;->fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/UserCredentials;

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

.method private getUserCredentialsStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg5/b;

    invoke-direct {v0}, Lg5/b;-><init>()V

    const-string v1, "type"

    const-string v2, "authorized_user"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->refreshToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "refresh_token"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->tokenServerUri:Ljava/net/URI;

    if-eqz v1, :cond_1

    const-string v2, "token_server_uri"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->clientId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "client_id"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->clientSecret:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "client_secret"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->quotaProjectId:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->clientSecret:Ljava/lang/String;

    const-string v2, "quota_project"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    sget-object v1, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-virtual {v0, v1}, Lg5/b;->h(Lg5/c;)V

    .line 14
    invoke-virtual {v0}, Lg5/b;->i()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/UserCredentials$b;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/UserCredentials$b;

    invoke-direct {v0}, Lcom/google/auth/oauth2/UserCredentials$b;-><init>()V

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
    iget-object p1, p0, Lcom/google/auth/oauth2/UserCredentials;->transportFactoryClassName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls5/b;

    iput-object p1, p0, Lcom/google/auth/oauth2/UserCredentials;->transportFactory:Ls5/b;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/UserCredentials;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/UserCredentials;

    .line 3
    invoke-super {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->clientId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/UserCredentials;->clientId:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->clientSecret:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/UserCredentials;->clientSecret:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->refreshToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/UserCredentials;->refreshToken:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->tokenServerUri:Ljava/net/URI;

    iget-object v2, p1, Lcom/google/auth/oauth2/UserCredentials;->tokenServerUri:Ljava/net/URI;

    .line 7
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->transportFactoryClassName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/UserCredentials;->transportFactoryClassName:Ljava/lang/String;

    .line 8
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->quotaProjectId:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/auth/oauth2/UserCredentials;->quotaProjectId:Ljava/lang/String;

    .line 9
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
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
    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->quotaProjectId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1, v0}, Lcom/google/auth/oauth2/GoogleCredentials;->addQuotaProjectIdToRequestMetadata(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public final getClientSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getQuotaProjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->quotaProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/UserCredentials;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->clientId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->clientSecret:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->refreshToken:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->tokenServerUri:Ljava/net/URI;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->transportFactoryClassName:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->quotaProjectId:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public idTokenWithAudience(Ljava/lang/String;Ljava/util/List;)Lcom/google/auth/oauth2/IdToken;
    .locals 1
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
    invoke-direct {p0}, Lcom/google/auth/oauth2/UserCredentials;->doRefreshAccessToken()Lcom/google/api/client/util/GenericData;

    move-result-object p1

    const-string p2, "id_token"

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Error parsing token refresh response. "

    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/auth/oauth2/IdToken;->create(Ljava/lang/String;)Lcom/google/auth/oauth2/IdToken;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "UserCredentials can obtain an id token only when authenticated through gcloud running \'gcloud auth login --update-adc\' or \'gcloud auth application-default login\'. The latter form would not work for Cloud Run, but would still generate an id token."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/UserCredentials;->doRefreshAccessToken()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    const-string v1, "access_token"

    const-string v2, "Error parsing token refresh response. "

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "expires_in"

    .line 3
    invoke-static {v0, v3, v2}, Lcom/google/auth/oauth2/n;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/i;

    invoke-interface {v2}, Lcom/google/api/client/util/i;->a()J

    move-result-wide v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 5
    new-instance v0, Lcom/google/auth/oauth2/AccessToken;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v4}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public save(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/auth/oauth2/UserCredentials;->getUserCredentialsStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/auth/oauth2/n;->f(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/GoogleCredentials$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/UserCredentials;->toBuilder()Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/UserCredentials;->toBuilder()Lcom/google/auth/oauth2/UserCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/auth/oauth2/UserCredentials$b;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/auth/oauth2/UserCredentials$b;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/UserCredentials$b;-><init>(Lcom/google/auth/oauth2/UserCredentials;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getRequestMetadataInternal()Ljava/util/Map;

    move-result-object v1

    const-string v2, "requestMetadata"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getAccessToken()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v1

    const-string v2, "temporaryAccess"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->clientId:Ljava/lang/String;

    const-string v2, "clientId"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->refreshToken:Ljava/lang/String;

    const-string v2, "refreshToken"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->tokenServerUri:Ljava/net/URI;

    const-string v2, "tokenServerUri"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->transportFactoryClassName:Ljava/lang/String;

    const-string v2, "transportFactoryClassName"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/UserCredentials;->quotaProjectId:Ljava/lang/String;

    const-string v2, "quotaProjectId"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
