.class final Lcom/google/common/collect/h7$b$a;
.super Lcom/google/common/collect/n4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h7$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/n4<",
        "TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/h7$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/h7$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/h7$b$a;->a:Lcom/google/common/collect/h7$b;

    invoke-direct {p0}, Lcom/google/common/collect/n4;-><init>()V

    return-void
.end method


# virtual methods
.method c()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/h7$b$a;->a:Lcom/google/common/collect/h7$b;

    return-object v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/h7$b$a$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h7$b$a$a;-><init>(Lcom/google/common/collect/h7$b$a;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$b;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/h7$b$a;->a:Lcom/google/common/collect/h7$b;

    iget-object v0, v0, Lcom/google/common/collect/h7$b;->a:Lcom/google/common/collect/h7;

    invoke-static {v0}, Lcom/google/common/collect/h7;->c(Lcom/google/common/collect/h7;)I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/e9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e9<",
            "Ljava/util/Map$Entry<",
            "TV;TK;>;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$b;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/h7$b$a;->iterator()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0
.end method
