.class final Lcom/google/common/cache/k$k;
.super Lcom/google/common/cache/k$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/k<",
        "TK;TV;>.j<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/cache/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/cache/k$j;-><init>(Lcom/google/common/cache/k;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/cache/k$j;->c()Lcom/google/common/cache/k$m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/k$m0;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
