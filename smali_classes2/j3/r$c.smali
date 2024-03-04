.class Lj3/r$c;
.super Lcom/google/common/collect/t3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t3<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/t3;-><init>()V

    .line 2
    iput-object p1, p0, Lj3/r$c;->a:Ljava/util/Map;

    return-void
.end method

.method private static synthetic C0(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic E0(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic w0(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-static {p0}, Lj3/r$c;->C0(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic y0(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lj3/r$c;->E0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A0(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/t3;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_0
    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/t3;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/t3;->standardContainsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj3/r$c;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lj3/r$c;->a:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/t3;->entrySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj3/t;->a:Lj3/t;

    invoke-static {v0, v1}, Lcom/google/common/collect/w7;->c(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/collect/t3;->standardEquals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lj3/r$c;->A0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/t3;->standardHashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/t3;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/common/collect/t3;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/google/common/collect/t3;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/t3;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj3/s;->a:Lj3/s;

    invoke-static {v0, v1}, Lcom/google/common/collect/w7;->c(Ljava/util/Set;Lcom/google/common/base/q;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/t3;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/google/common/collect/t3;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
