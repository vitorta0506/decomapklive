.class public Lcom/google/auth/oauth2/IdentityPoolCredentials;
.super Lcom/google/auth/oauth2/ExternalAccountCredentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/IdentityPoolCredentials$a;,
        Lcom/google/auth/oauth2/IdentityPoolCredentials$b;
    }
.end annotation


# instance fields
.field private final identityPoolCredentialSource:Lcom/google/auth/oauth2/IdentityPoolCredentials$b;


# direct methods
.method constructor <init>(Lcom/google/auth/oauth2/IdentityPoolCredentials$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;-><init>(Lcom/google/auth/oauth2/ExternalAccountCredentials$b;)V

    .line 2
    iget-object p1, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->h:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    check-cast p1, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    iput-object p1, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials;->identityPoolCredentialSource:Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    return-void
.end method

.method private getSubjectTokenFromMetadataServer()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->transportFactory:Ls5/b;

    .line 2
    invoke-interface {v0}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/api/client/http/s;->c()Lcom/google/api/client/http/n;

    move-result-object v0

    new-instance v1, Lcom/google/api/client/http/d;

    iget-object v2, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials;->identityPoolCredentialSource:Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    .line 4
    invoke-static {v2}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->b(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/d;)Lcom/google/api/client/http/m;

    move-result-object v0

    .line 5
    new-instance v1, Lg5/e;

    sget-object v2, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-direct {v1, v2}, Lg5/e;-><init>(Lg5/c;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/m;->r(Lcom/google/api/client/util/w;)Lcom/google/api/client/http/m;

    .line 6
    iget-object v1, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials;->identityPoolCredentialSource:Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    invoke-static {v1}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->e(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    new-instance v1, Lcom/google/api/client/http/j;

    invoke-direct {v1}, Lcom/google/api/client/http/j;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials;->identityPoolCredentialSource:Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    invoke-static {v2}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->f(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/client/util/GenericData;->putAll(Ljava/util/Map;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/m;->p(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/m;

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/IdentityPoolCredentials;->parseToken(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/io/IOException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Error getting subject token from metadata server: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/IdentityPoolCredentials$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/IdentityPoolCredentials$a;

    invoke-direct {v0}, Lcom/google/auth/oauth2/IdentityPoolCredentials$a;-><init>()V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/auth/oauth2/IdentityPoolCredentials;)Lcom/google/auth/oauth2/IdentityPoolCredentials$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/auth/oauth2/IdentityPoolCredentials$a;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/IdentityPoolCredentials$a;-><init>(Lcom/google/auth/oauth2/IdentityPoolCredentials;)V

    return-object v0
.end method

.method private parseToken(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials;->identityPoolCredentialSource:Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->c(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    move-result-object v0

    sget-object v1, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;->a:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$a;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3
    invoke-static {v0}, Lcom/google/common/io/e;->f(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lg5/e;

    sget-object v1, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-direct {v0, v1}, Lg5/e;-><init>(Lg5/c;)V

    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-class v2, Lg5/b;

    .line 6
    invoke-virtual {v0, p1, v1, v2}, Lg5/e;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/b;

    .line 7
    iget-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials;->identityPoolCredentialSource:Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->d(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials;->identityPoolCredentialSource:Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->d(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid subject token field name. No subject token was found."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private retrieveSubjectTokenFromCredentialFile()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials;->identityPoolCredentialSource:Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->b(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 2
    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/nio/file/LinkOption;

    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Lcom/google/auth/oauth2/IdentityPoolCredentials;->parseToken(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error when attempting to read the subject token from the credential file."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "Invalid credential location. The file at %s does not exist."

    .line 6
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public bridge synthetic createScoped(Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/IdentityPoolCredentials;->createScoped(Ljava/util/Collection;)Lcom/google/auth/oauth2/IdentityPoolCredentials;

    move-result-object p1

    return-object p1
.end method

.method public createScoped(Ljava/util/Collection;)Lcom/google/auth/oauth2/IdentityPoolCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/IdentityPoolCredentials;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/auth/oauth2/IdentityPoolCredentials;

    .line 3
    invoke-static {p0}, Lcom/google/auth/oauth2/IdentityPoolCredentials;->newBuilder(Lcom/google/auth/oauth2/IdentityPoolCredentials;)Lcom/google/auth/oauth2/IdentityPoolCredentials$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->m(Ljava/util/Collection;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    check-cast p1, Lcom/google/auth/oauth2/IdentityPoolCredentials$a;

    invoke-direct {v0, p1}, Lcom/google/auth/oauth2/IdentityPoolCredentials;-><init>(Lcom/google/auth/oauth2/IdentityPoolCredentials$a;)V

    return-object v0
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/IdentityPoolCredentials;->retrieveSubjectToken()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getSubjectTokenType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/auth/oauth2/r;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/google/auth/oauth2/r$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getAudience()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/r$b;->b(Ljava/lang/String;)Lcom/google/auth/oauth2/r$b;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getScopes()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/google/auth/oauth2/r$b;->d(Ljava/util/List;)Lcom/google/auth/oauth2/r$b;

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/auth/oauth2/r$b;->a()Lcom/google/auth/oauth2/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->exchangeExternalCredentialForAccessToken(Lcom/google/auth/oauth2/r;)Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public retrieveSubjectToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/IdentityPoolCredentials;->identityPoolCredentialSource:Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;->a(Lcom/google/auth/oauth2/IdentityPoolCredentials$b;)Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;

    move-result-object v0

    sget-object v1, Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;->a:Lcom/google/auth/oauth2/IdentityPoolCredentials$b$b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/IdentityPoolCredentials;->retrieveSubjectTokenFromCredentialFile()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/auth/oauth2/IdentityPoolCredentials;->getSubjectTokenFromMetadataServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
