.class public final Lcom/google/android/exoplayer2/n3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n3$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/google/android/exoplayer2/n3;

.field public static final c:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/n3;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/n3$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/n3;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/n3;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/google/android/exoplayer2/n3;->b:Lcom/google/android/exoplayer2/n3;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/l3;->a:Lcom/google/android/exoplayer2/l3;

    sput-object v0, Lcom/google/android/exoplayer2/n3;->c:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/n3$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/n3;->a:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n3;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/n3;->f(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n3;

    move-result-object p0

    return-object p0
.end method

.method private static e(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n3;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/n3;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/n3$a;->f:Lcom/google/android/exoplayer2/h$a;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/c;->b(Lcom/google/android/exoplayer2/h$a;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    .line 4
    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/n3;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/n3;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/n3$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/n3;->a:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/n3;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/n3;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/n3;->a:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/n3$a;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n3$a;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n3$a;->d()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lcom/google/android/exoplayer2/n3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/n3;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/n3;->a:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lcom/google/android/exoplayer2/n3;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/n3;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v0

    return v0
.end method
