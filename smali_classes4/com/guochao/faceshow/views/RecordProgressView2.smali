.class public final Lcom/guochao/faceshow/views/RecordProgressView2;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/RecordProgressView2$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010!\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u00013B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001a\u0010*\u001a\u00020+2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0012\u0010,\u001a\u00020+2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u0014J\u0006\u0010/\u001a\u00020+J\u0006\u00100\u001a\u00020+J\u0006\u00101\u001a\u00020+J\u0006\u00102\u001a\u00020+R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR$\u0010\u001f\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u0015@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010$\u001a\u0004\u0018\u00010%X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)\u00a8\u00064"
    }
    d2 = {
        "Lcom/guochao/faceshow/views/RecordProgressView2;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attributes",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "colorProgress",
        "getColorProgress",
        "()I",
        "setColorProgress",
        "(I)V",
        "colorpending",
        "getColorpending",
        "setColorpending",
        "list",
        "",
        "",
        "getList",
        "()Ljava/util/List;",
        "setList",
        "(Ljava/util/List;)V",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "value",
        "progress",
        "getProgress",
        "()F",
        "setProgress",
        "(F)V",
        "status",
        "Lcom/guochao/faceshow/views/RecordProgressView2$Status;",
        "getStatus",
        "()Lcom/guochao/faceshow/views/RecordProgressView2$Status;",
        "setStatus",
        "(Lcom/guochao/faceshow/views/RecordProgressView2$Status;)V",
        "initData",
        "",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onEnd",
        "onPause",
        "onStart",
        "revocation",
        "Status",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private colorProgress:I

.field private colorpending:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progress:F

.field private status:Lcom/guochao/faceshow/views/RecordProgressView2$Status;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorProgress:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorpending:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->progress:F

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    .line 7
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/views/RecordProgressView2;->initData(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorProgress:I

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorpending:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->progress:F

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    .line 18
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    .line 22
    invoke-direct {p0, p2, p1}, Lcom/guochao/faceshow/views/RecordProgressView2;->initData(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f06006a

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorProgress:I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060097

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorpending:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 27
    iput p3, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->progress:F

    .line 28
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    .line 29
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 31
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iput-object p3, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    .line 33
    invoke-direct {p0, p2, p1}, Lcom/guochao/faceshow/views/RecordProgressView2;->initData(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method private final initData(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getColorProgress()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorProgress:I

    return v0
.end method

.method public final getColorpending()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorpending:I

    return v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    return-object v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getProgress()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->progress:F

    return v0
.end method

.method public final getStatus()Lcom/guochao/faceshow/views/RecordProgressView2$Status;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->status:Lcom/guochao/faceshow/views/RecordProgressView2$Status;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->status:Lcom/guochao/faceshow/views/RecordProgressView2$Status;

    sget-object v1, Lcom/guochao/faceshow/views/RecordProgressView2$Status;->Pause:Lcom/guochao/faceshow/views/RecordProgressView2$Status;

    const/16 v2, 0x168

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorProgress:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float v5, v0, v3

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float v6, v0, v3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v3

    sub-float v7, v0, v1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    div-float/2addr v1, v3

    sub-float v8, v0, v1

    const/high16 v9, -0x3d4c0000    # -90.0f

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->progress:F

    int-to-float v1, v2

    mul-float v10, v0, v1

    const/4 v11, 0x0

    .line 10
    iget-object v12, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    .line 11
    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    int-to-float v2, v2

    mul-float v0, v0, v2

    .line 14
    iget-object v4, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iget-object v5, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v4, v1

    mul-float v1, v4, v2

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorProgress:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object v2, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float v5, v2, v3

    .line 17
    iget-object v2, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float v6, v2, v3

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    sub-float v7, v2, v4

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    sub-float v8, v2, v4

    const/high16 v9, -0x3d4c0000    # -90.0f

    const/4 v11, 0x0

    .line 20
    iget-object v12, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v10, v0

    .line 21
    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 22
    iget-object v2, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorpending:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    iget-object v2, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float v6, v2, v3

    .line 24
    iget-object v2, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float v7, v2, v3

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    sub-float v8, v2, v4

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    sub-float v9, v2, v4

    sub-float/2addr v0, v1

    const/high16 v2, 0x42b40000    # 90.0f

    sub-float v10, v0, v2

    const/4 v12, 0x0

    .line 27
    iget-object v13, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->paint:Landroid/graphics/Paint;

    move-object v5, p1

    move v11, v1

    .line 28
    invoke-virtual/range {v5 .. v13}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onEnd()V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/views/RecordProgressView2$Status;->End:Lcom/guochao/faceshow/views/RecordProgressView2$Status;

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->status:Lcom/guochao/faceshow/views/RecordProgressView2$Status;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    iget v1, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->progress:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    sget-object v0, Lcom/guochao/faceshow/views/RecordProgressView2$Status;->Pause:Lcom/guochao/faceshow/views/RecordProgressView2$Status;

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->status:Lcom/guochao/faceshow/views/RecordProgressView2$Status;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/views/RecordProgressView2$Status;->Start:Lcom/guochao/faceshow/views/RecordProgressView2$Status;

    iput-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->status:Lcom/guochao/faceshow/views/RecordProgressView2$Status;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final revocation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setColorProgress(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorProgress:I

    return-void
.end method

.method public final setColorpending(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->colorpending:I

    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->list:Ljava/util/List;

    return-void
.end method

.method public final setProgress(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->progress:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->progress:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setStatus(Lcom/guochao/faceshow/views/RecordProgressView2$Status;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/views/RecordProgressView2$Status;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/views/RecordProgressView2;->status:Lcom/guochao/faceshow/views/RecordProgressView2$Status;

    return-void
.end method
