.class public final synthetic Lcom/google/common/collect/b5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/ImmutableSortedMap$b$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/ImmutableSortedMap$b$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/b5;->a:Lcom/google/common/collect/ImmutableSortedMap$b$a;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/b5;->a:Lcom/google/common/collect/ImmutableSortedMap$b$a;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedMap$b$a;->d(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
