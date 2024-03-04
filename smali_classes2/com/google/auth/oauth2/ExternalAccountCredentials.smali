.class public abstract Lcom/google/auth/oauth2/ExternalAccountCredentials;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"

# interfaces
.implements Lcom/google/auth/oauth2/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/ExternalAccountCredentials$b;,
        Lcom/google/auth/oauth2/ExternalAccountCredentials$c;
    }
.end annotation


# static fields
.field private static final CLOUD_PLATFORM_SCOPE:Ljava/lang/String; = "https://www.googleapis.com/auth/cloud-platform"

.field static final EXTERNAL_ACCOUNT_FILE_TYPE:Ljava/lang/String; = "external_account"


# instance fields
.field private final audience:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;

.field private final clientSecret:Ljava/lang/String;

.field private final credentialSource:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

.field private environmentProvider:Lcom/google/auth/oauth2/k;

.field protected final impersonatedCredentials:Lcom/google/auth/oauth2/ImpersonatedCredentials;

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

.field private final serviceAccountImpersonationUrl:Ljava/lang/String;

.field private final subjectTokenType:Ljava/lang/String;

.field private final tokenInfoUrl:Ljava/lang/String;

.field private final tokenUrl:Ljava/lang/String;

.field protected transient transportFactory:Ls5/b;

.field private final transportFactoryClassName:Ljava/lang/String;

.field private final workforcePoolUserProject:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/auth/oauth2/ExternalAccountCredentials$b;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>()V

    .line 23
    iget-object v0, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->j:Ls5/b;

    const-class v1, Ls5/b;

    sget-object v2, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    .line 24
    invoke-static {v1, v2}, Lcom/google/auth/oauth2/OAuth2Credentials;->getFromServiceLoader(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls5/b;

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->transportFactory:Ls5/b;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->transportFactoryClassName:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->audience:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->subjectTokenType:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->tokenUrl:Ljava/lang/String;

    .line 30
    iget-object v1, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->h:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    invoke-static {v1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    iput-object v1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->credentialSource:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    .line 31
    iget-object v1, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->tokenInfoUrl:Ljava/lang/String;

    .line 32
    iget-object v1, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->serviceAccountImpersonationUrl:Ljava/lang/String;

    .line 33
    iget-object v2, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->quotaProjectId:Ljava/lang/String;

    .line 34
    iget-object v2, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->clientId:Ljava/lang/String;

    .line 35
    iget-object v2, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->clientSecret:Ljava/lang/String;

    .line 36
    iget-object v2, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->o:Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 37
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v2, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->o:Ljava/util/Collection;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "https://www.googleapis.com/auth/cloud-platform"

    .line 39
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->scopes:Ljava/util/Collection;

    .line 41
    iget-object v2, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->i:Lcom/google/auth/oauth2/k;

    if-nez v2, :cond_2

    .line 42
    invoke-static {}, Lcom/google/auth/oauth2/t;->b()Lcom/google/auth/oauth2/t;

    move-result-object v2

    :cond_2
    iput-object v2, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->environmentProvider:Lcom/google/auth/oauth2/k;

    .line 43
    iget-object p1, p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->workforcePoolUserProject:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 44
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->isWorkforcePoolConfiguration()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 45
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The workforce_pool_user_project parameter should only be provided for a Workforce Pool configuration."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->validateTokenUrl(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 47
    invoke-static {v1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->validateServiceAccountImpersonationInfoUrl(Ljava/lang/String;)V

    .line 48
    :cond_5
    invoke-direct {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->initializeImpersonatedCredentials()Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->impersonatedCredentials:Lcom/google/auth/oauth2/ImpersonatedCredentials;

    return-void
.end method

.method protected constructor <init>(Ls5/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/ExternalAccountCredentials$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls5/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/auth/oauth2/ExternalAccountCredentials$c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/google/auth/oauth2/ExternalAccountCredentials;-><init>(Ls5/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/ExternalAccountCredentials$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lcom/google/auth/oauth2/k;)V

    return-void
.end method

.method protected constructor <init>(Ls5/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/auth/oauth2/ExternalAccountCredentials$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lcom/google/auth/oauth2/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls5/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/auth/oauth2/ExternalAccountCredentials$c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/auth/oauth2/k;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>()V

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

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->transportFactory:Ls5/b;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->transportFactoryClassName:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->audience:Ljava/lang/String;

    .line 8
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->subjectTokenType:Ljava/lang/String;

    .line 9
    invoke-static {p4}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->tokenUrl:Ljava/lang/String;

    .line 10
    invoke-static {p5}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->credentialSource:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    .line 11
    iput-object p6, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->tokenInfoUrl:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->serviceAccountImpersonationUrl:Ljava/lang/String;

    .line 13
    iput-object p8, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->quotaProjectId:Ljava/lang/String;

    .line 14
    iput-object p9, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->clientId:Ljava/lang/String;

    .line 15
    iput-object p10, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->clientSecret:Ljava/lang/String;

    if-eqz p11, :cond_0

    .line 16
    invoke-interface {p11}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "https://www.googleapis.com/auth/cloud-platform"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p11

    :cond_1
    iput-object p11, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->scopes:Ljava/util/Collection;

    if-nez p12, :cond_2

    .line 17
    invoke-static {}, Lcom/google/auth/oauth2/t;->b()Lcom/google/auth/oauth2/t;

    move-result-object p12

    :cond_2
    iput-object p12, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->environmentProvider:Lcom/google/auth/oauth2/k;

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->workforcePoolUserProject:Ljava/lang/String;

    .line 19
    invoke-static {p4}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->validateTokenUrl(Ljava/lang/String;)V

    if-eqz p7, :cond_3

    .line 20
    invoke-static {p7}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->validateServiceAccountImpersonationInfoUrl(Ljava/lang/String;)V

    .line 21
    :cond_3
    invoke-direct {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->initializeImpersonatedCredentials()Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->impersonatedCredentials:Lcom/google/auth/oauth2/ImpersonatedCredentials;

    return-void
.end method

.method static synthetic access$000(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->quotaProjectId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->audience:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Lcom/google/auth/oauth2/k;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->environmentProvider:Lcom/google/auth/oauth2/k;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->workforcePoolUserProject:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->subjectTokenType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->tokenUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->tokenInfoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->serviceAccountImpersonationUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Lcom/google/auth/oauth2/ExternalAccountCredentials$c;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->credentialSource:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->clientId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->clientSecret:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/google/auth/oauth2/ExternalAccountCredentials;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->scopes:Ljava/util/Collection;

    return-object p0
.end method

.method static fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/ExternalAccountCredentials;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ls5/b;",
            ")",
            "Lcom/google/auth/oauth2/ExternalAccountCredentials;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "audience"

    .line 3
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "subject_token_type"

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "token_url"

    .line 5
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "credential_source"

    .line 6
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "service_account_impersonation_url"

    .line 7
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "token_info_url"

    .line 8
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "client_id"

    .line 9
    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "client_secret"

    .line 10
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "quota_project_id"

    .line 11
    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "workforce_pool_user_project"

    .line 12
    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 13
    invoke-static {v3}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->isAwsCredential(Ljava/util/Map;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 14
    invoke-static {}, Lcom/google/auth/oauth2/AwsCredentials;->newBuilder()Lcom/google/auth/oauth2/AwsCredentials$c;

    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->k(Ls5/b;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->g(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->o(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    .line 18
    invoke-virtual {p0, v2}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->q(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    .line 19
    invoke-virtual {p0, v5}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->p(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    new-instance p1, Lcom/google/auth/oauth2/AwsCredentials$b;

    invoke-direct {p1, v3}, Lcom/google/auth/oauth2/AwsCredentials$b;-><init>(Ljava/util/Map;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->j(Lcom/google/auth/oauth2/ExternalAccountCredentials$c;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    .line 21
    invoke-virtual {p0, v4}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->n(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    .line 22
    invoke-virtual {p0, v8}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->l(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    .line 23
    invoke-virtual {p0, v6}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->h(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    .line 24
    invoke-virtual {p0, v7}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->i(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->f()Lcom/google/auth/oauth2/ExternalAccountCredentials;

    move-result-object p0

    return-object p0

    .line 26
    :cond_0
    invoke-static {}, Lcom/google/auth/oauth2/IdentityPoolCredentials;->newBuilder()Lcom/google/auth/oauth2/IdentityPoolCredentials$a;

    move-result-object v9

    .line 27
    invoke-virtual {v9, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->k(Ls5/b;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    .line 28
    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->g(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    .line 29
    invoke-virtual {p1, v1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->o(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v2}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->q(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    .line 31
    invoke-virtual {p1, v5}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->p(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    new-instance v0, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;

    invoke-direct {v0, v3}, Lcom/google/auth/oauth2/IdentityPoolCredentials$b;-><init>(Ljava/util/Map;)V

    .line 32
    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->j(Lcom/google/auth/oauth2/ExternalAccountCredentials$c;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    .line 33
    invoke-virtual {p1, v4}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->n(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    .line 34
    invoke-virtual {p1, v8}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->l(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    .line 35
    invoke-virtual {p1, v6}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->h(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v7}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->i(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->r(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->f()Lcom/google/auth/oauth2/ExternalAccountCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;)Lcom/google/auth/oauth2/ExternalAccountCredentials;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/n;->e:Ls5/b;

    invoke-static {p0, v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->fromStream(Ljava/io/InputStream;Ls5/b;)Lcom/google/auth/oauth2/ExternalAccountCredentials;

    move-result-object p0

    return-object p0
.end method

.method public static fromStream(Ljava/io/InputStream;Ls5/b;)Lcom/google/auth/oauth2/ExternalAccountCredentials;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lg5/e;

    sget-object v1, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-direct {v0, v1}, Lg5/e;-><init>(Lg5/c;)V

    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-class v2, Lg5/b;

    .line 6
    invoke-virtual {v0, p0, v1, v2}, Lg5/e;->a(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg5/b;

    .line 7
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->fromJson(Ljava/util/Map;Ls5/b;)Lcom/google/auth/oauth2/ExternalAccountCredentials;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 8
    :goto_0
    new-instance p1, Lcom/google/auth/oauth2/i;

    const-string v0, "An invalid input stream was provided."

    invoke-direct {p1, v0, p0}, Lcom/google/auth/oauth2/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private initializeImpersonatedCredentials()Lcom/google/auth/oauth2/ImpersonatedCredentials;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->serviceAccountImpersonationUrl:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/google/auth/oauth2/AwsCredentials;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p0

    check-cast v0, Lcom/google/auth/oauth2/AwsCredentials;

    .line 4
    invoke-static {v0}, Lcom/google/auth/oauth2/AwsCredentials;->newBuilder(Lcom/google/auth/oauth2/AwsCredentials;)Lcom/google/auth/oauth2/AwsCredentials$c;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->n(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->f()Lcom/google/auth/oauth2/ExternalAccountCredentials;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/google/auth/oauth2/IdentityPoolCredentials;

    .line 8
    invoke-static {v0}, Lcom/google/auth/oauth2/IdentityPoolCredentials;->newBuilder(Lcom/google/auth/oauth2/IdentityPoolCredentials;)Lcom/google/auth/oauth2/IdentityPoolCredentials$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->n(Ljava/lang/String;)Lcom/google/auth/oauth2/ExternalAccountCredentials$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ExternalAccountCredentials$b;->f()Lcom/google/auth/oauth2/ExternalAccountCredentials;

    move-result-object v0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->serviceAccountImpersonationUrl:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->extractTargetPrincipal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->newBuilder()Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->s(Lcom/google/auth/oauth2/GoogleCredentials;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    iget-object v2, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->transportFactory:Ls5/b;

    .line 15
    invoke-virtual {v0, v2}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->o(Ls5/b;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->t(Ljava/lang/String;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->scopes:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->r(Ljava/util/List;)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    const/16 v1, 0xe10

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->p(I)Lcom/google/auth/oauth2/ImpersonatedCredentials$b;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ImpersonatedCredentials$b;->g()Lcom/google/auth/oauth2/ImpersonatedCredentials;

    move-result-object v0

    return-object v0
.end method

.method private static isAwsCredential(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "environment_id"

    .line 1
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "aws"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isValidUrl(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/regex/Pattern;

    .line 6
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method static validateServiceAccountImpersonationInfoUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "^[^\\.\\s\\/\\\\]+\\.iamcredentials\\.googleapis\\.com$"

    .line 2
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "^iamcredentials\\.googleapis\\.com$"

    .line 3
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "^iamcredentials\\.[^\\.\\s\\/\\\\]+\\.googleapis\\.com$"

    .line 4
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "^[^\\.\\s\\/\\\\]+\\-iamcredentials\\.googleapis\\.com$"

    .line 5
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0, p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->isValidUrl(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided service account impersonation URL is invalid."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateTokenUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "^[^\\.\\s\\/\\\\]+\\.sts\\.googleapis\\.com$"

    .line 2
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "^sts\\.googleapis\\.com$"

    .line 3
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "^sts\\.[^\\.\\s\\/\\\\]+\\.googleapis\\.com$"

    .line 4
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "^[^\\.\\s\\/\\\\]+\\-sts\\.googleapis\\.com$"

    .line 5
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0, p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->isValidUrl(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provided token URL is invalid."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected exchangeExternalCredentialForAccessToken(Lcom/google/auth/oauth2/r;)Lcom/google/auth/oauth2/AccessToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->impersonatedCredentials:Lcom/google/auth/oauth2/ImpersonatedCredentials;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ImpersonatedCredentials;->refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->tokenUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->transportFactory:Ls5/b;

    .line 4
    invoke-interface {v1}, Ls5/b;->a()Lcom/google/api/client/http/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/http/s;->c()Lcom/google/api/client/http/n;

    move-result-object v1

    .line 5
    invoke-static {v0, p1, v1}, Lcom/google/auth/oauth2/q;->d(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;)Lcom/google/auth/oauth2/q$b;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->isWorkforcePoolConfiguration()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lg5/b;

    invoke-direct {v1}, Lg5/b;-><init>()V

    .line 8
    sget-object v2, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-virtual {v1, v2}, Lg5/b;->h(Lg5/c;)V

    .line 9
    iget-object v2, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->workforcePoolUserProject:Ljava/lang/String;

    const-string v3, "userProject"

    invoke-virtual {v1, v3, v2}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Lg5/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/q$b;->b(Ljava/lang/String;)Lcom/google/auth/oauth2/q$b;

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/google/auth/oauth2/r;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/google/auth/oauth2/r;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/q$b;->b(Ljava/lang/String;)Lcom/google/auth/oauth2/q$b;

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/google/auth/oauth2/q$b;->a()Lcom/google/auth/oauth2/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/auth/oauth2/q;->c()Lcom/google/auth/oauth2/s;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/auth/oauth2/s;->a()Lcom/google/auth/oauth2/AccessToken;

    move-result-object p1

    return-object p1
.end method

.method public getAudience()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->audience:Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialSource()Lcom/google/auth/oauth2/ExternalAccountCredentials$c;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->credentialSource:Lcom/google/auth/oauth2/ExternalAccountCredentials$c;

    return-object v0
.end method

.method getEnvironmentProvider()Lcom/google/auth/oauth2/k;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->environmentProvider:Lcom/google/auth/oauth2/k;

    return-object v0
.end method

.method public getQuotaProjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->quotaProjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;
    .locals 1
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

    .line 2
    invoke-super {p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->quotaProjectId:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/auth/oauth2/GoogleCredentials;->addQuotaProjectIdToRequestMetadata(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getRequestMetadata(Ljava/net/URI;Ljava/util/concurrent/Executor;Lcom/google/auth/a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/ExternalAccountCredentials$a;

    invoke-direct {v0, p0, p3}, Lcom/google/auth/oauth2/ExternalAccountCredentials$a;-><init>(Lcom/google/auth/oauth2/ExternalAccountCredentials;Lcom/google/auth/a;)V

    invoke-super {p0, p1, p2, v0}, Lcom/google/auth/oauth2/OAuth2Credentials;->getRequestMetadata(Ljava/net/URI;Ljava/util/concurrent/Executor;Lcom/google/auth/a;)V

    return-void
.end method

.method public getScopes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->scopes:Ljava/util/Collection;

    return-object v0
.end method

.method public getServiceAccountImpersonationUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->serviceAccountImpersonationUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectTokenType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->subjectTokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenInfoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->tokenInfoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->tokenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkforcePoolUserProject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->workforcePoolUserProject:Ljava/lang/String;

    return-object v0
.end method

.method public isWorkforcePoolConfiguration()Z
    .locals 2

    const-string v0, "^//iam.googleapis.com/locations/.+/workforcePools/.+/providers/.+$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/auth/oauth2/ExternalAccountCredentials;->workforcePoolUserProject:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/auth/oauth2/ExternalAccountCredentials;->getAudience()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract retrieveSubjectToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
