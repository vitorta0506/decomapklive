.class final Lcom/google/common/cache/k$i0;
.super Lcom/google/common/cache/k$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/k$t<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/k$t;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/q;)V

    .line 2
    iput p4, p0, Lcom/google/common/cache/k$i0;->b:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/common/cache/k$i0;->b:I

    return v0
.end method

.method public d(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/q;)Lcom/google/common/cache/k$b0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/k$b0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/k$i0;

    iget v1, p0, Lcom/google/common/cache/k$i0;->b:I

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/common/cache/k$i0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/q;I)V

    return-object v0
.end method
