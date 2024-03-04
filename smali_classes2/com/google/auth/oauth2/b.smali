.class Lcom/google/auth/oauth2/b;
.super Lcom/google/auth/oauth2/GoogleCredentials;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x6d8441798dcf072L


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z

.field private transient c:Ljava/lang/Object;

.field private transient d:Ljava/lang/reflect/Method;

.field private transient e:Ljava/lang/reflect/Method;

.field private transient f:Ljava/lang/reflect/Method;

.field private transient g:Ljava/lang/reflect/Method;

.field private transient h:Ljava/lang/reflect/Method;

.field private transient i:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    goto :goto_2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    .line 5
    :goto_2
    iget-object p1, p0, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/auth/oauth2/b;->b:Z

    .line 6
    invoke-direct {p0}, Lcom/google/auth/oauth2/b;->b()V

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/google/auth/oauth2/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/auth/oauth2/b;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/google/auth/oauth2/GoogleCredentials;-><init>()V

    .line 8
    iget-object v0, p3, Lcom/google/auth/oauth2/b;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/auth/oauth2/b;->c:Ljava/lang/Object;

    .line 9
    iget-object v0, p3, Lcom/google/auth/oauth2/b;->d:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/google/auth/oauth2/b;->d:Ljava/lang/reflect/Method;

    .line 10
    iget-object v0, p3, Lcom/google/auth/oauth2/b;->e:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/google/auth/oauth2/b;->e:Ljava/lang/reflect/Method;

    .line 11
    iget-object p3, p3, Lcom/google/auth/oauth2/b;->f:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/google/auth/oauth2/b;->f:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    goto :goto_2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 14
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    .line 15
    :goto_2
    iget-object p1, p0, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/auth/oauth2/b;->b:Z

    return-void
.end method

.method private b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "getAccessToken"

    :try_start_0
    const-string v1, "com.google.appengine.api.appidentity.AppIdentityServiceFactory"

    .line 1
    invoke-virtual {p0, v1}, Lcom/google/auth/oauth2/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAppIdentityService"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/auth/oauth2/b;->c:Ljava/lang/Object;

    const-string v1, "com.google.appengine.api.appidentity.AppIdentityService"

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/auth/oauth2/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.google.appengine.api.appidentity.AppIdentityService$GetAccessTokenResult"

    .line 5
    invoke-virtual {p0, v2}, Lcom/google/auth/oauth2/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 6
    const-class v6, Ljava/lang/Iterable;

    aput-object v6, v5, v3

    .line 7
    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/google/auth/oauth2/b;->e:Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/b;->d:Ljava/lang/reflect/Method;

    const-string v0, "getExpirationTime"

    new-array v5, v3, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/b;->f:Ljava/lang/reflect/Method;

    const-string v0, "getServiceAccountName"

    new-array v2, v3, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/google/auth/oauth2/b;->c:Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/auth/oauth2/b;->i:Ljava/lang/String;

    const-string v0, "signForApp"

    new-array v2, v4, [Ljava/lang/Class;

    .line 11
    const-class v4, [B

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/b;->g:Ljava/lang/reflect/Method;

    const-string v0, "com.google.appengine.api.appidentity.AppIdentityService$SigningResult"

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/auth/oauth2/b;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSignature"

    new-array v2, v3, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auth/oauth2/b;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 14
    :goto_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Application Default Credentials failed to create the Google App Engine service account credentials. Check that the App Engine SDK is deployed."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    invoke-direct {p0}, Lcom/google/auth/oauth2/b;->b()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
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

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/google/auth/oauth2/b;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/google/auth/oauth2/b;)V

    return-object v0
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
    new-instance v0, Lcom/google/auth/oauth2/b;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/auth/oauth2/b;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/google/auth/oauth2/b;)V

    return-object v0
.end method

.method public createScopedRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/auth/oauth2/b;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/b;

    .line 3
    iget-boolean v0, p0, Lcom/google/auth/oauth2/b;->b:Z

    iget-boolean v2, p1, Lcom/google/auth/oauth2/b;->b:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    iget-object p1, p1, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/auth/oauth2/b;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public refreshAccessToken()Lcom/google/auth/oauth2/AccessToken;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/b;->createScopedRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/auth/oauth2/b;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/google/auth/oauth2/b;->c:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/auth/oauth2/b;->d:Ljava/lang/reflect/Method;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/google/auth/oauth2/b;->f:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 5
    new-instance v2, Lcom/google/auth/oauth2/AccessToken;

    invoke-direct {v2, v1, v0}, Lcom/google/auth/oauth2/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not get the access token."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AppEngineCredentials requires createScoped call before use."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/b;->a:Ljava/util/Collection;

    const-string v2, "scopes"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/auth/oauth2/b;->b:Z

    const-string v2, "scopesRequired"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->e(Ljava/lang/String;Z)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
