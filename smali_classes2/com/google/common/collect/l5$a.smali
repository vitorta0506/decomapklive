.class Lcom/google/common/collect/l5$a;
.super Lcom/google/common/collect/f4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/l5;->createAsList()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f4<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/l5;


# direct methods
.method constructor <init>(Lcom/google/common/collect/l5;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/l5$a;->a:Lcom/google/common/collect/l5;

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
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l5$a;->a:Lcom/google/common/collect/l5;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/l5$a;->a:Lcom/google/common/collect/l5;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/l5;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l5$a;->a:Lcom/google/common/collect/l5;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/l5$a;->a:Lcom/google/common/collect/l5;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method
