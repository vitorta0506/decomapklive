.class Lcom/google/common/collect/s4$a;
.super Lcom/google/common/collect/e9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/s4;->iterator()Lcom/google/common/collect/e9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e9<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/e9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e9<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/collect/s4;


# direct methods
.method constructor <init>(Lcom/google/common/collect/s4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/s4$a;->b:Lcom/google/common/collect/s4;

    invoke-direct {p0}, Lcom/google/common/collect/e9;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/s4;->d(Lcom/google/common/collect/s4;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/e9;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/s4$a;->a:Lcom/google/common/collect/e9;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/s4$a;->a:Lcom/google/common/collect/e9;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/s4$a;->a:Lcom/google/common/collect/e9;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
