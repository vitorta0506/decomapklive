.class public final synthetic Lcom/google/common/collect/g6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/g6;->a:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/g6;->a:Ljava/util/function/BiConsumer;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p1}, Lcom/google/common/collect/h6;->b(Ljava/util/function/BiConsumer;Ljava/util/Map$Entry;)V

    return-void
.end method
