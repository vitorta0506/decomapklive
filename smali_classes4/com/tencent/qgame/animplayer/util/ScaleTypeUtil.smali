.class public final Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 12\u00020\u0001:\u00011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010$\u001a\u00020%H\u0002J\u0008\u0010\u0005\u001a\u00020\u001dH\u0002J\u0010\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)J\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0+J\u0016\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\n2\u0006\u0010/\u001a\u00020\nJ\u0016\u00100\u001a\u00020-2\u0006\u0010.\u001a\u00020\n2\u0006\u0010/\u001a\u00020\nR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0011\u001a\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u000e\u0010\"\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00062"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;",
        "",
        "()V",
        "currentScaleType",
        "Lcom/tencent/qgame/animplayer/util/ScaleType;",
        "getCurrentScaleType",
        "()Lcom/tencent/qgame/animplayer/util/ScaleType;",
        "setCurrentScaleType",
        "(Lcom/tencent/qgame/animplayer/util/ScaleType;)V",
        "layoutHeight",
        "",
        "layoutWidth",
        "scaleTypeCenterCrop",
        "Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;",
        "getScaleTypeCenterCrop",
        "()Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;",
        "scaleTypeCenterCrop$delegate",
        "Lkotlin/Lazy;",
        "scaleTypeFitCenter",
        "Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;",
        "getScaleTypeFitCenter",
        "()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;",
        "scaleTypeFitCenter$delegate",
        "scaleTypeFitXY",
        "Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;",
        "getScaleTypeFitXY",
        "()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;",
        "scaleTypeFitXY$delegate",
        "scaleTypeImpl",
        "Lcom/tencent/qgame/animplayer/util/IScaleType;",
        "getScaleTypeImpl",
        "()Lcom/tencent/qgame/animplayer/util/IScaleType;",
        "setScaleTypeImpl",
        "(Lcom/tencent/qgame/animplayer/util/IScaleType;)V",
        "videoHeight",
        "videoWidth",
        "checkParams",
        "",
        "getLayoutParam",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "view",
        "Landroid/view/View;",
        "getRealSize",
        "Lkotlin/Pair;",
        "setLayoutSize",
        "",
        "w",
        "h",
        "setVideoSize",
        "Companion",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.ScaleTypeUtil"


# instance fields
.field private currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private layoutHeight:I

.field private layoutWidth:I

.field private final scaleTypeCenterCrop$delegate:Lkotlin/Lazy;

.field private final scaleTypeFitCenter$delegate:Lkotlin/Lazy;

.field private final scaleTypeFitXY$delegate:Lkotlin/Lazy;

.field private scaleTypeImpl:Lcom/tencent/qgame/animplayer/util/IScaleType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "scaleTypeFitXY"

    const-string v5, "getScaleTypeFitXY()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "scaleTypeFitCenter"

    const-string v5, "getScaleTypeFitCenter()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v3, "scaleTypeCenterCrop"

    const-string v4, "getScaleTypeCenterCrop()Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->Companion:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeFitXY$2;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeFitXY$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeFitXY$delegate:Lkotlin/Lazy;

    .line 3
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeFitCenter$2;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeFitCenter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeFitCenter$delegate:Lkotlin/Lazy;

    .line 4
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeCenterCrop$2;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeCenterCrop$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeCenterCrop$delegate:Lkotlin/Lazy;

    .line 5
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ScaleType;->FIT_XY:Lcom/tencent/qgame/animplayer/util/ScaleType;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;

    return-void
.end method

.method private final checkParams()Z
    .locals 1

    iget v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoHeight:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final getCurrentScaleType()Lcom/tencent/qgame/animplayer/util/IScaleType;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeImpl:Lcom/tencent/qgame/animplayer/util/IScaleType;

    const-string v1, "AnimPlayer.ScaleTypeUtil"

    if-eqz v0, :cond_0

    .line 3
    sget-object v2, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v3, "custom scaleType"

    invoke-virtual {v2, v1, v3}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;

    sget-object v1, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getScaleTypeCenterCrop()Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getScaleTypeFitCenter()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getScaleTypeFitXY()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final getScaleTypeCenterCrop()Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeCenterCrop$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;

    return-object v0
.end method

.method private final getScaleTypeFitCenter()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeFitCenter$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;

    return-object v0
.end method

.method private final getScaleTypeFitXY()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeFitXY$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;

    return-object v0
.end method


# virtual methods
.method public final getCurrentScaleType()Lcom/tencent/qgame/animplayer/util/ScaleType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;

    return-object v0
.end method

.method public final getLayoutParam(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_2
    move-object v6, v0

    .line 3
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->checkParams()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "params error: layoutWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimPlayer.ScaleTypeUtil"

    .line 6
    invoke-virtual {p1, v1, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getCurrentScaleType()Lcom/tencent/qgame/animplayer/util/IScaleType;

    move-result-object v1

    .line 8
    iget v2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutWidth:I

    .line 9
    iget v3, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutHeight:I

    .line 10
    iget v4, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoWidth:I

    .line 11
    iget v5, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoHeight:I

    .line 12
    invoke-interface/range {v1 .. v6}, Lcom/tencent/qgame/animplayer/util/IScaleType;->getLayoutParam(IIIILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final getRealSize()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getCurrentScaleType()Lcom/tencent/qgame/animplayer/util/IScaleType;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/util/IScaleType;->getRealSize()Lkotlin/Pair;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get real size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnimPlayer.ScaleTypeUtil"

    invoke-virtual {v1, v3, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getScaleTypeImpl()Lcom/tencent/qgame/animplayer/util/IScaleType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeImpl:Lcom/tencent/qgame/animplayer/util/IScaleType;

    return-object v0
.end method

.method public final setCurrentScaleType(Lcom/tencent/qgame/animplayer/util/ScaleType;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/util/ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;

    return-void
.end method

.method public final setLayoutSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutWidth:I

    .line 2
    iput p2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutHeight:I

    return-void
.end method

.method public final setScaleTypeImpl(Lcom/tencent/qgame/animplayer/util/IScaleType;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/util/IScaleType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeImpl:Lcom/tencent/qgame/animplayer/util/IScaleType;

    return-void
.end method

.method public final setVideoSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoWidth:I

    .line 2
    iput p2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoHeight:I

    return-void
.end method
