.class final Lcom/google/common/collect/k7$b;
.super Lcom/google/common/collect/l5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/l5<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/k7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k7<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/k7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/k7<",
            "TK;*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/l5;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/k7$b;->a:Lcom/google/common/collect/k7;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/k7$b;->a:Lcom/google/common/collect/k7;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k7$b;->a:Lcom/google/common/collect/k7;

    iget-object v0, v0, Lcom/google/common/collect/k7;->a:[Ljava/util/Map$Entry;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/k7$b;->a:Lcom/google/common/collect/k7;

    invoke-virtual {v0}, Lcom/google/common/collect/k7;->size()I

    move-result v0

    return v0
.end method
