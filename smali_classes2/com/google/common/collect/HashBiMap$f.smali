.class final Lcom/google/common/collect/HashBiMap$f;
.super Lcom/google/common/collect/d6$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d6$j<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$f;->b:Lcom/google/common/collect/HashBiMap;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/d6$j;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/HashBiMap$f$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$f$a;-><init>(Lcom/google/common/collect/HashBiMap$f;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$f;->b:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$300(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$f;->b:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$b;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    .line 4
    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    const/4 p1, 0x1

    return p1
.end method
