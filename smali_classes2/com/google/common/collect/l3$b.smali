.class final Lcom/google/common/collect/l3$b;
.super Lcom/google/common/collect/l3;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/l3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/l3<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/common/collect/l3$b;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/l3$b;

    invoke-direct {v0}, Lcom/google/common/collect/l3$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/l3$b;->b:Lcom/google/common/collect/l3$b;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/l3;-><init>(ZLcom/google/common/collect/l3$a;)V

    return-void
.end method

.method static synthetic i()Lcom/google/common/collect/l3$b;
    .locals 1

    sget-object v0, Lcom/google/common/collect/l3$b;->b:Lcom/google/common/collect/l3$b;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/l3$b;->b:Lcom/google/common/collect/l3$b;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/l3$b;->j(Ljava/lang/Integer;Ljava/lang/Integer;)J

    move-result-wide p1

    return-wide p1
.end method

.method public bridge synthetic d()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/l3$b;->k()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/l3$b;->l()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l3$b;->m(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic g(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/l3$b;->n(Ljava/lang/Integer;J)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/l3$b;->o(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Integer;Ljava/lang/Integer;)J
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public k()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/Integer;
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public m(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method n(Ljava/lang/Integer;J)Ljava/lang/Integer;
    .locals 2

    const-string v0, "distance"

    .line 1
    invoke-static {p2, p3, v0}, Lcom/google/common/collect/p2;->c(JLjava/lang/String;)J

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->d(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DiscreteDomain.integers()"

    return-object v0
.end method
