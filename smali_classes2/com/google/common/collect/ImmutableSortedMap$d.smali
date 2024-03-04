.class Lcom/google/common/collect/ImmutableSortedMap$d;
.super Lcom/google/common/collect/ImmutableMap$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
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


# instance fields
.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$e;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$d;->c:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method bridge synthetic b(I)Lcom/google/common/collect/ImmutableMap$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$d;->c(I)Lcom/google/common/collect/ImmutableSortedMap$c;

    move-result-object p1

    return-object p1
.end method

.method c(I)Lcom/google/common/collect/ImmutableSortedMap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableSortedMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/collect/ImmutableSortedMap$c;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$d;->c:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Lcom/google/common/collect/ImmutableSortedMap$c;-><init>(Ljava/util/Comparator;)V

    return-object p1
.end method
