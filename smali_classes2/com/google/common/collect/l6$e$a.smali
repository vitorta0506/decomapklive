.class Lcom/google/common/collect/l6$e$a;
.super Lcom/google/common/collect/b9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l6$e;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b9<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;",
        "Lcom/google/common/collect/q6$a<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/l6$e;Ljava/util/Iterator;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/common/collect/b9;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l6$e$a;->b(Ljava/util/Map$Entry;)Lcom/google/common/collect/q6$a;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/util/Map$Entry;)Lcom/google/common/collect/q6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lcom/google/common/collect/q6$a<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/l6$e$a$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/l6$e$a$a;-><init>(Lcom/google/common/collect/l6$e$a;Ljava/util/Map$Entry;)V

    return-object v0
.end method
