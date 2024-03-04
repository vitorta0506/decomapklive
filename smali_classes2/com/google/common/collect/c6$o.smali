.class final Lcom/google/common/collect/c6$o;
.super Lcom/google/common/collect/c6$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c6$b<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method constructor <init>(Lcom/google/common/collect/c6$p;Lcom/google/common/collect/c6$p;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c6$p;",
            "Lcom/google/common/collect/c6$p;",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lcom/google/common/collect/c6$b;-><init>(Lcom/google/common/collect/c6$p;Lcom/google/common/collect/c6$p;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;ILjava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c6$b;->A0(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/b6;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/b6;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/c6$b;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c6$b;->y0(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/c6$b;->f:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/c6$b;->C0(Ljava/io/ObjectOutputStream;)V

    return-void
.end method
