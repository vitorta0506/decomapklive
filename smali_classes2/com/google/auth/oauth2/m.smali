.class Lcom/google/auth/oauth2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;Lcom/google/auth/Credentials;Lcom/google/api/client/http/s;Ljava/lang/String;ZLjava/util/Map;)Lcom/google/auth/oauth2/IdToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/auth/Credentials;",
            "Lcom/google/api/client/http/s;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/google/auth/oauth2/IdToken;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/%s:generateIdToken"

    .line 1
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/google/api/client/http/d;

    invoke-direct {v1, p0}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/google/api/client/util/GenericData;

    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    const-string v3, "audience"

    .line 4
    invoke-virtual {p0, v3, p3}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 5
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "includeEmail"

    invoke-virtual {p0, p4, p3}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 6
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p5, p4}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p3, Lf5/a;

    sget-object p4, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-direct {p3, p4, p0}, Lf5/a;-><init>(Lg5/c;Ljava/lang/Object;)V

    .line 9
    new-instance p0, Ls5/a;

    invoke-direct {p0, p1}, Ls5/a;-><init>(Lcom/google/auth/Credentials;)V

    .line 10
    invoke-virtual {p2, p0}, Lcom/google/api/client/http/s;->d(Lcom/google/api/client/http/o;)Lcom/google/api/client/http/n;

    move-result-object p0

    invoke-virtual {p0, v1, p3}, Lcom/google/api/client/http/n;->b(Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    move-result-object p0

    .line 11
    new-instance p1, Lg5/e;

    invoke-direct {p1, p4}, Lg5/e;-><init>(Lg5/c;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/m;->r(Lcom/google/api/client/util/w;)Lcom/google/api/client/http/m;

    .line 13
    invoke-virtual {p0, v2}, Lcom/google/api/client/http/m;->t(Z)Lcom/google/api/client/http/m;

    .line 14
    invoke-virtual {p0}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lcom/google/api/client/http/p;->f()I

    move-result p1

    const/16 p2, 0x190

    const/4 p3, 0x2

    const-string p4, "Error parsing error message response. "

    if-lt p1, p2, :cond_2

    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    const-class p2, Lcom/google/api/client/util/GenericData;

    invoke-virtual {p0, p2}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/client/util/GenericData;

    const-string p2, "error"

    .line 17
    invoke-static {p0, p2, p4}, Lcom/google/auth/oauth2/n;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string p2, "message"

    .line 18
    invoke-static {p0, p2, p4}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance p2, Ljava/io/IOException;

    new-array p3, p3, [Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    aput-object p0, p3, v0

    const-string p0, "Error code %s trying to getIDToken: %s"

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    const/16 p2, 0xc8

    if-ne p1, p2, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/google/api/client/http/p;->b()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 22
    const-class p1, Lg5/b;

    invoke-virtual {p0, p1}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg5/b;

    const-string p1, "token"

    .line 23
    invoke-static {p0, p1, p4}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    invoke-static {p0}, Lcom/google/auth/oauth2/IdToken;->create(Ljava/lang/String;)Lcom/google/auth/oauth2/IdToken;

    move-result-object p0

    return-object p0

    .line 25
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Empty content from generateIDToken server request."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-array p3, p3, [Ljava/lang/Object;

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-virtual {p0}, Lcom/google/api/client/http/p;->l()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    const-string p0, "Unexpected Error code %s trying to getIDToken: %s"

    .line 28
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static b(Ljava/lang/String;Lcom/google/auth/Credentials;Lcom/google/api/client/http/s;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/auth/Credentials;",
            "Lcom/google/api/client/http/s;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "https://iamcredentials.googleapis.com/v1/projects/-/serviceAccounts/%s:signBlob"

    .line 1
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v1, Lcom/google/api/client/http/d;

    invoke-direct {v1, p0}, Lcom/google/api/client/http/d;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/google/api/client/util/GenericData;

    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    const-string v3, "payload"

    .line 4
    invoke-virtual {p0, v3, p3}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    .line 5
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, v3, p4}, Lcom/google/api/client/util/GenericData;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p3, Lf5/a;

    sget-object p4, Lcom/google/auth/oauth2/n;->f:Lg5/c;

    invoke-direct {p3, p4, p0}, Lf5/a;-><init>(Lg5/c;Ljava/lang/Object;)V

    .line 8
    new-instance p0, Ls5/a;

    invoke-direct {p0, p1}, Ls5/a;-><init>(Lcom/google/auth/Credentials;)V

    .line 9
    invoke-virtual {p2, p0}, Lcom/google/api/client/http/s;->d(Lcom/google/api/client/http/o;)Lcom/google/api/client/http/n;

    move-result-object p0

    invoke-virtual {p0, v1, p3}, Lcom/google/api/client/http/n;->b(Lcom/google/api/client/http/d;Lcom/google/api/client/http/f;)Lcom/google/api/client/http/m;

    move-result-object p0

    .line 10
    new-instance p1, Lg5/e;

    invoke-direct {p1, p4}, Lg5/e;-><init>(Lg5/c;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/m;->r(Lcom/google/api/client/util/w;)Lcom/google/api/client/http/m;

    .line 12
    invoke-virtual {p0, v2}, Lcom/google/api/client/http/m;->t(Z)Lcom/google/api/client/http/m;

    .line 13
    invoke-virtual {p0}, Lcom/google/api/client/http/m;->b()Lcom/google/api/client/http/p;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/google/api/client/http/p;->f()I

    move-result p1

    const/16 p2, 0x190

    const/4 p3, 0x2

    if-lt p1, p2, :cond_2

    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    const-class p2, Lcom/google/api/client/util/GenericData;

    invoke-virtual {p0, p2}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/client/util/GenericData;

    const-string p2, "error"

    const-string p4, "Error parsing error message response. "

    .line 16
    invoke-static {p0, p2, p4}, Lcom/google/auth/oauth2/n;->d(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    const-string p2, "message"

    .line 17
    invoke-static {p0, p2, p4}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    new-instance p2, Ljava/io/IOException;

    new-array p3, p3, [Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    aput-object p0, p3, v0

    const-string p0, "Error code %s trying to sign provided bytes: %s"

    .line 20
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_1
    const/16 p2, 0xc8

    if-ne p1, p2, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/google/api/client/http/p;->b()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 22
    const-class p1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {p0, p1}, Lcom/google/api/client/http/p;->k(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/api/client/util/GenericData;

    const-string p1, "signedBlob"

    const-string p2, "Error parsing signature response. "

    .line 23
    invoke-static {p0, p1, p2}, Lcom/google/auth/oauth2/n;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Empty content from sign blob server request."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_4
    new-instance p2, Ljava/io/IOException;

    new-array p3, p3, [Ljava/lang/Object;

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-virtual {p0}, Lcom/google/api/client/http/p;->l()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v0

    const-string p0, "Unexpected Error code %s trying to sign provided bytes: %s"

    .line 27
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static c(Ljava/lang/String;Lcom/google/auth/Credentials;Lcom/google/api/client/http/s;[BLjava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/auth/Credentials;",
            "Lcom/google/api/client/http/s;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)[B"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->b()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p3}, Lcom/google/common/io/BaseEncoding;->g([B)Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/auth/oauth2/m;->b(Ljava/lang/String;Lcom/google/auth/Credentials;Lcom/google/api/client/http/s;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->d(Ljava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Lcom/google/auth/ServiceAccountSigner$SigningException;

    const-string p2, "Failed to sign the provided bytes"

    invoke-direct {p1, p2, p0}, Lcom/google/auth/ServiceAccountSigner$SigningException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method
