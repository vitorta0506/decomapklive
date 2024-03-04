.class public Lcom/google/api/gax/rpc/ApiClientHeaderProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/p;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;
    }
.end annotation


# static fields
.field static final QUOTA_PROJECT_ID_HEADER_KEY:Ljava/lang/String; = "x-goog-user-project"

.field private static final serialVersionUID:J = -0x7b301d7efce730a7L


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;->appendToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;->appendToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;->appendToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;->appendToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;->appendToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "x-goog-user-project"

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;->headers:Ljava/util/Map;

    return-void
.end method

.method protected static appendToken(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x20

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static getDefaultApiClientHeaderKey()Ljava/lang/String;
    .locals 1

    const-string v0, "x-goog-api-client"

    return-object v0
.end method

.method public static getDefaultResourceHeaderKey()Ljava/lang/String;
    .locals 1

    const-string v0, "google-cloud-resource-prefix"

    return-object v0
.end method

.method public static newBuilder()Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;
    .locals 1

    new-instance v0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;

    invoke-direct {v0}, Lcom/google/api/gax/rpc/ApiClientHeaderProvider$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/gax/rpc/ApiClientHeaderProvider;->headers:Ljava/util/Map;

    return-object v0
.end method
