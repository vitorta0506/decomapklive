.class abstract Lcom/google/common/collect/ImmutableMap$c;
.super Lcom/google/common/collect/ImmutableMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/google/common/collect/e9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e9<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableMap$c$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMap$c$a;-><init>(Lcom/google/common/collect/ImmutableMap$c;)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/p4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/p4;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/s4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/s4;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
