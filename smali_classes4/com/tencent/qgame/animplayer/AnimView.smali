.class public Lcom/tencent/qgame/animplayer/AnimView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qgame/animplayer/IAnimView;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/AnimView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00bb\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u000e\u0008\u0016\u0018\u0000 f2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001fB%\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\'\u001a\u00020\u0018H\u0002J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0018H\u0016J\u0010\u0010+\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0018H\u0007J\u0014\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0-H\u0016J\n\u0010.\u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010/\u001a\u00020)H\u0002J\u0008\u00100\u001a\u00020\u0018H\u0016J\u0008\u00101\u001a\u00020)H\u0014J\u0008\u00102\u001a\u00020)H\u0014J(\u00103\u001a\u00020)2\u0006\u00104\u001a\u00020\t2\u0006\u00105\u001a\u00020\t2\u0006\u00106\u001a\u00020\t2\u0006\u00107\u001a\u00020\tH\u0014J \u00108\u001a\u00020)2\u0006\u0010 \u001a\u00020!2\u0006\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u00020\tH\u0016J\u0010\u0010;\u001a\u00020\u00182\u0006\u0010 \u001a\u00020!H\u0016J \u0010<\u001a\u00020)2\u0006\u0010 \u001a\u00020!2\u0006\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u00020\tH\u0016J\u0010\u0010=\u001a\u00020)2\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010>\u001a\u00020)H\u0016J\u0008\u0010?\u001a\u00020)H\u0002J\u0012\u0010@\u001a\u00020)2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0012\u0010A\u001a\u00020)2\u0008\u0010B\u001a\u0004\u0018\u00010CH\u0016J\u0010\u0010D\u001a\u00020)2\u0006\u0010E\u001a\u00020\tH\u0016J\u0010\u0010F\u001a\u00020)2\u0006\u0010G\u001a\u00020\tH\u0016J\u0010\u0010H\u001a\u00020)2\u0006\u0010I\u001a\u00020\u0018H\u0016J\u0012\u0010J\u001a\u00020)2\u0008\u0010K\u001a\u0004\u0018\u00010LH\u0016J\u0010\u0010M\u001a\u00020)2\u0006\u0010N\u001a\u00020OH\u0016J\u0010\u0010M\u001a\u00020)2\u0006\u0010P\u001a\u00020QH\u0016J\u0010\u0010R\u001a\u00020)2\u0006\u0010S\u001a\u00020\tH\u0007J\u0018\u0010T\u001a\u00020)2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010T\u001a\u00020)2\u0006\u0010Y\u001a\u00020\u0016H\u0016J\u0010\u0010T\u001a\u00020)2\u0006\u0010Z\u001a\u00020[H\u0016J\u0008\u0010\\\u001a\u00020)H\u0016J\u0018\u0010]\u001a\u00020)2\u0006\u0010^\u001a\u00020\u00182\u0006\u0010_\u001a\u00020\u0018H\u0016J\u0016\u0010`\u001a\u00020)2\u000c\u0010a\u001a\u0008\u0012\u0004\u0012\u00020)0bH\u0002J\u0012\u0010c\u001a\u00020)2\u0008\u0010d\u001a\u0004\u0018\u00010eH\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\"\u001a\u00020#8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u0012\u001a\u0004\u0008$\u0010%\u00a8\u0006g"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/AnimView;",
        "Lcom/tencent/qgame/animplayer/IAnimView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "animListener",
        "Lcom/tencent/qgame/animplayer/inter/IAnimListener;",
        "animProxyListener",
        "com/tencent/qgame/animplayer/AnimView$animProxyListener$2$1",
        "getAnimProxyListener",
        "()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;",
        "animProxyListener$delegate",
        "Lkotlin/Lazy;",
        "innerTextureView",
        "Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;",
        "lastFile",
        "Lcom/tencent/qgame/animplayer/file/IFileContainer;",
        "needPrepareTextureView",
        "",
        "onSizeChangedCalled",
        "player",
        "Lcom/tencent/qgame/animplayer/AnimPlayer;",
        "prepareTextureViewRunnable",
        "Ljava/lang/Runnable;",
        "scaleTypeUtil",
        "Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;",
        "surface",
        "Landroid/graphics/SurfaceTexture;",
        "uiHandler",
        "Landroid/os/Handler;",
        "getUiHandler",
        "()Landroid/os/Handler;",
        "uiHandler$delegate",
        "belowKitKat",
        "enableAutoTxtColorFill",
        "",
        "enable",
        "enableVersion1",
        "getRealSize",
        "Lkotlin/Pair;",
        "getSurfaceTexture",
        "hide",
        "isRunning",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSurfaceTextureAvailable",
        "width",
        "height",
        "onSurfaceTextureDestroyed",
        "onSurfaceTextureSizeChanged",
        "onSurfaceTextureUpdated",
        "prepareTextureView",
        "release",
        "setAnimListener",
        "setFetchResource",
        "fetchResource",
        "Lcom/tencent/qgame/animplayer/inter/IFetchResource;",
        "setFps",
        "fps",
        "setLoop",
        "playLoop",
        "setMute",
        "isMute",
        "setOnResourceClickListener",
        "resourceClickListener",
        "Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;",
        "setScaleType",
        "scaleType",
        "Lcom/tencent/qgame/animplayer/util/IScaleType;",
        "type",
        "Lcom/tencent/qgame/animplayer/util/ScaleType;",
        "setVideoMode",
        "mode",
        "startPlay",
        "assetManager",
        "Landroid/content/res/AssetManager;",
        "assetsPath",
        "",
        "fileContainer",
        "file",
        "Ljava/io/File;",
        "stopPlay",
        "supportMask",
        "isSupport",
        "isEdgeBlur",
        "ui",
        "f",
        "Lkotlin/Function0;",
        "updateMaskConfig",
        "maskConfig",
        "Lcom/tencent/qgame/animplayer/mask/MaskConfig;",
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

.field public static final Companion:Lcom/tencent/qgame/animplayer/AnimView$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimPlayer.AnimView"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

.field private final animProxyListener$delegate:Lkotlin/Lazy;

.field private innerTextureView:Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;

.field private lastFile:Lcom/tencent/qgame/animplayer/file/IFileContainer;

.field private needPrepareTextureView:Z

.field private onSizeChangedCalled:Z

.field private player:Lcom/tencent/qgame/animplayer/AnimPlayer;

.field private final prepareTextureViewRunnable:Ljava/lang/Runnable;

.field private final scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

.field private surface:Landroid/graphics/SurfaceTexture;

.field private final uiHandler$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "uiHandler"

    const-string v4, "getUiHandler()Landroid/os/Handler;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "animProxyListener"

    const-string v4, "getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/qgame/animplayer/AnimView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/AnimView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/AnimView;->Companion:Lcom/tencent/qgame/animplayer/AnimView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p2, Lcom/tencent/qgame/animplayer/AnimView$uiHandler$2;->INSTANCE:Lcom/tencent/qgame/animplayer/AnimView$uiHandler$2;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView;->uiHandler$delegate:Lkotlin/Lazy;

    .line 4
    new-instance p2, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-direct {p2}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;-><init>()V

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    .line 5
    new-instance p2, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;

    invoke-direct {p2, p0}, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2;-><init>(Lcom/tencent/qgame/animplayer/AnimView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView;->animProxyListener$delegate:Lkotlin/Lazy;

    .line 6
    new-instance p2, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;

    invoke-direct {p2, p0, p1}, Lcom/tencent/qgame/animplayer/AnimView$prepareTextureViewRunnable$1;-><init>(Lcom/tencent/qgame/animplayer/AnimView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView;->prepareTextureViewRunnable:Ljava/lang/Runnable;

    .line 7
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->hide()V

    .line 8
    new-instance p1, Lcom/tencent/qgame/animplayer/AnimPlayer;

    invoke-direct {p1, p0}, Lcom/tencent/qgame/animplayer/AnimPlayer;-><init>(Lcom/tencent/qgame/animplayer/IAnimView;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    .line 9
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setAnimListener(Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    return-object p0
.end method

.method public static final synthetic access$getInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->innerTextureView:Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;

    return-object p0
.end method

.method public static final synthetic access$getLastFile$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/file/IFileContainer;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->lastFile:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    return-object p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/AnimPlayer;
    .locals 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez p0, :cond_0

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getScaleTypeUtil$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    return-object p0
.end method

.method public static final synthetic access$hide(Lcom/tencent/qgame/animplayer/AnimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->hide()V

    return-void
.end method

.method public static final synthetic access$setAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    return-void
.end method

.method public static final synthetic access$setInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->innerTextureView:Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;

    return-void
.end method

.method public static final synthetic access$setLastFile$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->lastFile:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    return-void
.end method

.method public static final synthetic access$setPlayer$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/AnimPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    return-void
.end method

.method private final belowKitKat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private final getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->animProxyListener$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/tencent/qgame/animplayer/AnimView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;

    return-object v0
.end method

.method private final getUiHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->uiHandler$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/tencent/qgame/animplayer/AnimView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method private final hide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->lastFile:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/file/IFileContainer;->close()V

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$hide$1;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/AnimView$hide$1;-><init>(Lcom/tencent/qgame/animplayer/AnimView;)V

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->ui(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final release()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->surface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to release mSurfaceTexture= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/qgame/animplayer/AnimView;->surface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnimPlayer.AnimView"

    invoke-virtual {v1, v3, v2, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->surface:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private final ui(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/qgame/animplayer/AnimView$ui$1;

    invoke-direct {v1, p1}, Lcom/tencent/qgame/animplayer/AnimView$ui$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public enableAutoTxtColorFill(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getPluginManager()Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->getMixAnimPlugin()Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->setAutoTxtColorFill(Z)V

    :cond_1
    return-void
.end method

.method public final enableVersion1(Z)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Compatible older version mp4, default false"
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setEnableVersion1(Z)V

    return-void
.end method

.method public getRealSize()Lkotlin/Pair;
    .locals 1
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

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getRealSize()Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->innerTextureView:Lcom/tencent/qgame/animplayer/textureview/InnerTextureView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->surface:Landroid/graphics/SurfaceTexture;

    :goto_0
    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimView"

    const-string v2, "onAttachedToWindow"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    const-string v1, "player"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setDetachedFromWindow(Z)V

    .line 4
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getPlayLoop()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->lastFile:Lcom/tencent/qgame/animplayer/file/IFileContainer;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimView"

    const-string v2, "onDetachedFromWindow"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->belowKitKat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->release()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    const-string v1, "player"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setDetachedFromWindow(Z)V

    .line 6
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->onSurfaceTextureDestroyed()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->onSizeChangedCalled:Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    sget-object p3, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSizeChanged w="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "AnimPlayer.AnimView"

    invoke-virtual {p3, v0, p4}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p3, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-virtual {p3, p1, p2}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->setLayoutSize(II)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->onSizeChangedCalled:Z

    .line 5
    iget-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->needPrepareTextureView:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->needPrepareTextureView:Z

    .line 7
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/AnimView;->prepareTextureView()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.AnimView"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->surface:Landroid/graphics/SurfaceTexture;

    .line 3
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez p1, :cond_0

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/tencent/qgame/animplayer/AnimPlayer;->onSurfaceTextureAvailable(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "AnimPlayer.AnimView"

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez p1, :cond_0

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->onSurfaceTextureDestroyed()V

    .line 3
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$onSurfaceTextureDestroyed$1;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/AnimView$onSurfaceTextureDestroyed$1;-><init>(Lcom/tencent/qgame/animplayer/AnimView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->belowKitKat()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureSizeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimPlayer.AnimView"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez p1, :cond_0

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/tencent/qgame/animplayer/AnimPlayer;->onSurfaceTextureSizeChanged(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public prepareTextureView()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->onSizeChangedCalled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/AnimView;->prepareTextureViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimView"

    const-string v2, "onSizeChanged not called"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->needPrepareTextureView:Z

    :goto_0
    return-void
.end method

.method public setAnimListener(Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V
    .locals 0
    .param p1    # Lcom/tencent/qgame/animplayer/inter/IAnimListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    return-void
.end method

.method public setFetchResource(Lcom/tencent/qgame/animplayer/inter/IFetchResource;)V
    .locals 2
    .param p1    # Lcom/tencent/qgame/animplayer/inter/IFetchResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getPluginManager()Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->getMixAnimPlugin()Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->setResourceRequest(Lcom/tencent/qgame/animplayer/inter/IFetchResource;)V

    :cond_1
    return-void
.end method

.method public setFps(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.AnimView"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setDefaultFps(I)V

    return-void
.end method

.method public setLoop(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setPlayLoop(I)V

    return-void
.end method

.method public setMute(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.AnimView"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setMute(Z)V

    return-void
.end method

.method public setOnResourceClickListener(Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;)V
    .locals 2
    .param p1    # Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->getPluginManager()Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/plugin/AnimPluginManager;->getMixAnimPlugin()Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->setResourceClickListener(Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;)V

    :cond_1
    return-void
.end method

.method public setScaleType(Lcom/tencent/qgame/animplayer/util/IScaleType;)V
    .locals 1
    .param p1    # Lcom/tencent/qgame/animplayer/util/IScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->setScaleTypeImpl(Lcom/tencent/qgame/animplayer/util/IScaleType;)V

    return-void
.end method

.method public setScaleType(Lcom/tencent/qgame/animplayer/util/ScaleType;)V
    .locals 1
    .param p1    # Lcom/tencent/qgame/animplayer/util/ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->setCurrentScaleType(Lcom/tencent/qgame/animplayer/util/ScaleType;)V

    return-void
.end method

.method public final setVideoMode(I)V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Compatible older version mp4"
    .end annotation

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setVideoMode(I)V

    return-void
.end method

.method public startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/res/AssetManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 5
    :try_start_0
    new-instance v0, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qgame/animplayer/file/AssetsFileContainer;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;

    move-result-object p1

    const/16 p2, 0x2717

    const-string v0, "0x7 file can\'t read"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->onFailed(ILjava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->onVideoComplete()V

    :goto_0
    return-void
.end method

.method public startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    .locals 1
    .param p1    # Lcom/tencent/qgame/animplayer/file/IFileContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 9
    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qgame/animplayer/AnimView$startPlay$1;-><init>(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/file/IFileContainer;)V

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->ui(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public startPlay(Ljava/io/File;)V
    .locals 2
    .param p1    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    new-instance v0, Lcom/tencent/qgame/animplayer/file/FileContainer;

    invoke-direct {v0, p1}, Lcom/tencent/qgame/animplayer/file/FileContainer;-><init>(Ljava/io/File;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Lcom/tencent/qgame/animplayer/file/IFileContainer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :catchall_0
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;

    move-result-object p1

    const/16 v0, 0x2717

    const-string v1, "0x7 file can\'t read"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->onFailed(ILjava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;->onVideoComplete()V

    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimPlayer;->stopPlay()V

    return-void
.end method

.method public supportMask(ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    const-string v1, "player"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setSupportMaskBoolean(Z)V

    .line 2
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Lcom/tencent/qgame/animplayer/AnimPlayer;->setMaskEdgeBlurBoolean(Z)V

    return-void
.end method

.method public updateMaskConfig(Lcom/tencent/qgame/animplayer/mask/MaskConfig;)V
    .locals 2
    .param p1    # Lcom/tencent/qgame/animplayer/mask/MaskConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/AnimPlayer;

    if-nez v0, :cond_0

    const-string v1, "player"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimPlayer;->updateMaskConfig(Lcom/tencent/qgame/animplayer/mask/MaskConfig;)V

    return-void
.end method
