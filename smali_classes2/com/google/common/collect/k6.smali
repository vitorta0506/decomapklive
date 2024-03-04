.class public abstract Lcom/google/common/collect/k6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/k6$g;,
        Lcom/google/common/collect/k6$e;,
        Lcom/google/common/collect/k6$f;,
        Lcom/google/common/collect/k6$d;,
        Lcom/google/common/collect/k6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/j6;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/k6;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/collect/k6$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k6$f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/common/collect/k6;->b(I)Lcom/google/common/collect/k6$f;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Lcom/google/common/collect/k6$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/k6$f<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "expectedKeys"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/collect/p2;->b(ILjava/lang/String;)I

    .line 2
    new-instance v0, Lcom/google/common/collect/k6$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k6$a;-><init>(I)V

    return-object v0
.end method

.method public static c()Lcom/google/common/collect/k6$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k6$f<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/k6;->d(Ljava/util/Comparator;)Lcom/google/common/collect/k6$f;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/util/Comparator;)Lcom/google/common/collect/k6$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK0;>;)",
            "Lcom/google/common/collect/k6$f<",
            "TK0;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/common/collect/k6$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k6$b;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
