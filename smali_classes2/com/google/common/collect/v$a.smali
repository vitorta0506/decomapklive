.class Lcom/google/common/collect/v$a;
.super Lcom/google/common/collect/k3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/v;->createDescendingMultiset()Lcom/google/common/collect/h8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k3<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/google/common/collect/v;


# direct methods
.method constructor <init>(Lcom/google/common/collect/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/v$a;->d:Lcom/google/common/collect/v;

    invoke-direct {p0}, Lcom/google/common/collect/k3;-><init>()V

    return-void
.end method


# virtual methods
.method A0()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/v$a;->d:Lcom/google/common/collect/v;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method C0()Lcom/google/common/collect/h8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/h8<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/v$a;->d:Lcom/google/common/collect/v;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/v$a;->d:Lcom/google/common/collect/v;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
