.class Lcom/google/common/collect/TreeMultiset$a;
.super Lcom/google/common/collect/t6$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeMultiset;->wrapEntry(Lcom/google/common/collect/TreeMultiset$f;)Lcom/google/common/collect/q6$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t6$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeMultiset$f;

.field final synthetic b:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$a;->b:Lcom/google/common/collect/TreeMultiset;

    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$a;->a:Lcom/google/common/collect/TreeMultiset$f;

    invoke-direct {p0}, Lcom/google/common/collect/t6$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$a;->a:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$f;->x()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$a;->a:Lcom/google/common/collect/TreeMultiset$f;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$f;->w()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$a;->b:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    return v0
.end method
