.class final Lcom/google/auth/oauth2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/q$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/auth/oauth2/r;

.field private final c:Lcom/google/api/client/http/n;

.field private final d:Lcom/google/api/client/http/j;

.field private final e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;Lcom/google/api/client/http/j;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/auth/oauth2/q;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    .line 5
    iput-object p3, p0, Lcom/google/auth/oauth2/q;->c:Lcom/google/api/client/http/n;

    .line 6
    iput-object p4, p0, Lcom/google/auth/oauth2/q;->d:Lcom/google/api/client/http/j;

    .line 7
    iput-object p5, p0, Lcom/google/auth/oauth2/q;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;Lcom/google/api/client/http/j;Ljava/lang/String;Lcom/google/auth/oauth2/q$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/auth/oauth2/q;-><init>(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;Lcom/google/api/client/http/j;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/google/api/client/util/GenericData;)Lcom/google/auth/oauth2/s;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "access_token"

    const-string v1, "Error parsing token response."

    .line 1
    invoke-static {p1, v0, v1}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "issued_token_type"

    .line 2
    invoke-static {p1, v2, v1}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "token_type"

    .line 3
    invoke-static {p1, v3, v1}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v0, v2, v3}, Lcom/google/auth/oauth2/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/auth/oauth2/s$b;

    move-result-object v0

    const-string v2, "expires_in"

    .line 5
    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {p1, v2, v1}, Lcom/google/auth/oauth2/n;->c(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 7
    invoke-virtual {v0, v2, v3}, Lcom/google/auth/oauth2/s$b;->b(J)Lcom/google/auth/oauth2/s$b;

    :cond_0
    const-string v2, "refresh_token"

    .line 8
    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-static {p1, v2, v1}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Lcom/google/auth/oauth2/s$b;->c(Ljava/lang/String;)Lcom/google/auth/oauth2/s$b;

    :cond_1
    const-string v2, "scope"

    .line 11
    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    invoke-static {p1, v2, v1}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/auth/oauth2/s$b;->d(Ljava/util/List;)Lcom/google/auth/oauth2/s$b;

    .line 14
    :cond_2
    invoke-virtual {v0}, Lcom/google/auth/oauth2/s$b;->a()Lcom/google/auth/oauth2/s;

    move-result-object p1

    return-object p1
.end method

.method private b()Lcom/google/api/client/util/GenericData;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/client/util/GenericData;

    invoke-direct {v0}, Lcom/google/api/client/util/GenericData;-><init>()V

    const-string v1, "grant_type"

    const-string v2, "urn:ietf:params:oauth:grant-type:token-exchange"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    .line 3
    invoke-virtual {v1}, Lcom/google/auth/oauth2/r;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subject_token_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    .line 4
    invoke-virtual {v1}, Lcom/google/auth/oauth2/r;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "subject_token"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    invoke-virtual {v2}, Lcom/google/auth/oauth2/r;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    invoke-virtual {v2}, Lcom/google/auth/oauth2/r;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/16 v2, 0x20

    .line 8
    invoke-static {v2}, Lcom/google/common/base/i;->g(C)Lcom/google/common/base/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/common/base/i;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    .line 10
    invoke-virtual {v1}, Lcom/google/auth/oauth2/r;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    .line 11
    invoke-virtual {v1}, Lcom/google/auth/oauth2/r;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "urn:ietf:params:oauth:token-type:access_token"

    :goto_0
    const-string v2, "requested_token_type"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 13
    iget-object v1, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    invoke-virtual {v1}, Lcom/google/auth/oauth2/r;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    invoke-virtual {v1}, Lcom/google/auth/oauth2/r;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resource"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    invoke-virtual {v1}, Lcom/google/auth/oauth2/r;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    invoke-virtual {v1}, Lcom/google/auth/oauth2/r;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audience"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    invoke-virtual {v1}, Lcom/google/auth/oauth2/r;->i()Z

    move-result v1

    if-nez v1, :cond_5

    .line 18
    iget-object v1, p0, Lcom/google/auth/oauth2/q;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/google/auth/oauth2/q;->e:Ljava/lang/String;

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    :cond_4
    return-object v0

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/google/auth/oauth2/q;->b:Lcom/google/auth/oauth2/r;

    invoke-virtual {v0}, Lcom/google/auth/oauth2/r;->a()Lcom/google/auth/oauth2/a;

    const/4 v0, 0x0

    throw v0
.end method

.method public static d(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;)Lcom/google/auth/oauth2/q$b;
    .locals 2

    new-instance v0, Lcom/google/auth/oauth2/q$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/auth/oauth2/q$b;-><init>(Ljava/lang/String;Lcom/google/auth/oauth2/r;Lcom/google/api/client/http/n;Lcom/google/auth/oauth2/q$a;)V

    return-object v0
.end method

.method private e(Ljava/lang/String;)Lg5/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-virtual {v0, p1}, Lg5/c;->e(Ljava/lang/String;)Lg5/f;

    move-result-object p1

    .line 2
    const-class v0, Lg5/b;

    invoke-virtual {p1, v0}, Lg5/f;->K(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/b;

    return-object p1
.end method


# virtual methods
.method public c()Lcom/google/auth/oauth2/s;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/api/client/http/x;

    invoke-direct {p0}, Lcom/google/auth/oauth2/q;->b()Lcom/google/api/client/util/GenericData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/api/client/http/x;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/google/auth/oauth2/q;->c:Lcom/google/api/client/http/n;

    new-instance v2, Lcom/google/api/client/http/d;

    iget-object v3, p0, Lcom/google/auth/oauth2/q;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/google/api/client/http/n;->b(Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    move-result-object v0

    .line 4
    new-instance v1, Lg5/e;

    sget-object v2, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-direct {v1, v2}, Lg5/e;-><init>(Lg5/c;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/m;->r(Lcom/google/api/client/util/w;)Lcom/google/api/client/http/m;

    .line 5
    iget-object v1, p0, Lcom/google/auth/oauth2/q;->d:Lcom/google/api/client/http/j;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/api/client/http/m;->p(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/m;

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object v0

    .line 8
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/util/GenericData;

    .line 9
    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/q;->a(Lcom/google/api/client/util/GenericData;)Lcom/google/auth/oauth2/s;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponseException;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/auth/oauth2/q;->e(Ljava/lang/String;)Lg5/b;

    move-result-object v0

    const-string v1, "error"

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "error_description"

    .line 12
    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {v0, v2}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_0
    const-string v3, "error_uri"

    .line 14
    invoke-virtual {v0, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 15
    invoke-virtual {v0, v3}, Lcom/google/api/client/util/GenericData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 16
    :cond_2
    new-instance v0, Lcom/google/auth/oauth2/o;

    invoke-direct {v0, v1, v2, v4}, Lcom/google/auth/oauth2/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
