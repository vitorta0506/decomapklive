.class Lcom/google/common/collect/n5$b;
.super Lcom/google/common/collect/p3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/n5;->p(Ljava/lang/Iterable;Lcom/google/common/base/h;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/p3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Iterable;

.field final synthetic c:Lcom/google/common/base/h;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;Lcom/google/common/base/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/n5$b;->b:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/google/common/collect/n5$b;->c:Lcom/google/common/base/h;

    invoke-direct {p0}, Lcom/google/common/collect/p3;-><init>()V

    return-void
.end method

.method public static synthetic u(Ljava/util/function/Consumer;Lcom/google/common/base/h;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/n5$b;->x(Ljava/util/function/Consumer;Lcom/google/common/base/h;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic x(Ljava/util/function/Consumer;Lcom/google/common/base/h;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/google/common/base/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/n5$b;->b:Ljava/lang/Iterable;

    iget-object v1, p0, Lcom/google/common/collect/n5$b;->c:Lcom/google/common/base/h;

    new-instance v2, Lcom/google/common/collect/o5;

    invoke-direct {v2, p1, v1}, Lcom/google/common/collect/o5;-><init>(Ljava/util/function/Consumer;Lcom/google/common/base/h;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n5$b;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/n5$b;->c:Lcom/google/common/base/h;

    invoke-static {v0, v1}, Lcom/google/common/collect/p5;->C(Ljava/util/Iterator;Lcom/google/common/base/h;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n5$b;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/n5$b;->c:Lcom/google/common/base/h;

    invoke-static {v0, v1}, Lcom/google/common/collect/s2;->e(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
