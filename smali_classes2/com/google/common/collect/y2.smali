.class public final synthetic Lcom/google/common/collect/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/google/common/collect/c3$a;

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/c3$a;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/y2;->a:Lcom/google/common/collect/c3$a;

    iput-object p2, p0, Lcom/google/common/collect/y2;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/y2;->a:Lcom/google/common/collect/c3$a;

    iget-object v1, p0, Lcom/google/common/collect/y2;->b:Ljava/util/function/Consumer;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/c3$a;->d(Lcom/google/common/collect/c3$a;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
