.class public abstract Lcom/google/auth/oauth2/JwtClaims;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auth/oauth2/JwtClaims$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4508c6998088538eL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/google/auth/oauth2/JwtClaims$a;
    .locals 2

    new-instance v0, Lcom/google/auth/oauth2/c$b;

    invoke-direct {v0}, Lcom/google/auth/oauth2/c$b;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/auth/oauth2/c$b;->b(Ljava/util/Map;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract getAdditionalClaims()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract getAudience()Ljava/lang/String;
.end method

.method abstract getIssuer()Ljava/lang/String;
.end method

.method abstract getSubject()Ljava/lang/String;
.end method

.method public isComplete()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtClaims;->getAdditionalClaims()Ljava/util/Map;

    move-result-object v0

    const-string v1, "scope"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtClaims;->getAdditionalClaims()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtClaims;->getAudience()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtClaims;->getIssuer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtClaims;->getSubject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public merge(Lcom/google/auth/oauth2/JwtClaims;)Lcom/google/auth/oauth2/JwtClaims;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtClaims;->getAdditionalClaims()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$b;->k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;

    .line 3
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtClaims;->getAdditionalClaims()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$b;->k(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$b;

    .line 4
    invoke-static {}, Lcom/google/auth/oauth2/JwtClaims;->newBuilder()Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtClaims;->getAudience()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtClaims;->getAudience()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtClaims;->getAudience()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/auth/oauth2/JwtClaims$a;->c(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtClaims;->getIssuer()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtClaims;->getIssuer()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtClaims;->getIssuer()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/auth/oauth2/JwtClaims$a;->d(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtClaims;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/auth/oauth2/JwtClaims;->getSubject()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtClaims;->getSubject()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v1, p1}, Lcom/google/auth/oauth2/JwtClaims$a;->e(Ljava/lang/String;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object p1

    .line 8
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/auth/oauth2/JwtClaims$a;->b(Ljava/util/Map;)Lcom/google/auth/oauth2/JwtClaims$a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/auth/oauth2/JwtClaims$a;->a()Lcom/google/auth/oauth2/JwtClaims;

    move-result-object p1

    return-object p1
.end method
