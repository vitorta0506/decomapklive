.class Lcom/google/common/collect/HashBiMap$a;
.super Lcom/google/common/collect/HashBiMap$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap<",
        "TK;TV;>.e<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$e;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Lcom/google/common/collect/HashBiMap$b;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap$a;->b(Lcom/google/common/collect/HashBiMap$b;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method b(Lcom/google/common/collect/HashBiMap$b;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/HashBiMap$a$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/HashBiMap$a$a;-><init>(Lcom/google/common/collect/HashBiMap$a;Lcom/google/common/collect/HashBiMap$b;)V

    return-object v0
.end method
