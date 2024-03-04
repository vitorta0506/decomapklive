.class abstract Leh/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;II)Leh/z0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/y0;",
            ">;II)",
            "Leh/z0;"
        }
    .end annotation

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "localityWeight must be greater than 0"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Leh/j;

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Leh/j;-><init>(Lcom/google/common/collect/ImmutableList;II)V

    return-object v0
.end method


# virtual methods
.method abstract b()Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Leh/y0;",
            ">;"
        }
    .end annotation
.end method

.method abstract c()I
.end method

.method abstract d()I
.end method
