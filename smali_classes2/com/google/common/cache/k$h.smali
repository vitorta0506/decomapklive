.class final Lcom/google/common/cache/k$h;
.super Lcom/google/common/cache/k$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/k<",
        "TK;TV;>.j<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/cache/k$j;-><init>(Lcom/google/common/cache/k;)V

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

    invoke-virtual {p0}, Lcom/google/common/cache/k$j;->c()Lcom/google/common/cache/k$m0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k$h;->f()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
