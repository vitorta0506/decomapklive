.class public abstract Ll5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll5/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f()Ll5/l$a;
    .locals 2

    .line 1
    new-instance v0, Ll5/b$b;

    invoke-direct {v0}, Ll5/b$b;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll5/b$b;->f(Ljava/util/List;)Ll5/l$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ll5/l$a;->h(Z)Ll5/l$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/auth/Credentials;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ll5/l;->c()Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/auth/oauth2/GoogleCredentials;->getApplicationDefault()Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Ll5/l;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Ll5/l;->d()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 5
    :cond_2
    instance-of v2, v0, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    .line 7
    invoke-static {}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;->newBuilder()Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getClientEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->b(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->c(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;

    move-result-object v1

    .line 10
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->d(Ljava/security/PrivateKey;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;

    move-result-object v1

    .line 11
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getPrivateKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->e(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->getQuotaProjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->f(Ljava/lang/String;)Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials$c;->a()Lcom/google/auth/oauth2/ServiceAccountJwtAccessCredentials;

    move-result-object v0

    return-object v0

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/google/auth/oauth2/GoogleCredentials;->createScopedRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p0}, Ll5/l;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/GoogleCredentials;->createScoped(Ljava/util/Collection;)Lcom/google/auth/oauth2/GoogleCredentials;

    move-result-object v0

    .line 16
    :cond_4
    invoke-virtual {p0}, Ll5/l;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    if-eqz v1, :cond_5

    .line 17
    check-cast v0, Lcom/google/auth/oauth2/ServiceAccountCredentials;

    .line 18
    invoke-virtual {v0, v4}, Lcom/google/auth/oauth2/ServiceAccountCredentials;->createWithUseJwtAccessWithScope(Z)Lcom/google/auth/oauth2/ServiceAccountCredentials;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract c()Lcom/google/auth/oauth2/GoogleCredentials;
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Z
.end method
