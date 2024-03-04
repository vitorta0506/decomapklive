.class final Lcom/google/common/collect/h7$b;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/h7$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableBiMap<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/h7;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/h7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/h7$b;->a:Lcom/google/common/collect/h7;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/h7;Lcom/google/common/collect/h7$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/h7$b;-><init>(Lcom/google/common/collect/h7;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/h7$b;->b(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic b(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/h7$b$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h7$b$a;-><init>(Lcom/google/common/collect/h7$b;)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/p4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/p4;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TV;-TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/h7$b;->a:Lcom/google/common/collect/h7;

    new-instance v1, Lcom/google/common/collect/i7;

    invoke-direct {v1, p1}, Lcom/google/common/collect/i7;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/h7;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/google/common/collect/h7$b;->a:Lcom/google/common/collect/h7;

    invoke-static {v1}, Lcom/google/common/collect/h7;->a(Lcom/google/common/collect/h7;)[Lcom/google/common/collect/m4;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/e4;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/h7$b;->a:Lcom/google/common/collect/h7;

    invoke-static {v2}, Lcom/google/common/collect/h7;->b(Lcom/google/common/collect/h7;)I

    move-result v2

    and-int/2addr v1, v2

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/h7$b;->a:Lcom/google/common/collect/h7;

    invoke-static {v2}, Lcom/google/common/collect/h7;->a(Lcom/google/common/collect/h7;)[Lcom/google/common/collect/m4;

    move-result-object v2

    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/google/common/collect/h4;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/google/common/collect/h4;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/m4;->e()Lcom/google/common/collect/m4;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/h7$b;->a:Lcom/google/common/collect/h7;

    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/e0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h7$b;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/h7$b;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/h7$c;

    iget-object v1, p0, Lcom/google/common/collect/h7$b;->a:Lcom/google/common/collect/h7;

    invoke-direct {v0, v1}, Lcom/google/common/collect/h7$c;-><init>(Lcom/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
