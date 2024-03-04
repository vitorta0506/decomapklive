.class Lcom/google/common/collect/ImmutableBiMap$b;
.super Lcom/google/common/collect/ImmutableMap$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$e<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$e;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method


# virtual methods
.method bridge synthetic b(I)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableBiMap$b;->c(I)Lcom/google/common/collect/ImmutableBiMap$a;

    move-result-object p1

    return-object p1
.end method

.method c(I)Lcom/google/common/collect/ImmutableBiMap$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableBiMap$a<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$a;

    invoke-direct {v0, p1}, Lcom/google/common/collect/ImmutableBiMap$a;-><init>(I)V

    return-object v0
.end method
