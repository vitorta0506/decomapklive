.class final Lcom/google/common/collect/ImmutableMultiset$c;
.super Lcom/google/common/collect/ImmutableSet$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$d<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/q6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q6<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/common/collect/q6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/q6$a<",
            "TE;>;>;",
            "Lcom/google/common/collect/q6<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$d;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$c;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/ImmutableMultiset$c;->b:Lcom/google/common/collect/q6;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$c;->b:Lcom/google/common/collect/q6;

    invoke-interface {v0, p1}, Lcom/google/common/collect/q6;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/q6$a;

    invoke-interface {p1}, Lcom/google/common/collect/q6$a;->a()Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
