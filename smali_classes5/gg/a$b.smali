.class Lgg/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/auth/Credentials;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgg/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/google/auth/Credentials;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lgg/a$b;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getScopes"

    .line 3
    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lgg/a$b;->d:Ljava/lang/reflect/Method;

    const-string v1, "com.google.auth.oauth2.ServiceAccountJwtAccessCredentials"

    .line 4
    invoke-static {v1, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    const-class v1, Lcom/google/auth/Credentials;

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "newBuilder"

    .line 6
    invoke-virtual {p2, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lgg/a$b;->b:Ljava/lang/reflect/Method;

    .line 7
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "build"

    .line 8
    invoke-virtual {p2, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lgg/a$b;->c:Ljava/lang/reflect/Method;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lgg/a$b;->e:Ljava/util/List;

    new-array v2, v0, [Ljava/lang/Class;

    const-string v3, "getClientId"

    .line 10
    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 11
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "setClientId"

    invoke-virtual {p2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 12
    new-instance v5, Lgg/a$c;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v4, v6}, Lgg/a$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lgg/a$a;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [Ljava/lang/Class;

    const-string v4, "getClientEmail"

    .line 13
    invoke-virtual {p1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "setClientEmail"

    invoke-virtual {p2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 15
    new-instance v5, Lgg/a$c;

    invoke-direct {v5, v2, v4, v6}, Lgg/a$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lgg/a$a;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [Ljava/lang/Class;

    const-string v4, "getPrivateKey"

    .line 16
    invoke-virtual {p1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "setPrivateKey"

    invoke-virtual {p2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 18
    new-instance v5, Lgg/a$c;

    invoke-direct {v5, v2, v4, v6}, Lgg/a$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lgg/a$a;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [Ljava/lang/Class;

    const-string v4, "getPrivateKeyId"

    .line 19
    invoke-virtual {p1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Class;

    .line 20
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "setPrivateKeyId"

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 21
    new-instance v0, Lgg/a$c;

    invoke-direct {v0, p1, p2, v6}, Lgg/a$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lgg/a$a;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/auth/Credentials;)Lcom/google/auth/Credentials;
    .locals 5

    .line 1
    iget-object v0, p0, Lgg/a$b;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lgg/a$b;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/auth/Credentials;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3
    :try_start_1
    iget-object p1, p0, Lgg/a$b;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-object p1, p0, Lgg/a$b;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lgg/a$b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgg/a$c;

    .line 7
    invoke-static {v3, v0, p1}, Lgg/a$c;->a(Lgg/a$c;Lcom/google/auth/Credentials;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v2, p0, Lgg/a$b;->c:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/auth/Credentials;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_1
    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    .line 9
    :goto_2
    invoke-static {}, Lgg/a;->g()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Failed converting service account credential to JWT. This is unexpected"

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
