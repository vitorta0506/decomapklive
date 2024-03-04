.class public Lcom/google/auth/oauth2/ImpersonatedCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/IdTokenProvider;
.implements Lcom/google/auth/oauth2/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
    }
.end annotation


# static fields
.field private static final CLOUD_PLATFORM_SCOPE:Ljava/lang/String; = "https://www.googleapis.com/auth/cloud-platform"

.field private static final DEFAULT_LIFETIME_IN_SECONDS:I = 0xe10

.field private static final IAM_ACCESS_TOKEN_ENDPOINT:Ljava/lang/String; = "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/%s:generateAccessToken"

.field private static final RFC3339:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final TWELVE_HOURS_IN_SECONDS:I = 0xa8c0

.field private static final serialVersionUID:J = -0x1d9ada3aa6f6992fL


# instance fields
.field private delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lifetime:I

.field private quotaProjectId:Ljava/lang/String;

.field private scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

.field private targetPrincipal:Ljava/lang/String;

.field private transient transportFactory:Ls5/b;

.field private final transportFactoryClassName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/auth/oauth2/ImpersonatedCredentials$b;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->l()Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 4
    invoke-virtual {p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->targetPrincipal:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->h()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->k()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->scopes:Ljava/util/List;

    .line 7
    invoke-virtual {p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->j()I

    move-result v0

    iput v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->lifetime:I

    .line 8
    invoke-virtual {p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->i()Ls5/b;

    move-result-object v0

    const-class v1, Ls5/b;

    sget-object v2, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    .line 9
    invoke-static {v1, v2}, Lcom/google/auth/oauth2/OAuth2Credentials;->getFromServiceLoader(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls5/b;

    iput-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactory:Ls5/b;

    .line 11
    invoke-static {p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->f(Lcom/google/auth/oauth2/ImpersonatedCredentials$b;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->quotaProjectId:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactory:Ls5/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactoryClassName:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    if-nez p1, :cond_0

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->scopes:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 16
    iget p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->lifetime:I

    const v0, 0xa8c0

    if-gt p1, v0, :cond_1

    return-void

    .line 17
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "lifetime must be less than or equal to 43200"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Scopes cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/auth/oauth2/ImpersonatedCredentials$b;Lcom/google/auth/oauth2/ImpersonatedCredentials$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials;-><init>(Lcom/google/auth/oauth2/ImpersonatedCredentials$b;)V

    return-void
.end method

.method public static create(Lcom/google/auth/oauth2/GoogleCredentials;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/google/auth/oauth2/ImpersonatedCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auth/oauth2/GoogleCredentials;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/google/auth/oauth2/ImpersonatedCredentials;"
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->newBuilder()Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->s(Lcom/google/auth/oauth2/GoogleCredentials;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->t(Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->n(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p3}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->r(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 23
    invoke-virtual {p0, p4}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->p(I)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->g()Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/auth/oauth2/GoogleCredentials;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILs5/b;)Lcom/google/auth/oauth2/ImpersonatedCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auth/oauth2/GoogleCredentials;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ls5/b;",
            ")",
            "Lcom/google/auth/oauth2/ImpersonatedCredentials;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->newBuilder()Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->s(Lcom/google/auth/oauth2/GoogleCredentials;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->t(Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->n(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p3}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->r(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p4}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->p(I)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p5}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->o(Ls5/b;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->g()Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/auth/oauth2/GoogleCredentials;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILs5/b;Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auth/oauth2/GoogleCredentials;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ls5/b;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/auth/oauth2/ImpersonatedCredentials;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->newBuilder()Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->s(Lcom/google/auth/oauth2/GoogleCredentials;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->t(Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 12
    invoke-virtual {p0, p2}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->n(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 13
    invoke-virtual {p0, p3}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->r(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p4}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->p(I)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p5}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->o(Ls5/b;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 16
    invoke-virtual {p0, p6}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->q(Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->g()Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object p0

    return-object p0
.end method

.method static extractTargetPrincipal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, ":generateAccessToken"

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to determine target principal from service account impersonation URL."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/ImpersonatedCredentials;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ls5/b;",
            ")",
            "Lcom/google/auth/oauth2/ImpersonatedCredentials;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "delegates"

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "service_account_impersonation_url"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "source_credentials"

    .line 6
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v3, "type"

    .line 7
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "quota_project_id"

    .line 8
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 9
    invoke-static {v1}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->extractTargetPrincipal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "authorized_user"

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    invoke-static {v2, p1}, Lcom/google/auth/oauth2/UserCredentials;->fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/UserCredentials;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v4, "service_account"

    .line 12
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-static {v2, p1}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object v2

    .line 14
    :goto_1
    invoke-static {}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->newBuilder()Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v2}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->s(Lcom/google/auth/oauth2/GoogleCredentials;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->t(Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->n(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->r(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    const/16 v1, 0xe10

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->p(I)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->o(Ls5/b;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p1

    .line 21
    invoke-virtual {p1, p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->q(Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->g()Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object p0

    return-object p0

    .line 23
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v3, p1, v0

    const-string v0, "A credential of type %s is not supported as source credential for impersonation."

    .line 24
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 25
    :goto_2
    new-instance p1, Lcom/google/auth/oauth2/i;

    const-string v0, "An invalid input stream was provided."

    invoke-direct {p1, v0, p0}, Lcom/google/auth/oauth2/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
    .locals 1

    new-instance v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    invoke-direct {v0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;-><init>()V

    return-object v0
.end method


# virtual methods
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

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->toBuilder()Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->r(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p1

    iget v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->lifetime:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->p(I)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->n(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactory:Ls5/b;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->o(Ls5/b;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->quotaProjectId:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->q(Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->g()Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object p1

    return-object p1
.end method

.method public createScopedRequired()Z
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->scopes:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;

    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    iget-object v2, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->targetPrincipal:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->targetPrincipal:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    iget-object v2, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    .line 5
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->scopes:Ljava/util/List;

    iget-object v2, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->scopes:Ljava/util/List;

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->lifetime:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->lifetime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactoryClassName:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactoryClassName:Ljava/lang/String;

    .line 8
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->quotaProjectId:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/auth/oauth2/ImpersonatedCredentials;->quotaProjectId:Ljava/lang/String;

    .line 9
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->targetPrincipal:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->quotaProjectId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1, v0}, Lcom/google/auth/oauth2/GoogleCredentials;->addQuotaProjectIdToRequestMetadata(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getDelegates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    return-object v0
.end method

.method getLifetime()I
    .locals 1

    iget v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->lifetime:I

    return v0
.end method

.method public getQuotaProjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->quotaProjectId:Ljava/lang/String;

    return-object v0
.end method

.method getScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->scopes:Ljava/util/List;

    return-object v0
.end method

.method public getSourceCredentials()Lcom/google/auth/oauth2/GoogleCredentials;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->targetPrincipal:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->scopes:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->lifetime:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->quotaProjectId:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3
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

    if-eqz p2, :cond_0

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/IdTokenProvider$Option;->INCLUDE_EMAIL:Lcom/google/auth/oauth2/IdTokenProvider$Option;

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->getAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    iget-object p2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactory:Ls5/b;

    .line 4
    invoke-interface {p2}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v2

    iget-object p2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    const-string v3, "delegates"

    .line 5
    invoke-static {v3, p2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    move-object v3, p1

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/google/auth/oauth2/m;->a(Ljava/lang/String;Lcom/google/auth/Credentials;Lcom/google/api/client/http/s;Ljava/lang/String;ZLjava/util/Map;)Lcom/google/auth/oauth2/IdToken;

    move-result-object p1

    return-object p1
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    invoke-virtual {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getAccessToken()Lcom/google/auth/oauth2/AccessToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    const-string v1, "https://www.googleapis.com/auth/cloud-platform"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/GoogleCredentials;->createScoped(Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    invoke-virtual {v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->refreshIfExpired()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    iget-object v0, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactory:Ls5/b;

    invoke-interface {v0}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v0

    .line 6
    new-instance v1, Lg5/e;

    sget-object v2, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-direct {v1, v2}, Lg5/e;-><init>(Lg5/c;)V

    .line 7
    new-instance v2, Ls5/a;

    iget-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    invoke-direct {v2, v3}, Ls5/a;-><init>(Lcom/google/auth/Credentials;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/api/client/http/s;->c()Lcom/google/api/client/http/n;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 9
    iget-object v5, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->targetPrincipal:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/%s:generateAccessToken"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v4, Lcom/google/api/client/http/d;

    invoke-direct {v4, v3}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v6, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    iget-object v8, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->scopes:Ljava/util/List;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->lifetime:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "s"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v5, "delegates"

    const-string v7, "scope"

    const-string v9, "lifetime"

    .line 12
    invoke-static/range {v5 .. v10}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 13
    new-instance v5, Lf5/a;

    invoke-virtual {v1}, Lg5/e;->b()Lg5/c;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lf5/a;-><init>(Lg5/c;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0, v4, v5}, Lcom/google/api/client/http/n;->b(Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    move-result-object v0

    .line 15
    invoke-virtual {v2, v0}, Ls5/a;->b(Lcom/google/api/client/http/m;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/m;->r(Lcom/google/api/client/util/w;)Lcom/google/api/client/http/m;

    .line 17
    :try_start_1
    invoke-virtual {v0}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 18
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/util/GenericData;

    .line 19
    invoke-virtual {v0}, Lcom/google/api/client/http/p;->a()V

    const-string v0, "accessToken"

    const-string v2, "Expected to find an accessToken"

    .line 20
    invoke-static {v1, v0, v2}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "expireTime"

    const-string v3, "Expected to find an expireTime"

    .line 21
    invoke-static {v1, v2, v3}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 23
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 24
    new-instance v2, Lcom/google/auth/oauth2/AccessToken;

    invoke-direct {v2, v0, v1}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing expireTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 26
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error requesting access token"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 27
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to refresh sourceCredentials"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTransportFactory(Ls5/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactory:Ls5/b;

    return-void
.end method

.method public sign([B)[B
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->getAccount()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    iget-object v2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactory:Ls5/b;

    .line 2
    invoke-interface {v2}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v2

    iget-object v3, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    const-string v4, "delegates"

    .line 3
    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 4
    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/auth/oauth2/m;->c(Ljava/lang/String;Lcom/google/auth/Credentials;Lcom/google/api/client/http/s;[BLjava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/GoogleCredentials$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->toBuilder()Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/auth/oauth2/ImpersonatedCredentials$b;
    .locals 3

    .line 3
    new-instance v0, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    iget-object v2, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->targetPrincipal:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;-><init>(Lcom/google/auth/oauth2/GoogleCredentials;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/auth/oauth2/OAuth2Credentials$d;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->toBuilder()Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->sourceCredentials:Lcom/google/auth/oauth2/GoogleCredentials;

    const-string v2, "sourceCredentials"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->targetPrincipal:Ljava/lang/String;

    const-string v2, "targetPrincipal"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->delegates:Ljava/util/List;

    const-string v2, "delegates"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->scopes:Ljava/util/List;

    const-string v2, "scopes"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->lifetime:I

    const-string v2, "lifetime"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->transportFactoryClassName:Ljava/lang/String;

    const-string v2, "transportFactoryClassName"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/ImpersonatedCredentials;->quotaProjectId:Ljava/lang/String;

    const-string v2, "quotaProjectId"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
