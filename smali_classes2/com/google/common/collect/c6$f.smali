.class final Lcom/google/common/collect/c6$f;
.super Lcom/google/common/collect/c6$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c6<",
        "TK;TV;TE;TS;>.h<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/c6;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/c6$h;-><init>(Lcom/google/common/collect/c6;)V

    return-void
.end method


# virtual methods
.method public f()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/c6$h;->c()Lcom/google/common/collect/c6$d0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/c6$f;->f()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
