.class Lcom/google/common/collect/s4$b;
.super Lcom/google/common/collect/f4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/s4;->asList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f4<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableList;

.field final synthetic b:Lcom/google/common/collect/s4;


# direct methods
.method constructor <init>(Lcom/google/common/collect/s4;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/s4$b;->b:Lcom/google/common/collect/s4;

    iput-object p2, p0, Lcom/google/common/collect/s4$b;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/f4;-><init>()V

    return-void
.end method


# virtual methods
.method c()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s4$b;->b:Lcom/google/common/collect/s4;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s4$b;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
