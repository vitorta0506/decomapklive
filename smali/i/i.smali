.class public Li/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/m<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Li/b;

.field private final b:Li/b;


# direct methods
.method public constructor <init>(Li/b;Li/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/i;->a:Li/b;

    .line 3
    iput-object p2, p0, Li/i;->b:Li/b;

    return-void
.end method


# virtual methods
.method public a()Lf/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/n;

    iget-object v1, p0, Li/i;->a:Li/b;

    .line 2
    invoke-virtual {v1}, Li/b;->a()Lf/a;

    move-result-object v1

    iget-object v2, p0, Li/i;->b:Li/b;

    invoke-virtual {v2}, Li/b;->a()Lf/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lf/n;-><init>(Lf/a;Lf/a;)V

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln/a<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Li/i;->a:Li/b;

    invoke-virtual {v0}, Li/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/i;->b:Li/b;

    invoke-virtual {v0}, Li/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
