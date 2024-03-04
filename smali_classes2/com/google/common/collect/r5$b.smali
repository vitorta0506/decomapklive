.class final Lcom/google/common/collect/r5$b;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList<",
        "Ljava/util/Map$Entry<",
        "TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/r5;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/r5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/r5$b;->a:Lcom/google/common/collect/r5;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/r5;Lcom/google/common/collect/r5$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/r5$b;-><init>(Lcom/google/common/collect/r5;)V

    return-void
.end method


# virtual methods
.method public c(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r5$b;->a:Lcom/google/common/collect/r5;

    invoke-static {v0}, Lcom/google/common/collect/r5;->a(Lcom/google/common/collect/r5;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/d6;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/r5$b;->c(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/r5$b;->a:Lcom/google/common/collect/r5;

    invoke-static {v0}, Lcom/google/common/collect/r5;->a(Lcom/google/common/collect/r5;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
