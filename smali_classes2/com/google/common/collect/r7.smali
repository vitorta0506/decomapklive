.class final Lcom/google/common/collect/r7;
.super Lcom/google/common/collect/y6;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/y6<",
        "Ljava/lang/Comparable<",
        "*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/r7;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/r7;

    invoke-direct {v0}, Lcom/google/common/collect/r7;-><init>()V

    sput-object v0, Lcom/google/common/collect/r7;->a:Lcom/google/common/collect/r7;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/y6;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/r7;->a:Lcom/google/common/collect/r7;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/r7;->j(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/r7;->i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/r7;->k(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/google/common/collect/y6;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lcom/google/common/collect/y6<",
            "TS;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/y6;->e()Lcom/google/common/collect/y6;

    move-result-object v0

    return-object v0
.end method

.method public i(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>(TE;TE;)TE;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/v6;->a:Lcom/google/common/collect/v6;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/y6;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1
.end method

.method public k(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>(TE;TE;)TE;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/v6;->a:Lcom/google/common/collect/v6;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/y6;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural().reverse()"

    return-object v0
.end method
