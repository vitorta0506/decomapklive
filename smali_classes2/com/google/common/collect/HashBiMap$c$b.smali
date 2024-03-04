.class final Lcom/google/common/collect/HashBiMap$c$b;
.super Lcom/google/common/collect/d6$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d6$j<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/HashBiMap$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$c$b;->b:Lcom/google/common/collect/HashBiMap$c;

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
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/HashBiMap$c$b$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$c$b$a;-><init>(Lcom/google/common/collect/HashBiMap$c$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c$b;->b:Lcom/google/common/collect/HashBiMap$c;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$400(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c$b;->b:Lcom/google/common/collect/HashBiMap$c;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0, p1}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$b;)V

    const/4 p1, 0x1

    return p1
.end method
