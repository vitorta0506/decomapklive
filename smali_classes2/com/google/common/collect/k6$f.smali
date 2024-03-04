.class public abstract Lcom/google/common/collect/k6$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/k6$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k6$e<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/collect/k6$f;->b(I)Lcom/google/common/collect/k6$e;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/common/collect/k6$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/k6$e<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/collect/p2;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/google/common/collect/k6$f$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k6$f$a;-><init>(Lcom/google/common/collect/k6$f;I)V

    return-object v0
.end method

.method abstract c()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public d()Lcom/google/common/collect/k6$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k6$g<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/common/collect/k6$f;->e(I)Lcom/google/common/collect/k6$g;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/google/common/collect/k6$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/k6$g<",
            "TK0;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedValuesPerKey"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/collect/p2;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/google/common/collect/k6$f$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k6$f$b;-><init>(Lcom/google/common/collect/k6$f;I)V

    return-object v0
.end method
