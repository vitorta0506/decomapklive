.class public final synthetic Lcom/google/common/collect/o5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Lcom/google/common/base/h;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Lcom/google/common/base/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/o5;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/google/common/collect/o5;->b:Lcom/google/common/base/h;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/o5;->a:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/google/common/collect/o5;->b:Lcom/google/common/base/h;

    invoke-static {v0, v1, p1}, Lcom/google/common/collect/n5$b;->u(Ljava/util/function/Consumer;Lcom/google/common/base/h;Ljava/lang/Object;)V

    return-void
.end method
