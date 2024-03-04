.class Lcom/google/common/collect/Range$c;
.super Lcom/google/common/collect/y6;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/y6<",
        "Lcom/google/common/collect/Range<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/y6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y6<",
            "Lcom/google/common/collect/Range<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/Range$c;

    invoke-direct {v0}, Lcom/google/common/collect/Range$c;-><init>()V

    sput-object v0, Lcom/google/common/collect/Range$c;->a:Lcom/google/common/collect/y6;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/y6;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/common/collect/Range;

    check-cast p2, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Range$c;->i(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I

    move-result p1

    return p1
.end method

.method public i(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "*>;",
            "Lcom/google/common/collect/Range<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/e3;->k()Lcom/google/common/collect/e3;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    iget-object v2, p2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/g3;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/e3;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/e3;

    move-result-object v0

    iget-object p1, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    iget-object p2, p2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/g3;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/e3;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/e3;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/common/collect/e3;->j()I

    move-result p1

    return p1
.end method
