.class final enum Lcom/google/common/cache/k$u$b;
.super Lcom/google/common/cache/k$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/k$u;-><init>(Ljava/lang/String;ILcom/google/common/cache/k$a;)V

    return-void
.end method


# virtual methods
.method b()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/base/Equivalence;->f()Lcom/google/common/base/Equivalence;

    move-result-object v0

    return-object v0
.end method

.method c(Lcom/google/common/cache/k$s;Lcom/google/common/cache/q;Ljava/lang/Object;I)Lcom/google/common/cache/k$b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/k$s<",
            "TK;TV;>;",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/k$b0<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 1
    new-instance p4, Lcom/google/common/cache/k$t;

    iget-object p1, p1, Lcom/google/common/cache/k$s;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p4, p1, p3, p2}, Lcom/google/common/cache/k$t;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/q;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/cache/k$i0;

    iget-object p1, p1, Lcom/google/common/cache/k$s;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/google/common/cache/k$i0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/q;I)V

    move-object p4, v0

    :goto_0
    return-object p4
.end method
