.class final Lcom/google/common/collect/HashBiMap$b;
.super Lcom/google/common/collect/h4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h4<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final c:I

.field final d:I

.field e:Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/collect/HashBiMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/h4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iput p2, p0, Lcom/google/common/collect/HashBiMap$b;->c:I

    .line 3
    iput p4, p0, Lcom/google/common/collect/HashBiMap$b;->d:I

    return-void
.end method
