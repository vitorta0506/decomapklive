.class public Lcom/airbnb/lottie/model/layer/e;
.super Lcom/airbnb/lottie/model/layer/a;
.source "SourceFile"


# instance fields
.field private final B:Le/d;

.field private final C:Lcom/airbnb/lottie/model/layer/b;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/Layer;Lcom/airbnb/lottie/model/layer/b;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    iput-object p3, p0, Lcom/airbnb/lottie/model/layer/e;->C:Lcom/airbnb/lottie/model/layer/b;

    .line 3
    new-instance p3, Lj/j;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->n()Ljava/util/List;

    move-result-object p2

    const-string v0, "__container"

    const/4 v1, 0x0

    invoke-direct {p3, v0, p2, v1}, Lj/j;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 4
    new-instance p2, Le/d;

    invoke-direct {p2, p1, p0, p3}, Le/d;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lj/j;)V

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/e;->B:Le/d;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Le/d;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected G(Lh/d;ILjava/util/List;Lh/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/d;",
            "I",
            "Ljava/util/List<",
            "Lh/d;",
            ">;",
            "Lh/d;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->B:Le/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/d;->e(Lh/d;ILjava/util/List;Lh/d;)V

    return-void
.end method

.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/e;->B:Le/d;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Le/d;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->B:Le/d;

    invoke-virtual {v0, p1, p2, p3}, Le/d;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public v()Lj/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/airbnb/lottie/model/layer/a;->v()Lj/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->C:Lcom/airbnb/lottie/model/layer/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/a;->v()Lj/a;

    move-result-object v0

    return-object v0
.end method

.method public x()Ll/j;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/airbnb/lottie/model/layer/a;->x()Ll/j;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/e;->C:Lcom/airbnb/lottie/model/layer/b;

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/layer/a;->x()Ll/j;

    move-result-object v0

    return-object v0
.end method
