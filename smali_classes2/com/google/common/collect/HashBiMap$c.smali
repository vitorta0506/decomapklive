.class final Lcom/google/common/collect/HashBiMap$c;
.super Lcom/google/common/collect/d6$i;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/e0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/d6$i<",
        "TV;TK;>;",
        "Lcom/google/common/collect/e0<",
        "TV;TK;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lcom/google/common/collect/d6$i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$c;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/collect/HashBiMap$c;->c(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic c(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method b()Lcom/google/common/collect/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e0<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    return-object v0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$c;->b()Lcom/google/common/collect/e0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$c;->b()Lcom/google/common/collect/e0;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/HashBiMap$c$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$c$a;-><init>(Lcom/google/common/collect/HashBiMap$c;)V

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
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    new-instance v1, Lcom/google/common/collect/c4;

    invoke-direct {v1, p1}, Lcom/google/common/collect/c4;-><init>(Ljava/util/function/BiConsumer;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashBiMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$400(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/d6;->k(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inverse()Lcom/google/common/collect/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e0<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$c;->b()Lcom/google/common/collect/e0;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/HashBiMap$c$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$c$b;-><init>(Lcom/google/common/collect/HashBiMap$c;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/google/common/collect/HashBiMap;->access$800(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Lcom/google/common/collect/e4;->d(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->access$400(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$b;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, p1}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$b;)V

    .line 3
    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->h:Lcom/google/common/collect/HashBiMap$b;

    .line 4
    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    .line 5
    iget-object p1, p1, Lcom/google/common/collect/h4;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TV;-TK;+TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)Lcom/google/common/collect/HashBiMap$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$c;->clear()V

    :goto_0
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, v0, Lcom/google/common/collect/h4;->b:Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/common/collect/h4;->a:Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/HashBiMap$c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$b;->g:Lcom/google/common/collect/HashBiMap$b;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$700(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$c;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$c;->b()Lcom/google/common/collect/e0;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/google/common/collect/HashBiMap$d;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$c;->a:Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/HashBiMap$d;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-object v0
.end method
