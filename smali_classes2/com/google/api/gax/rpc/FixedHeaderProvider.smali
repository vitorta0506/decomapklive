.class public abstract Lcom/google/api/gax/rpc/FixedHeaderProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/gax/rpc/p;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x43beb164907a35aaL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkKeys(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The header key \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not case insensitively unique"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static create(Ljava/util/Map;)Lcom/google/api/gax/rpc/FixedHeaderProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/gax/rpc/FixedHeaderProvider;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gax/rpc/FixedHeaderProvider;->checkKeys(Ljava/util/Collection;)V

    .line 2
    new-instance v0, Lcom/google/api/gax/rpc/g;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/g;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static varargs create([Ljava/lang/String;)Lcom/google/api/gax/rpc/FixedHeaderProvider;
    .locals 4

    .line 3
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 6
    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$b;->h(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->a()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/gax/rpc/FixedHeaderProvider;->checkKeys(Ljava/util/Collection;)V

    .line 9
    new-instance v0, Lcom/google/api/gax/rpc/g;

    invoke-direct {v0, p0}, Lcom/google/api/gax/rpc/g;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The keyValuePairs var-arg parameter must contain an even number of elements"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
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
