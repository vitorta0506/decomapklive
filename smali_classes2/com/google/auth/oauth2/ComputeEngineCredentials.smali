.class public Lcom/google/auth/oauth2/ComputeEngineCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/IdTokenProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/ComputeEngineCredentials$b;
    }
.end annotation


# static fields
.field static final COMPUTE_EXPIRATION_MARGIN:Ljava/time/Duration;

.field static final COMPUTE_PING_CONNECTION_TIMEOUT_MS:I = 0x1f4

.field static final COMPUTE_REFRESH_MARGIN:Ljava/time/Duration;

.field static final DEFAULT_METADATA_SERVER_URL:Ljava/lang/String; = "http://metadata.google.internal"

.field private static final GOOGLE:Ljava/lang/String; = "Google"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field static final MAX_COMPUTE_PING_TRIES:I = 0x3

.field private static final METADATA_FLAVOR:Ljava/lang/String; = "Metadata-Flavor"

.field private static final PARSE_ERROR_ACCOUNT:Ljava/lang/String; = "Error parsing service account response. "

.field private static final PARSE_ERROR_PREFIX:Ljava/lang/String; = "Error parsing token refresh response. "

.field static final SIGN_BLOB_URL_FORMAT:Ljava/lang/String; = "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/%s:signBlob"

.field private static final serialVersionUID:J = -0x3916010c6cd3607bL


# instance fields
.field private final scopes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient serviceAccountEmail:Ljava/lang/String;

.field private transient transportFactory:Ls5/b;

.field private final transportFactoryClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x3

    .line 1
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->COMPUTE_EXPIRATION_MARGIN:Ljava/time/Duration;

    const-wide/16 v0, 0x4

    .line 2
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->COMPUTE_REFRESH_MARGIN:Ljava/time/Duration;

    .line 3
    const-class v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ls5/b;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls5/b;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->COMPUTE_REFRESH_MARGIN:Ljava/time/Duration;

    sget-object v1, Lcom/google/auth/oauth2/ComputeEngineCredentials;->COMPUTE_EXPIRATION_MARGIN:Ljava/time/Duration;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>(Lcom/google/auth/oauth2/AccessToken;Ljava/time/Duration;Ljava/time/Duration;)V

    .line 3
    const-class v0, Ls5/b;

    sget-object v1, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    .line 4
    invoke-static {v0, v1}, Lcom/google/auth/oauth2/OAuth2Credentials;->getFromServiceLoader(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls5/b;

    iput-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactory:Ls5/b;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactoryClassName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 7
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move-object p2, p3

    :cond_1
    if-nez p2, :cond_2

    .line 8
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->scopes:Ljava/util/Collection;

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, ""

    .line 10
    filled-new-array {p2, v2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 11
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->scopes:Ljava/util/Collection;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ls5/b;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/auth/oauth2/ComputeEngineCredentials$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/auth/oauth2/ComputeEngineCredentials;-><init>(Ls5/b;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/auth/oauth2/ComputeEngineCredentials;)Ls5/b;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactory:Ls5/b;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/auth/oauth2/ComputeEngineCredentials;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->scopes:Ljava/util/Collection;

    return-object p0
.end method

.method public static create()Lcom/google/auth/oauth2/ComputeEngineCredentials;
    .locals 2

    new-instance v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/auth/oauth2/ComputeEngineCredentials;-><init>(Ls5/b;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method private getDefaultServiceAccount()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getServiceAccountsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getMetadataResponse(Ljava/lang/String;)Lcom/google/api/client/http/p;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->f()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x194

    if-eq v1, v4, :cond_2

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->b()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/GenericData;

    const-string v1, "default"

    const-string v2, "Error parsing service account response. "

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/auth/oauth2/n;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "email"

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Empty content from metadata token server request."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0}, Lcom/google/api/client/http/p;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "Unexpected Error code %s trying to get service accounts from Compute Engine metadata: %s"

    .line 10
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 11
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Error code %s trying to get service accounts from Compute Engine metadata. This may be because the virtual machine instance does not have permission scopes specified."

    .line 13
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIdentityDocumentUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/auth/oauth2/j;->d:Lcom/google/auth/oauth2/j;

    invoke-static {v1}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getMetadataServerUrl(Lcom/google/auth/oauth2/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/computeMetadata/v1/instance/service-accounts/default/identity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMetadataResponse(Ljava/lang/String;)Lcom/google/api/client/http/p;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/api/client/http/d;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactory:Ls5/b;

    .line 3
    invoke-interface {p1}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/http/s;->c()Lcom/google/api/client/http/n;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/d;)Lcom/google/api/client/http/m;

    move-result-object p1

    .line 4
    new-instance v0, Lg5/e;

    sget-object v1, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-direct {v0, v1}, Lg5/e;-><init>(Lg5/c;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/m;->r(Lcom/google/api/client/util/w;)Lcom/google/api/client/http/m;

    .line 6
    invoke-virtual {p1}, Lcom/google/api/client/http/m;->e()Lcom/google/api/client/http/j;

    move-result-object v0

    const-string v1, "Metadata-Flavor"

    const-string v2, "Google"

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/j;->r(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/j;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/m;->t(Z)Lcom/google/api/client/http/m;

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ComputeEngineCredentials cannot find the metadata server. This is likely because code is not running on Google Compute Engine."

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getMetadataServerUrl()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/auth/oauth2/j;->d:Lcom/google/auth/oauth2/j;

    invoke-static {v0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getMetadataServerUrl(Lcom/google/auth/oauth2/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadataServerUrl(Lcom/google/auth/oauth2/j;)Ljava/lang/String;
    .locals 2

    const-string v0, "GCE_METADATA_HOST"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "http://metadata.google.internal"

    return-object p0
.end method

.method public static getServiceAccountsUrl()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/auth/oauth2/j;->d:Lcom/google/auth/oauth2/j;

    invoke-static {v1}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getMetadataServerUrl(Lcom/google/auth/oauth2/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/computeMetadata/v1/instance/service-accounts/?recursive=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenServerEncodedUrl()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/auth/oauth2/j;->d:Lcom/google/auth/oauth2/j;

    invoke-static {v0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getTokenServerEncodedUrl(Lcom/google/auth/oauth2/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTokenServerEncodedUrl(Lcom/google/auth/oauth2/j;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getMetadataServerUrl(Lcom/google/auth/oauth2/j;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/computeMetadata/v1/instance/service-accounts/default/token"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/ComputeEngineCredentials$b;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;

    invoke-direct {v0}, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;-><init>()V

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
    iget-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactoryClassName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls5/b;

    iput-object p1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactory:Ls5/b;

    return-void
.end method

.method static runningOnComputeEngine(Ls5/b;Lcom/google/auth/oauth2/j;)Z
    .locals 8

    const-string v0, "Google"

    const-string v1, "Metadata-Flavor"

    const-string v2, "NO_GCE_CHECK"

    .line 1
    invoke-virtual {p1, v2}, Lcom/google/auth/oauth2/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 2
    :cond_0
    new-instance v2, Lcom/google/api/client/http/d;

    invoke-static {p1}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getMetadataServerUrl(Lcom/google/auth/oauth2/j;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    :goto_0
    const/4 v4, 0x3

    if-gt p1, v4, :cond_1

    .line 3
    :try_start_0
    invoke-interface {p0}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/api/client/http/s;->c()Lcom/google/api/client/http/n;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/api/client/http/n;->a(Lcom/google/api/client/http/d;)Lcom/google/api/client/http/m;

    move-result-object v4

    const/16 v5, 0x1f4

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/api/client/http/m;->n(I)Lcom/google/api/client/http/m;

    .line 5
    invoke-virtual {v4}, Lcom/google/api/client/http/m;->e()Lcom/google/api/client/http/j;

    move-result-object v5

    invoke-virtual {v5, v1, v0}, Lcom/google/api/client/http/j;->r(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/j;

    .line 6
    invoke-virtual {v4}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-virtual {v4}, Lcom/google/api/client/http/p;->d()Lcom/google/api/client/http/j;

    move-result-object v5

    .line 8
    invoke-static {v5, v1, v0}, Lcom/google/auth/oauth2/n;->a(Lcom/google/api/client/http/j;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v4}, Lcom/google/api/client/http/p;->a()V

    return v5

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/google/api/client/http/p;->a()V

    .line 10
    throw v5
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v4

    .line 11
    sget-object v5, Lcom/google/auth/oauth2/ComputeEngineCredentials;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Encountered an unexpected exception when determining if we are running on Google Compute Engine."

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    sget-object p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->LOGGER:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v0, "Failed to detect whether we are running on Google Compute Engine."

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public createScoped(Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/GoogleCredentials;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    iget-object v1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactory:Ls5/b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/auth/oauth2/ComputeEngineCredentials;-><init>(Ls5/b;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method public createScoped(Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 2
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
    new-instance v0, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    iget-object v1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactory:Ls5/b;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/auth/oauth2/ComputeEngineCredentials;-><init>(Ls5/b;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method createTokenUrlWithScopes()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/client/http/d;

    invoke-static {}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getTokenServerEncodedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->scopes:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x2c

    .line 3
    invoke-static {v1}, Lcom/google/common/base/i;->g(C)Lcom/google/common/base/i;

    move-result-object v1

    iget-object v2, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->scopes:Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/google/common/base/i;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scopes"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/http/d;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/d;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/http/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/ComputeEngineCredentials;

    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactoryClassName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactoryClassName:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->scopes:Ljava/util/Collection;

    iget-object p1, p1, Lcom/google/auth/oauth2/ComputeEngineCredentials;->scopes:Ljava/util/Collection;

    .line 4
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAccount()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->serviceAccountEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getDefaultServiceAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->serviceAccountEmail:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get service account"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->serviceAccountEmail:Ljava/lang/String;

    return-object v0
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

    iget-object v0, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->scopes:Ljava/util/Collection;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactoryClassName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public idTokenWithAudience(Ljava/lang/String;Ljava/util/List;)Lcom/google/auth/oauth2/IdToken;
    .locals 4
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
    new-instance v0, Lcom/google/api/client/http/d;

    invoke-static {}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getIdentityDocumentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 2
    sget-object v1, Lcom/google/auth/oauth2/IdTokenProvider$Option;->FORMAT_FULL:Lcom/google/auth/oauth2/IdTokenProvider$Option;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "full"

    const-string v3, "format"

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v3, v2}, Lcom/google/api/client/http/d;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/d;

    .line 4
    :cond_0
    sget-object v1, Lcom/google/auth/oauth2/IdTokenProvider$Option;->LICENSES_TRUE:Lcom/google/auth/oauth2/IdTokenProvider$Option;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {v0, v3, v2}, Lcom/google/api/client/http/d;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/d;

    const-string p2, "license"

    const-string v1, "TRUE"

    .line 6
    invoke-virtual {v0, p2, v1}, Lcom/google/api/client/http/d;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/d;

    :cond_1
    const-string p2, "audience"

    .line 7
    invoke-virtual {v0, p2, p1}, Lcom/google/api/client/http/d;->p(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/d;

    .line 8
    invoke-virtual {v0}, Lcom/google/api/client/http/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getMetadataResponse(Ljava/lang/String;)Lcom/google/api/client/http/p;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->b()Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->l()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/google/auth/oauth2/IdToken;->create(Ljava/lang/String;)Lcom/google/auth/oauth2/IdToken;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Empty content from metadata token server request."

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
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->createTokenUrlWithScopes()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getMetadataResponse(Ljava/lang/String;)Lcom/google/api/client/http/p;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->f()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x194

    if-eq v1, v4, :cond_2

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->b()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/GenericData;

    const-string v1, "access_token"

    const-string v2, "Error parsing token refresh response. "

    .line 5
    invoke-static {v0, v1, v2}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "expires_in"

    .line 6
    invoke-static {v0, v3, v2}, Lcom/google/auth/oauth2/n;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/google/auth/oauth2/OAuth2Credentials;->clock:Lcom/google/api/client/util/i;

    invoke-interface {v2}, Lcom/google/api/client/util/i;->a()J

    move-result-wide v2

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 8
    new-instance v0, Lcom/google/auth/oauth2/AccessToken;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v4}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Empty content from metadata token server request."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-virtual {v0}, Lcom/google/api/client/http/p;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "Unexpected Error code %s trying to get security access token from Compute Engine metadata for the default service account: %s"

    .line 12
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 13
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-array v3, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "Error code %s trying to get security access token from Compute Engine metadata for the default service account. This may be because the virtual machine instance does not have permission scopes specified. It is possible to skip checking for Compute Engine metadata by specifying the environment  variable NO_GCE_CHECK=true."

    .line 15
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sign([B)[B
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactory:Ls5/b;

    .line 3
    invoke-interface {v1}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 4
    invoke-static {v0, p0, v1, p1, v2}, Lcom/google/auth/oauth2/m;->c(Ljava/lang/String;Lcom/google/auth/Credentials;Lcom/google/api/client/http/s;[BLjava/util/Map;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/google/auth/ServiceAccountSigner$SigningException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/google/auth/ServiceAccountSigner$SigningException;

    const-string v1, "Signing failed"

    invoke-direct {v0, v1, p1}, Lcom/google/auth/ServiceAccountSigner$SigningException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 6
    throw p1
.end method

.method public toBuilder()Lcom/google/auth/oauth2/ComputeEngineCredentials$b;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/ComputeEngineCredentials$b;-><init>(Lcom/google/auth/oauth2/ComputeEngineCredentials;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/GoogleCredentials$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->toBuilder()Lcom/google/auth/oauth2/ComputeEngineCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ComputeEngineCredentials;->toBuilder()Lcom/google/auth/oauth2/ComputeEngineCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ComputeEngineCredentials;->transportFactoryClassName:Ljava/lang/String;

    const-string v2, "transportFactoryClassName"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
