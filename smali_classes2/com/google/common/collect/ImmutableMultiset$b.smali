.class public Lcom/google/common/collect/ImmutableMultiset$b;
.super Lcom/google/common/collect/ImmutableCollection$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$a<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/q6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/q6<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$b;-><init>(Lcom/google/common/collect/q6;)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/q6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q6<",
            "TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$a;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/q6;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$b<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/q6;

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/q6;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs g([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$b<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;

    return-object p0
.end method

.method public h(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$b<",
            "TE;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->d(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$a;

    return-object p0
.end method

.method public i(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$b<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/q6;

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/q6;->add(Ljava/lang/Object;I)I

    return-object p0
.end method

.method public j()Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$b;->a:Lcom/google/common/collect/q6;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method
