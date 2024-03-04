.class public Lcom/google/auth/oauth2/GoogleCredentials;
.super Lcom/google/auth/oauth2/OAuth2Credentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/GoogleCredentials$a;
    }
.end annotation


# static fields
.field static final QUOTA_PROJECT_ID_HEADER_KEY:Ljava/lang/String; = "x-goog-user-project"

.field static final SERVICE_ACCOUNT_FILE_TYPE:Ljava/lang/String; = "service_account"

.field static final USER_FILE_TYPE:Ljava/lang/String; = "authorized_user"

.field private static final defaultCredentialsProvider:Lcom/google/auth/oauth2/j;

.field private static final serialVersionUID:J = -0x1522423a5d1ea0dbL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/j;

    invoke-direct {v0}, Lcom/google/auth/oauth2/j;-><init>()V

    sput-object v0, Lcom/google/auth/oauth2/GoogleCredentials;->defaultCredentialsProvider:Lcom/google/auth/oauth2/j;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/auth/oauth2/AccessToken;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;-><init>(Lcom/google/auth/oauth2/AccessToken;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/auth/oauth2/AccessToken;Ljava/time/Duration;Ljava/time/Duration;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/auth/oauth2/OAuth2Credentials;-><init>(Lcom/google/auth/oauth2/AccessToken;Ljava/time/Duration;Ljava/time/Duration;)V

    return-void
.end method

.method static addQuotaProjectIdToRequestMetadata(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-eqz p0, :cond_0

    const-string v1, "x-goog-user-project"

    .line 3
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 5
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    invoke-static {}, Lcom/google/auth/oauth2/GoogleCredentials;->newBuilder()Lcom/google/auth/oauth2/GoogleCredentials$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;->e(Lcom/google/auth/oauth2/AccessToken;)Lcom/google/auth/oauth2/GoogleCredentials$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;->d()Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    invoke-static {p0, v0}, Lcom/google/auth/oauth2/GoogleCredentials;->fromStream(Ljava/io/InputStream;Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 4
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

    if-eqz v0, :cond_4

    const-string v1, "authorized_user"

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-static {p0, p1}, Lcom/google/auth/oauth2/UserCredentials;->fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/UserCredentials;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v2, "service_account"

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-static {p0, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v3, "external_account"

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-static {p0, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/ExternalAccountCredentials;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v3, "impersonated_service_account"

    .line 15
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-static {p0, p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object p0

    return-object p0

    .line 17
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, p1, v3

    const/4 v0, 0x1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    aput-object v2, p1, v0

    const-string v0, "Error reading credentials from stream, \'type\' value \'%s\' not recognized. Expecting \'%s\' or \'%s\'."

    .line 18
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Error reading credentials from stream, \'type\' field not specified."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getApplicationDefault()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    invoke-static {v0}, Lcom/google/auth/oauth2/GoogleCredentials;->getApplicationDefault(Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationDefault(Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/google/auth/oauth2/GoogleCredentials;->defaultCredentialsProvider:Lcom/google/auth/oauth2/j;

    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/j;->b(Ls5/b;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/GoogleCredentials$a;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/GoogleCredentials$a;

    invoke-direct {v0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createDelegated(Ljava/lang/String;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 0

    return-object p0
.end method

.method public createScoped(Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/GoogleCredentials;"
        }
    .end annotation

    return-object p0
.end method

.method public createScoped(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 0
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

    return-object p0
.end method

.method public varargs createScoped([Ljava/lang/String;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;->createScoped(Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object p1

    return-object p1
.end method

.method public createScopedRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createWithCustomRetryStrategy(Z)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 0

    return-object p0
.end method

.method public toBuilder()Lcom/google/auth/oauth2/GoogleCredentials$a;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/auth/oauth2/GoogleCredentials$a;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/GoogleCredentials$a;-><init>(Lcom/google/auth/oauth2/GoogleCredentials;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/GoogleCredentials;->toBuilder()Lcom/google/auth/oauth2/GoogleCredentials$a;

    move-result-object v0

    return-object v0
.end method
