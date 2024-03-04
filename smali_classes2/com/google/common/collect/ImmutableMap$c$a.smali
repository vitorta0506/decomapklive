.class Lcom/google/common/collect/ImmutableMap$c$a;
.super Lcom/google/common/collect/n4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap$c;->createEntrySet()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/n4<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableMap$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$c$a;->a:Lcom/google/common/collect/ImmutableMap$c;

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
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$c$a;->a:Lcom/google/common/collect/ImmutableMap$c;

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/e9;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e9<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$c$a;->a:Lcom/google/common/collect/ImmutableMap$c;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$c;->a()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$c$a;->iterator()Lcom/google/common/collect/e9;

    move-result-object v0

    return-object v0
.end method
