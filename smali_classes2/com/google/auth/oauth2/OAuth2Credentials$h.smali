.class Lcom/google/auth/oauth2/OAuth2Credentials$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/OAuth2Credentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# instance fields
.field private final a:Lcom/google/auth/oauth2/AccessToken;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/auth/oauth2/AccessToken;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auth/oauth2/AccessToken;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$h;->a:Lcom/google/auth/oauth2/AccessToken;

    .line 3
    iput-object p2, p0, Lcom/google/auth/oauth2/OAuth2Credentials$h;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/google/auth/oauth2/OAuth2Credentials$h;)Lcom/google/auth/oauth2/AccessToken;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$h;->a:Lcom/google/auth/oauth2/AccessToken;

    return-object p0
.end method

.method static synthetic b(Lcom/google/auth/oauth2/OAuth2Credentials$h;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$h;->b:Ljava/util/Map;

    return-object p0
.end method

.method static c(Lcom/google/auth/oauth2/AccessToken;Ljava/util/Map;)Lcom/google/auth/oauth2/OAuth2Credentials$h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/auth/oauth2/AccessToken;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/google/auth/oauth2/OAuth2Credentials$h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/auth/oauth2/OAuth2Credentials$h;

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lcom/google/auth/oauth2/AccessToken;->getTokenValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    const-string v3, "Authorization"

    .line 4
    invoke-virtual {v1, v3, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v1

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap$b;->k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/auth/oauth2/OAuth2Credentials$h;-><init>(Lcom/google/auth/oauth2/AccessToken;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/auth/oauth2/OAuth2Credentials$h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/auth/oauth2/OAuth2Credentials$h;

    .line 3
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$h;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/google/auth/oauth2/OAuth2Credentials$h;->b:Ljava/util/Map;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$h;->a:Lcom/google/auth/oauth2/AccessToken;

    iget-object p1, p1, Lcom/google/auth/oauth2/OAuth2Credentials$h;->a:Lcom/google/auth/oauth2/AccessToken;

    .line 4
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

    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$h;->a:Lcom/google/auth/oauth2/AccessToken;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$h;->b:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
