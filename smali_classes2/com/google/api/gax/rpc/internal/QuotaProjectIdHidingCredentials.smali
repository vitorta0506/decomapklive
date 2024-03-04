.class public Lcom/google/api/gax/rpc/internal/QuotaProjectIdHidingCredentials;
.super Lcom/google/auth/Credentials;
.source "SourceFile"


# static fields
.field private static final QUOTA_PROJECT_ID_HEADER_KEY:Ljava/lang/String; = "x-goog-user-project"


# instance fields
.field private final wrappedCredentials:Lcom/google/auth/Credentials;


# direct methods
.method public constructor <init>(Lcom/google/auth/Credentials;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/auth/Credentials;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/api/gax/rpc/internal/QuotaProjectIdHidingCredentials;->wrappedCredentials:Lcom/google/auth/Credentials;

    return-void
.end method


# virtual methods
.method public getAuthenticationType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/internal/QuotaProjectIdHidingCredentials;->wrappedCredentials:Lcom/google/auth/Credentials;

    invoke-virtual {v0}, Lcom/google/auth/Credentials;->getAuthenticationType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMetadata()Ljava/util/Map;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/api/gax/rpc/internal/QuotaProjectIdHidingCredentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;
    .locals 4
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

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/api/gax/rpc/internal/QuotaProjectIdHidingCredentials;->wrappedCredentials:Lcom/google/auth/Credentials;

    invoke-virtual {v1, p1}, Lcom/google/auth/Credentials;->getRequestMetadata(Ljava/net/URI;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "x-goog-user-project"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$b;->i(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$b;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public hasRequestMetadata()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/internal/QuotaProjectIdHidingCredentials;->wrappedCredentials:Lcom/google/auth/Credentials;

    invoke-virtual {v0}, Lcom/google/auth/Credentials;->hasRequestMetadata()Z

    move-result v0

    return v0
.end method

.method public hasRequestMetadataOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/google/api/gax/rpc/internal/QuotaProjectIdHidingCredentials;->wrappedCredentials:Lcom/google/auth/Credentials;

    invoke-virtual {v0}, Lcom/google/auth/Credentials;->hasRequestMetadataOnly()Z

    move-result v0

    return v0
.end method

.method public refresh()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/internal/QuotaProjectIdHidingCredentials;->wrappedCredentials:Lcom/google/auth/Credentials;

    invoke-virtual {v0}, Lcom/google/auth/Credentials;->refresh()V

    return-void
.end method
