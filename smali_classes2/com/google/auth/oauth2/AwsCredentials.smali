.class public Lcom/google/auth/oauth2/AwsCredentials;
.super Lcom/google/auth/oauth2/ExternalAccountCredentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/AwsCredentials$c;,
        Lcom/google/auth/oauth2/AwsCredentials$b;
    }
.end annotation


# static fields
.field static final AWS_IMDSV2_SESSION_TOKEN_HEADER:Ljava/lang/String; = "x-aws-ec2-metadata-token"

.field static final AWS_IMDSV2_SESSION_TOKEN_TTL:Ljava/lang/String; = "300"

.field static final AWS_IMDSV2_SESSION_TOKEN_TTL_HEADER:Ljava/lang/String; = "x-aws-ec2-metadata-token-ttl-seconds"


# instance fields
.field private final awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;


# direct methods
.method constructor <init>(Lcom/google/auth/oauth2/AwsCredentials$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;-><init>(Lcom/google/auth/oauth2/ExternalAccountCredentials$b;)V

    .line 2
    iget-object p1, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->h:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    check-cast p1, Lcom/google/auth/oauth2/AwsCredentials$b;

    iput-object p1, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    return-void
.end method

.method private buildSubjectToken(Lcom/google/auth/oauth2/e;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/auth/oauth2/e;->b()Ljava/util/Map;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/auth/oauth2/AwsCredentials;->formatTokenHeaderForSts(Ljava/lang/String;Ljava/lang/String;)Lg5/b;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/auth/oauth2/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-static {v2, v0}, Lcom/google/auth/oauth2/AwsCredentials;->formatTokenHeaderForSts(Ljava/lang/String;Ljava/lang/String;)Lg5/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getAudience()Ljava/lang/String;

    move-result-object v0

    const-string v2, "x-goog-cloud-target-resource"

    invoke-static {v2, v0}, Lcom/google/auth/oauth2/AwsCredentials;->formatTokenHeaderForSts(Ljava/lang/String;Ljava/lang/String;)Lg5/b;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lg5/b;

    invoke-direct {v0}, Lg5/b;-><init>()V

    .line 8
    sget-object v2, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-virtual {v0, v2}, Lg5/b;->h(Lg5/c;)V

    const-string v2, "headers"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/google/auth/oauth2/e;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    .line 12
    invoke-static {v1}, Lcom/google/auth/oauth2/AwsCredentials$b;->a(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/google/auth/oauth2/e;->d()Ljava/lang/String;

    move-result-object p1

    const-string v2, "{region}"

    .line 14
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "url"

    .line 15
    invoke-virtual {v0, v1, p1}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v0}, Lg5/b;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static formatTokenHeaderForSts(Ljava/lang/String;Ljava/lang/String;)Lg5/b;
    .locals 2

    .line 1
    new-instance v0, Lg5/b;

    invoke-direct {v0}, Lg5/b;-><init>()V

    .line 2
    sget-object v1, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-virtual {v0, v1}, Lg5/b;->h(Lg5/c;)V

    const-string v1, "key"

    .line 3
    invoke-virtual {v0, v1, p0}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "value"

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/AwsCredentials$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/AwsCredentials$c;

    invoke-direct {v0}, Lcom/google/auth/oauth2/AwsCredentials$c;-><init>()V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/auth/oauth2/AwsCredentials;)Lcom/google/auth/oauth2/AwsCredentials$c;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/auth/oauth2/AwsCredentials$c;

    invoke-direct {v0, p0}, Lcom/google/auth/oauth2/AwsCredentials$c;-><init>(Lcom/google/auth/oauth2/AwsCredentials;)V

    return-object v0
.end method

.method private retrieveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/google/api/client/http/f;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/api/client/http/f;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->transportFactory:Ls5/b;

    invoke-interface {v0}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/s;->c()Lcom/google/api/client/http/n;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/api/client/http/d;

    invoke-direct {v1, p1}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3, v1, p5}, Lcom/google/api/client/http/n;->c(Ljava/lang/String;Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/api/client/http/m;->e()Lcom/google/api/client/http/j;

    move-result-object p3

    .line 6
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, v0, p5}, Lcom/google/api/client/http/j;->r(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/j;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->l()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    new-instance p3, Ljava/io/IOException;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p2, p4, p5

    const-string p2, "Failed to retrieve AWS %s."

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method private retrieveResource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/auth/oauth2/AwsCredentials;->retrieveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/google/api/client/http/f;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method createMetadataRequestHeaders(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auth/oauth2/AwsCredentials$b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/auth/oauth2/AwsCredentials$b;->b(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v6, Lcom/google/auth/oauth2/AwsCredentials$a;

    invoke-direct {v6, p0}, Lcom/google/auth/oauth2/AwsCredentials$a;-><init>(Lcom/google/auth/oauth2/AwsCredentials;)V

    .line 4
    invoke-static {p1}, Lcom/google/auth/oauth2/AwsCredentials$b;->b(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const-string v4, "Session Token"

    const-string v5, "PUT"

    move-object v2, p0

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/google/auth/oauth2/AwsCredentials;->retrieveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/google/api/client/http/f;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "x-aws-ec2-metadata-token"

    .line 6
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public createScoped(Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/auth/oauth2/GoogleCredentials;"
        }
    .end annotation

    new-instance v0, Lcom/google/auth/oauth2/AwsCredentials;

    invoke-static {p0}, Lcom/google/auth/oauth2/AwsCredentials;->newBuilder(Lcom/google/auth/oauth2/AwsCredentials;)Lcom/google/auth/oauth2/AwsCredentials$c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->m(Ljava/util/Collection;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    check-cast p1, Lcom/google/auth/oauth2/AwsCredentials$c;

    invoke-direct {v0, p1}, Lcom/google/auth/oauth2/AwsCredentials;-><init>(Lcom/google/auth/oauth2/AwsCredentials$c;)V

    return-object v0
.end method

.method getAwsRegion(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getEnvironmentProvider()Lcom/google/auth/oauth2/k;

    move-result-object v0

    const-string v1, "AWS_REGION"

    invoke-interface {v0, v1}, Lcom/google/auth/oauth2/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getEnvironmentProvider()Lcom/google/auth/oauth2/k;

    move-result-object v0

    const-string v1, "AWS_DEFAULT_REGION"

    invoke-interface {v0, v1}, Lcom/google/auth/oauth2/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/AwsCredentials$b;->c(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/AwsCredentials$b;->c(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/AwsCredentials$b;->c(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "region"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/auth/oauth2/AwsCredentials;->retrieveResource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to determine the AWS region. The credential source does not contain the region URL."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getAwsSecurityCredentials(Ljava/util/Map;)Lcom/google/auth/oauth2/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/auth/oauth2/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getEnvironmentProvider()Lcom/google/auth/oauth2/k;

    move-result-object v0

    const-string v1, "AWS_ACCESS_KEY_ID"

    invoke-interface {v0, v1}, Lcom/google/auth/oauth2/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getEnvironmentProvider()Lcom/google/auth/oauth2/k;

    move-result-object v1

    const-string v2, "AWS_SECRET_ACCESS_KEY"

    invoke-interface {v1, v2}, Lcom/google/auth/oauth2/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getEnvironmentProvider()Lcom/google/auth/oauth2/k;

    move-result-object v2

    const-string v3, "AWS_SESSION_TOKEN"

    invoke-interface {v2, v3}, Lcom/google/auth/oauth2/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Lcom/google/auth/oauth2/g;

    invoke-direct {p1, v0, v1, v2}, Lcom/google/auth/oauth2/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/AwsCredentials$b;->d(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/AwsCredentials$b;->d(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    invoke-static {v0}, Lcom/google/auth/oauth2/AwsCredentials$b;->d(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAM role"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/auth/oauth2/AwsCredentials;->retrieveResource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    .line 8
    invoke-static {v2}, Lcom/google/auth/oauth2/AwsCredentials$b;->d(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "credentials"

    .line 9
    invoke-direct {p0, v0, v1, p1}, Lcom/google/auth/oauth2/AwsCredentials;->retrieveResource(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object v0, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-virtual {v0, p1}, Lg5/c;->e(Ljava/lang/String;)Lg5/f;

    move-result-object p1

    .line 11
    const-class v0, Lg5/b;

    invoke-virtual {p1, v0}, Lg5/f;->K(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/b;

    const-string v0, "AccessKeyId"

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "SecretAccessKey"

    .line 13
    invoke-virtual {p1, v1}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Token"

    .line 14
    invoke-virtual {p1, v2}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 15
    new-instance v2, Lcom/google/auth/oauth2/g;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/auth/oauth2/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 16
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unable to determine the AWS IAM role name. The credential source does not contain the url field."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getEnv(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/AwsCredentials;->retrieveSubjectToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getSubjectTokenType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/auth/oauth2/r;->n(Ljava/lang/String;Ljava/lang/String;)Lcom/google/auth/oauth2/r$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getAudience()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/r$b;->b(Ljava/lang/String;)Lcom/google/auth/oauth2/r$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getScopes()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/google/auth/oauth2/r$b;->d(Ljava/util/List;)Lcom/google/auth/oauth2/r$b;

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/auth/oauth2/r$b;->a()Lcom/google/auth/oauth2/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->exchangeExternalCredentialForAccessToken(Lcom/google/auth/oauth2/r;)Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public retrieveSubjectToken()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/AwsCredentials;->createMetadataRequestHeaders(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/AwsCredentials;->getAwsRegion(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/AwsCredentials;->getAwsSecurityCredentials(Ljava/util/Map;)Lcom/google/auth/oauth2/g;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getAudience()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x-goog-cloud-target-resource"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v3, p0, Lcom/google/auth/oauth2/AwsCredentials;->awsCredentialSource:Lcom/google/auth/oauth2/AwsCredentials$b;

    .line 7
    invoke-static {v3}, Lcom/google/auth/oauth2/AwsCredentials$b;->a(Lcom/google/auth/oauth2/AwsCredentials$b;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{region}"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    .line 8
    invoke-static {v0, v4, v3, v1}, Lcom/google/auth/oauth2/f;->g(Lcom/google/auth/oauth2/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/auth/oauth2/f$b;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2}, Lcom/google/auth/oauth2/f$b;->b(Ljava/util/Map;)Lcom/google/auth/oauth2/f$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/auth/oauth2/f$b;->a()Lcom/google/auth/oauth2/f;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/auth/oauth2/f;->h()Lcom/google/auth/oauth2/e;

    move-result-object v0

    .line 12
    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/AwsCredentials;->buildSubjectToken(Lcom/google/auth/oauth2/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
