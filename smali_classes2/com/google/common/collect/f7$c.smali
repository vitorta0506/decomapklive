.class Lcom/google/common/collect/f7$c;
.super Lcom/google/common/collect/f4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/f7;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f4<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/f7;


# direct methods
.method constructor <init>(Lcom/google/common/collect/f7;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/f7$c;->a:Lcom/google/common/collect/f7;

    invoke-direct {p0}, Lcom/google/common/collect/f4;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic c()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/f7$c;->d()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/f7$c;->a:Lcom/google/common/collect/f7;

    return-object v0
.end method

.method public f(I)Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TC;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/f4;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/o;->q(II)I

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/f7$c;->a:Lcom/google/common/collect/f7;

    iget-object v1, v0, Lcom/google/common/collect/ContiguousSet;->domain:Lcom/google/common/collect/l3;

    invoke-virtual {v0}, Lcom/google/common/collect/f7;->f()Ljava/lang/Comparable;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/common/collect/l3;->g(Ljava/lang/Comparable;J)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/f7$c;->f(I)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method
