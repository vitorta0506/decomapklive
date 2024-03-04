.class Lcom/google/common/collect/HashBiMap$c$b$a;
.super Lcom/google/common/collect/HashBiMap$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$c$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap<",
        "TK;TV;>.e<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$c$b;)V
    .locals 0

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$c$b;->b:Lcom/google/common/collect/HashBiMap$c;

    iget-object p1, p1, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$e;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/HashBiMap$b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    iget-object p1, p1, Lcom/google/common/collect/h4;->b:Ljava/lang/Object;

    return-object p1
.end method
