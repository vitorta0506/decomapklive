.class public Ls5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/http/o;
.implements Lcom/google/api/client/http/t;


# static fields
.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lcom/google/auth/Credentials;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ls5/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ls5/a;->b:Ljava/util/logging/Logger;

    const-string v0, "\\s*error\\s*=\\s*\"?invalid_token\"?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ls5/a;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/auth/Credentials;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ls5/a;->a:Lcom/google/auth/Credentials;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/m;Lcom/google/api/client/http/p;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/api/client/http/p;->d()Lcom/google/api/client/http/j;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/api/client/http/j;->j()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Bearer "

    .line 3
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    sget-object p3, Ls5/a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 5
    invoke-virtual {p2}, Lcom/google/api/client/http/p;->f()I

    move-result p2

    const/16 p3, 0x191

    if-ne p2, p3, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    .line 6
    :try_start_0
    iget-object p2, p0, Ls5/a;->a:Lcom/google/auth/Credentials;

    invoke-virtual {p2}, Lcom/google/auth/Credentials;->refresh()V

    .line 7
    invoke-virtual {p0, p1}, Ls5/a;->b(Lcom/google/api/client/http/m;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Ls5/a;->b:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v0, "unable to refresh token"

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return v1
.end method

.method public b(Lcom/google/api/client/http/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lcom/google/api/client/http/m;->u(Lcom/google/api/client/http/t;)Lcom/google/api/client/http/m;

    .line 2
    iget-object v0, p0, Ls5/a;->a:Lcom/google/auth/Credentials;

    invoke-virtual {v0}, Lcom/google/auth/Credentials;->hasRequestMetadata()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/client/http/m;->e()Lcom/google/api/client/http/j;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Lcom/google/api/client/http/m;->j()Lcom/google/api/client/http/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/api/client/http/m;->j()Lcom/google/api/client/http/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/api/client/http/d;->r()Ljava/net/URI;

    move-result-object v1

    .line 6
    :cond_1
    iget-object p1, p0, Ls5/a;->a:Lcom/google/auth/Credentials;

    invoke-virtual {p1, v1}, Lcom/google/auth/Credentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/util/GenericData;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method
