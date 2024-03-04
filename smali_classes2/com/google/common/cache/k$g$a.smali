.class final enum Lcom/google/common/cache/k$g$a;
.super Lcom/google/common/cache/k$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/k$g;-><init>(Ljava/lang/String;ILcom/google/common/cache/k$a;)V

    return-void
.end method


# virtual methods
.method f(Lcom/google/common/cache/k$s;Ljava/lang/Object;ILcom/google/common/cache/q;)Lcom/google/common/cache/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/k$s<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/cache/k$x;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/cache/k$x;-><init>(Ljava/lang/Object;ILcom/google/common/cache/q;)V

    return-object p1
.end method
