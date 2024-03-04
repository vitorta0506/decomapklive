.class public final Lcom/tencent/liteav/beauty/b/c/a;
.super Lcom/tencent/liteav/videobase/a/h;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/beauty/b/b;


# instance fields
.field private final a:Lcom/tencent/liteav/beauty/b/c/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lcom/tencent/liteav/beauty/b/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->c:F

    .line 3
    iput v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->d:F

    .line 4
    iput v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->e:F

    .line 5
    iput v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->f:F

    .line 6
    new-instance v0, Lcom/tencent/liteav/beauty/b/c/b;

    invoke-direct {v0}, Lcom/tencent/liteav/beauty/b/c/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->a:Lcom/tencent/liteav/beauty/b/c/b;

    .line 7
    new-instance v1, Lcom/tencent/liteav/beauty/b/m;

    invoke-direct {v1}, Lcom/tencent/liteav/beauty/b/m;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/beauty/b/c/a;->b:Lcom/tencent/liteav/beauty/b/m;

    .line 8
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videobase/a/h;->addFilter(Lcom/tencent/liteav/videobase/a/b;)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videobase/a/h;->addFilter(Lcom/tencent/liteav/videobase/a/b;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tencent/liteav/beauty/b/c/a;->c:F

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->a:Lcom/tencent/liteav/beauty/b/c/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/b/c/b;->a(F)V

    return-void
.end method

.method public final b(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tencent/liteav/beauty/b/c/a;->d:F

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->a:Lcom/tencent/liteav/beauty/b/c/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/b/c/b;->b(F)V

    return-void
.end method

.method public final c(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/tencent/liteav/beauty/b/c/a;->e:F

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->a:Lcom/tencent/liteav/beauty/b/c/b;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/b/c/b;->c(F)V

    return-void
.end method

.method public final canBeSkipped()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->a:Lcom/tencent/liteav/beauty/b/c/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/beauty/b/c/b;->canBeSkipped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->b:Lcom/tencent/liteav/beauty/b/m;

    invoke-virtual {v0}, Lcom/tencent/liteav/beauty/b/m;->canBeSkipped()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/tencent/liteav/beauty/b/c/a;->f:F

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->b:Lcom/tencent/liteav/beauty/b/m;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/b/m;->a(F)V

    return-void
.end method

.method public final onInit(Lcom/tencent/liteav/videobase/frame/e;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/tencent/liteav/videobase/a/h;->onInit(Lcom/tencent/liteav/videobase/frame/e;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/c/a;->a:Lcom/tencent/liteav/beauty/b/c/b;

    iget v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->c:F

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/beauty/b/c/b;->a(F)V

    .line 3
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/c/a;->a:Lcom/tencent/liteav/beauty/b/c/b;

    iget v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->d:F

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/beauty/b/c/b;->b(F)V

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/c/a;->a:Lcom/tencent/liteav/beauty/b/c/b;

    iget v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->e:F

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/beauty/b/c/b;->c(F)V

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/c/a;->b:Lcom/tencent/liteav/beauty/b/m;

    iget v0, p0, Lcom/tencent/liteav/beauty/b/c/a;->f:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/beauty/b/m;->a(F)V

    return-void
.end method
