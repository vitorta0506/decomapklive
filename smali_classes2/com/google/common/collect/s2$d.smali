.class abstract Lcom/google/common/collect/s2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/s2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/s2$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutElementT:",
        "Ljava/lang/Object;",
        "OutSpliteratorT::",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Spliterator<",
        "TOutElementT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TOutSpliteratorT;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TInElementT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;"
        }
    .end annotation
.end field

.field final d:Lcom/google/common/collect/s2$d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/s2$d$a<",
            "TInElementT;TOutSpliteratorT;>;"
        }
    .end annotation
.end field

.field e:I

.field f:J


# direct methods
.method constructor <init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;Lcom/google/common/collect/s2$d$a;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutSpliteratorT;",
            "Ljava/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;",
            "Lcom/google/common/collect/s2$d$a<",
            "TInElementT;TOutSpliteratorT;>;IJ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/s2$d;->b:Ljava/util/Spliterator;

    .line 4
    iput-object p3, p0, Lcom/google/common/collect/s2$d;->c:Ljava/util/function/Function;

    .line 5
    iput-object p4, p0, Lcom/google/common/collect/s2$d;->d:Lcom/google/common/collect/s2$d$a;

    .line 6
    iput p5, p0, Lcom/google/common/collect/s2$d;->e:I

    .line 7
    iput-wide p6, p0, Lcom/google/common/collect/s2$d;->f:J

    return-void
.end method

.method public static synthetic a(Lcom/google/common/collect/s2$d;Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/s2$d;->c(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/common/collect/s2$d;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/common/collect/s2$d;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic c(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/s2$d;->c:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Spliterator;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private synthetic d(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/s2$d;->c:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Spliterator;

    iput-object p1, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    return-void
.end method


# virtual methods
.method public final characteristics()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/s2$d;->e:I

    return v0
.end method

.method public final estimateSize()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/google/common/collect/s2$d;->f:J

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/s2$d;->f:J

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/s2$d;->f:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/s2$d;->b:Ljava/util/Spliterator;

    new-instance v1, Lcom/google/common/collect/w2;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/w2;-><init>(Lcom/google/common/collect/s2$d;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/google/common/collect/s2$d;->f:J

    return-void
.end method

.method public final tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TOutElementT;>;)Z"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-wide v0, p0, Lcom/google/common/collect/s2$d;->f:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 3
    iput-wide v0, p0, Lcom/google/common/collect/s2$d;->f:J

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/s2$d;->b:Ljava/util/Spliterator;

    new-instance v1, Lcom/google/common/collect/v2;

    invoke-direct {v1, p0}, Lcom/google/common/collect/v2;-><init>(Lcom/google/common/collect/s2$d;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final trySplit()Ljava/util/Spliterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOutSpliteratorT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/s2$d;->b:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    .line 2
    iget v1, p0, Lcom/google/common/collect/s2$d;->e:I

    and-int/lit8 v5, v1, -0x41

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/s2$d;->estimateSize()J

    move-result-wide v1

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v1, v6

    if-gez v4, :cond_0

    const-wide/16 v6, 0x2

    .line 4
    div-long/2addr v1, v6

    .line 5
    iget-wide v6, p0, Lcom/google/common/collect/s2$d;->f:J

    sub-long/2addr v6, v1

    iput-wide v6, p0, Lcom/google/common/collect/s2$d;->f:J

    .line 6
    iput v5, p0, Lcom/google/common/collect/s2$d;->e:I

    :cond_0
    move-wide v6, v1

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/s2$d;->d:Lcom/google/common/collect/s2$d$a;

    iget-object v2, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    iget-object v4, p0, Lcom/google/common/collect/s2$d;->c:Ljava/util/function/Function;

    .line 8
    invoke-interface/range {v1 .. v7}, Lcom/google/common/collect/s2$d$a;->a(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;

    move-result-object v1

    .line 9
    iput-object v0, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    return-object v1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    if-eqz v1, :cond_2

    .line 11
    iput-object v0, p0, Lcom/google/common/collect/s2$d;->a:Ljava/util/Spliterator;

    return-object v1

    :cond_2
    return-object v0
.end method
