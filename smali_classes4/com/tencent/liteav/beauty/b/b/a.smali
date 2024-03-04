.class public final Lcom/tencent/liteav/beauty/b/b/a;
.super Lcom/tencent/liteav/videobase/a/k;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/beauty/b/b;


# instance fields
.field private final b:Lcom/tencent/liteav/beauty/b/b/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/tencent/liteav/beauty/b/b/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/tencent/liteav/beauty/b/b/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/tencent/liteav/beauty/b/b/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:F

.field private g:F

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videobase/a/k;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    .line 2
    iput v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->f:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 3
    iput v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->g:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->h:I

    .line 5
    iput v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->i:I

    .line 6
    new-instance v0, Lcom/tencent/liteav/beauty/b/b/b;

    invoke-direct {v0}, Lcom/tencent/liteav/beauty/b/b/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->e:Lcom/tencent/liteav/beauty/b/b/b;

    .line 7
    new-instance v1, Lcom/tencent/liteav/beauty/b/b/d;

    invoke-direct {v1}, Lcom/tencent/liteav/beauty/b/b/d;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/beauty/b/b/a;->b:Lcom/tencent/liteav/beauty/b/b/d;

    .line 8
    new-instance v2, Lcom/tencent/liteav/beauty/b/b/e;

    invoke-direct {v2}, Lcom/tencent/liteav/beauty/b/b/e;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/beauty/b/b/a;->c:Lcom/tencent/liteav/beauty/b/b/e;

    .line 9
    new-instance v3, Lcom/tencent/liteav/beauty/b/b/c;

    invoke-direct {v3}, Lcom/tencent/liteav/beauty/b/b/c;-><init>()V

    iput-object v3, p0, Lcom/tencent/liteav/beauty/b/b/a;->d:Lcom/tencent/liteav/beauty/b/b/c;

    .line 10
    iget-object v4, p0, Lcom/tencent/liteav/videobase/a/k;->a:Lcom/tencent/liteav/videobase/a/k$a;

    .line 11
    invoke-virtual {p0, v1}, Lcom/tencent/liteav/videobase/a/k;->a(Lcom/tencent/liteav/videobase/a/b;)Lcom/tencent/liteav/videobase/a/k$a;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v4}, Lcom/tencent/liteav/videobase/a/k$a;->a(Lcom/tencent/liteav/videobase/a/k$a;)V

    .line 13
    invoke-virtual {p0, v2}, Lcom/tencent/liteav/videobase/a/k;->a(Lcom/tencent/liteav/videobase/a/b;)Lcom/tencent/liteav/videobase/a/k$a;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Lcom/tencent/liteav/videobase/a/k$a;->a(Lcom/tencent/liteav/videobase/a/k$a;)V

    const-string v1, "inputImageTexture2"

    .line 15
    invoke-virtual {v2, v1, v4}, Lcom/tencent/liteav/videobase/a/k$a;->a(Ljava/lang/String;Lcom/tencent/liteav/videobase/a/k$a;)V

    .line 16
    invoke-virtual {p0, v3}, Lcom/tencent/liteav/videobase/a/k;->a(Lcom/tencent/liteav/videobase/a/b;)Lcom/tencent/liteav/videobase/a/k$a;

    move-result-object v3

    .line 17
    invoke-virtual {v3, v2}, Lcom/tencent/liteav/videobase/a/k$a;->a(Lcom/tencent/liteav/videobase/a/k$a;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videobase/a/k;->a(Lcom/tencent/liteav/videobase/a/b;)Lcom/tencent/liteav/videobase/a/k$a;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v3}, Lcom/tencent/liteav/videobase/a/k$a;->a(Lcom/tencent/liteav/videobase/a/k$a;)V

    .line 20
    invoke-virtual {v0, v1, v4}, Lcom/tencent/liteav/videobase/a/k$a;->a(Ljava/lang/String;Lcom/tencent/liteav/videobase/a/k$a;)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->c:Lcom/tencent/liteav/beauty/b/b/e;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setBeautyLevel "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmoothVertical"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput p1, v0, Lcom/tencent/liteav/beauty/b/b/e;->b:F

    .line 4
    iget v1, v0, Lcom/tencent/liteav/beauty/b/b/e;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    return-void
.end method

.method public final b(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->e:Lcom/tencent/liteav/beauty/b/b/b;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setWhitenessLevel "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeautyBlend"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput p1, v0, Lcom/tencent/liteav/beauty/b/b/b;->c:F

    .line 4
    iget v1, v0, Lcom/tencent/liteav/beauty/b/b/b;->a:I

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    return-void
.end method

.method public final c(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->e:Lcom/tencent/liteav/beauty/b/b/b;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setRuddyLevel "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeautyBlend"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput p1, v0, Lcom/tencent/liteav/beauty/b/b/b;->d:F

    .line 4
    iget v1, v0, Lcom/tencent/liteav/beauty/b/b/b;->b:I

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/tencent/liteav/videobase/a/b;->setFloatOnDraw(IF)V

    return-void
.end method

.method public final canBeSkipped()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->c:Lcom/tencent/liteav/beauty/b/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/beauty/b/b/e;->canBeSkipped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->e:Lcom/tencent/liteav/beauty/b/b/b;

    invoke-virtual {v0}, Lcom/tencent/liteav/beauty/b/b/b;->canBeSkipped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->d:Lcom/tencent/liteav/beauty/b/b/c;

    .line 2
    invoke-virtual {v0}, Lcom/tencent/liteav/beauty/b/b/c;->canBeSkipped()Z

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
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setSharpenLevel "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautySmoothFilter"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/tencent/liteav/beauty/b/b/a;->f:F

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->d:Lcom/tencent/liteav/beauty/b/b/c;

    const v1, 0x3f99999a    # 1.2f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/beauty/b/b/c;->a(F)V

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/liteav/videobase/a/k;->onOutputSizeChanged(II)V

    .line 2
    iput p1, p0, Lcom/tencent/liteav/beauty/b/b/a;->h:I

    .line 3
    iput p2, p0, Lcom/tencent/liteav/beauty/b/b/a;->i:I

    .line 4
    iget p1, p0, Lcom/tencent/liteav/beauty/b/b/a;->g:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double p1, p1

    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 5
    iget p1, p0, Lcom/tencent/liteav/beauty/b/b/a;->h:I

    int-to-float p1, p1

    iget p2, p0, Lcom/tencent/liteav/beauty/b/b/a;->g:F

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/b/a;->h:I

    .line 6
    iget p1, p0, Lcom/tencent/liteav/beauty/b/b/a;->i:I

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/tencent/liteav/beauty/b/b/a;->i:I

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 7
    iget v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->g:F

    .line 8
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x1

    iget v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x2

    iget v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string p2, "BeautySmoothFilter"

    const-string v0, "mResampleRatio: %f, mResampleWidth: %d, mResampleHeight: %d"

    .line 9
    invoke-static {p2, v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/b/a;->b:Lcom/tencent/liteav/beauty/b/b/d;

    iget p2, p0, Lcom/tencent/liteav/beauty/b/b/a;->h:I

    iget v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->i:I

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/beauty/b/b/d;->onOutputSizeChanged(II)V

    .line 11
    iget-object p1, p0, Lcom/tencent/liteav/beauty/b/b/a;->c:Lcom/tencent/liteav/beauty/b/b/e;

    iget p2, p0, Lcom/tencent/liteav/beauty/b/b/a;->h:I

    iget v0, p0, Lcom/tencent/liteav/beauty/b/b/a;->i:I

    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/beauty/b/b/e;->onOutputSizeChanged(II)V

    return-void
.end method
