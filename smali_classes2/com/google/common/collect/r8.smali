.class public final synthetic Lcom/google/common/collect/r8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Function;

.field public final synthetic b:Ljava/util/function/Function;

.field public final synthetic c:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/r8;->a:Ljava/util/function/Function;

    iput-object p2, p0, Lcom/google/common/collect/r8;->b:Ljava/util/function/Function;

    iput-object p3, p0, Lcom/google/common/collect/r8;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/r8;->a:Ljava/util/function/Function;

    iget-object v1, p0, Lcom/google/common/collect/r8;->b:Ljava/util/function/Function;

    iget-object v2, p0, Lcom/google/common/collect/r8;->c:Ljava/util/function/Function;

    check-cast p1, Lcom/google/common/collect/ImmutableTable$a;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/common/collect/z8;->e(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/common/collect/ImmutableTable$a;Ljava/lang/Object;)V

    return-void
.end method
