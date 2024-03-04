.class final Le2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/a;


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Le2/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method private constructor <init>(ILcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableList<",
            "Le2/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le2/f;->b:I

    .line 3
    iput-object p2, p0, Le2/f;->a:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private static a(IILcom/google/android/exoplayer2/util/b0;)Le2/a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :sswitch_0
    invoke-static {p2}, Le2/h;->a(Lcom/google/android/exoplayer2/util/b0;)Le2/h;

    move-result-object p0

    return-object p0

    .line 2
    :sswitch_1
    invoke-static {p2}, Le2/d;->c(Lcom/google/android/exoplayer2/util/b0;)Le2/d;

    move-result-object p0

    return-object p0

    .line 3
    :sswitch_2
    invoke-static {p2}, Le2/c;->b(Lcom/google/android/exoplayer2/util/b0;)Le2/c;

    move-result-object p0

    return-object p0

    .line 4
    :sswitch_3
    invoke-static {p1, p2}, Le2/g;->d(ILcom/google/android/exoplayer2/util/b0;)Le2/a;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(ILcom/google/android/exoplayer2/util/b0;)Le2/f;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableList$b;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$b;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->f()I

    move-result v1

    const/4 v2, -0x2

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->a()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->q()I

    move-result v3

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->q()I

    move-result v4

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->e()I

    move-result v5

    add-int/2addr v5, v4

    .line 7
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/b0;->O(I)V

    const v4, 0x5453494c

    if-ne v3, v4, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/b0;->q()I

    move-result v3

    .line 9
    invoke-static {v3, p1}, Le2/f;->c(ILcom/google/android/exoplayer2/util/b0;)Le2/f;

    move-result-object v3

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v3, v2, p1}, Le2/f;->a(IILcom/google/android/exoplayer2/util/b0;)Le2/a;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    .line 11
    invoke-interface {v3}, Le2/a;->getType()I

    move-result v4

    const v6, 0x68727473

    if-ne v4, v6, :cond_1

    .line 12
    move-object v2, v3

    check-cast v2, Le2/d;

    invoke-virtual {v2}, Le2/d;->b()I

    move-result v2

    .line 13
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    .line 14
    :cond_2
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/b0;->P(I)V

    .line 15
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/b0;->O(I)V

    goto :goto_0

    .line 16
    :cond_3
    new-instance p1, Le2/f;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Le2/f;-><init>(ILcom/google/common/collect/ImmutableList;)V

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/Class;)Le2/a;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Le2/a;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le2/f;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le2/a;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Le2/f;->b:I

    return v0
.end method
