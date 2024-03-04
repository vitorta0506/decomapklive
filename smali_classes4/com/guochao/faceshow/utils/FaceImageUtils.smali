.class public Lcom/guochao/faceshow/utils/FaceImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p0, v1, p1

    new-array p0, v0, [[I

    new-array v0, p1, [I

    const v3, 0x10100a1

    aput v3, v0, v2

    aput-object v0, p0, v2

    new-array v0, v2, [I

    aput-object v0, p0, p1

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, p0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public static createDrawable(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    const/4 v0, -0x1

    .line 10
    invoke-static {p0, v0, v0, p1}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {v0, p0, p1, p2, p3}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createDrawable(IIIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v3, 0x1

    aput p0, v1, v3

    const/16 p0, 0x8

    new-array p0, p0, [F

    int-to-float p2, p2

    aput p2, p0, v2

    aput p2, p0, v3

    int-to-float p2, p3

    aput p2, p0, v0

    const/4 p3, 0x3

    aput p2, p0, p3

    int-to-float p2, p4

    const/4 p3, 0x4

    aput p2, p0, p3

    const/4 p3, 0x5

    aput p2, p0, p3

    int-to-float p1, p1

    const/4 p2, 0x6

    aput p1, p0, p2

    const/4 p2, 0x7

    aput p1, p0, p2

    const/4 p1, 0x0

    const/4 p2, -0x1

    .line 8
    invoke-static {p1, v1, p2, p2, p0}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;[III[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createDrawable(I[F)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 p0, 0x0

    const/4 v1, -0x1

    .line 9
    invoke-static {p0, v0, v1, v1, p1}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;[III[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float p4, p4

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 v2, 0x1

    aput p4, v0, v2

    const/4 v3, 0x2

    aput p4, v0, v3

    const/4 v4, 0x3

    aput p4, v0, v4

    const/4 v4, 0x4

    aput p4, v0, v4

    const/4 v4, 0x5

    aput p4, v0, v4

    const/4 v4, 0x6

    aput p4, v0, v4

    const/4 v4, 0x7

    aput p4, v0, v4

    new-array p4, v3, [I

    aput p1, p4, v1

    aput p1, p4, v2

    .line 6
    invoke-static {p0, p4, p2, p3, v0}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;[III[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;[II)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float p2, p2

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p2, v0, v1

    const/4 v1, 0x5

    aput p2, v0, v1

    const/4 v1, 0x6

    aput p2, v0, v1

    const/4 v1, 0x7

    aput p2, v0, v1

    const/4 p2, -0x1

    .line 11
    invoke-static {p0, p1, p2, p2, v0}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;[III[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static createDrawable(Landroid/graphics/drawable/GradientDrawable$Orientation;[III[F)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    const/4 p0, -0x1

    if-ne p2, p0, :cond_1

    if-eq p3, p0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 5
    :cond_2
    invoke-virtual {v0, p4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-object v0
.end method

.method public static createRingDrawable(I)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 3
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v1
.end method

.method public static createSelectorDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v3, [I

    .line 3
    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
