.class Lcom/google/common/collect/k3$a;
.super Lcom/google/common/collect/t6$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/k3;->y0()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t6$d<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/k3;


# direct methods
.method constructor <init>(Lcom/google/common/collect/k3;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/k3$a;->a:Lcom/google/common/collect/k3;

    invoke-direct {p0}, Lcom/google/common/collect/t6$d;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$a;->a:Lcom/google/common/collect/k3;

    invoke-virtual {v0}, Lcom/google/common/collect/k3;->A0()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method m()Lcom/google/common/collect/q6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q6<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$a;->a:Lcom/google/common/collect/k3;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/k3$a;->a:Lcom/google/common/collect/k3;

    invoke-virtual {v0}, Lcom/google/common/collect/k3;->C0()Lcom/google/common/collect/h8;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/h8;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method