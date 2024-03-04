.class Lcom/google/common/collect/z5$b;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TF;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/h<",
            "-TF;+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/google/common/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TF;>;",
            "Lcom/google/common/base/h<",
            "-TF;+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/common/collect/z5$b;->a:Ljava/util/List;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/h;

    iput-object p1, p0, Lcom/google/common/collect/z5$b;->b:Lcom/google/common/base/h;

    return-void
.end method

.method public static synthetic c(Lcom/google/common/collect/z5$b;Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/z5$b;->d(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic d(Ljava/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/z5$b;->b:Lcom/google/common/base/h;

    invoke-interface {v0, p2}, Lcom/google/common/base/h;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/z5$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/z5$b$a;

    iget-object v1, p0, Lcom/google/common/collect/z5$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/z5$b$a;-><init>(Lcom/google/common/collect/z5$b;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/z5$b;->a:Ljava/util/List;

    new-instance v1, Lcom/google/common/collect/a6;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/a6;-><init>(Lcom/google/common/collect/z5$b;Ljava/util/function/Predicate;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/z5$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
