.class public final Lh3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# static fields
.field public static final c:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lh3/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lv2/o0;

.field public final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lh3/w;->a:Lh3/w;

    sput-object v0, Lh3/x;->c:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method public constructor <init>(Lv2/o0;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/o0;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Lv2/o0;->a:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Lh3/x;->a:Lv2/o0;

    .line 6
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lh3/x;->b:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lh3/x;
    .locals 0

    invoke-static {p0}, Lh3/x;->d(Landroid/os/Bundle;)Lh3/x;

    move-result-object p0

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Landroid/os/Bundle;)Lh3/x;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lh3/x;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 2
    sget-object v1, Lv2/o0;->f:Lcom/google/android/exoplayer2/h$a;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/h$a;->a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/h;

    move-result-object v0

    check-cast v0, Lv2/o0;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lh3/x;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 4
    new-instance v1, Lh3/x;

    invoke-static {p0}, Lcom/google/common/primitives/f;->c([I)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lh3/x;-><init>(Lv2/o0;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lh3/x;->a:Lv2/o0;

    iget v0, v0, Lv2/o0;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lh3/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lh3/x;

    .line 3
    iget-object v2, p0, Lh3/x;->a:Lv2/o0;

    iget-object v3, p1, Lh3/x;->a:Lv2/o0;

    invoke-virtual {v2, v3}, Lv2/o0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lh3/x;->b:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lh3/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lh3/x;->a:Lv2/o0;

    invoke-virtual {v0}, Lv2/o0;->hashCode()I

    move-result v0

    iget-object v1, p0, Lh3/x;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
