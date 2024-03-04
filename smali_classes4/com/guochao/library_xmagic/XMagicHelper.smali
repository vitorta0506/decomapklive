.class public final Lcom/guochao/library_xmagic/XMagicHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/library_xmagic/a;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/library_xmagic/XMagicHelper$XmagicProcessor;,
        Lcom/guochao/library_xmagic/XMagicHelper$Processor;,
        Lcom/guochao/library_xmagic/XMagicHelper$Companion;,
        Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 G2\u00020\u00012\u00020\u0002:\u0004GHIJB\u000f\u0012\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008E\u0010FJ\u0014\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\u0002J\u0006\u0010\u0008\u001a\u00020\u0007J\u0006\u0010\t\u001a\u00020\u0007J\u0006\u0010\n\u001a\u00020\u0007J\u001e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000bJ\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0014\u0010\u0012\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0003J\u0008\u0010\u0013\u001a\u00020\u0007H\u0016J\u0010\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0018\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u000bH\u0016J\u0006\u0010\u001e\u001a\u00020\u0007R\u0014\u0010 \u001a\u00020\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010#\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0018\u0010%\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R$\u0010(\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\"\u0010.\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R.\u00108\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0003\u0018\u0001078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;\"\u0004\u0008<\u0010=R\"\u0010?\u001a\u00020>8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010@\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010D\u00a8\u0006K"
    }
    d2 = {
        "Lcom/guochao/library_xmagic/XMagicHelper;",
        "Lcom/guochao/library_xmagic/a;",
        "Landroid/hardware/SensorEventListener;",
        "Lcom/tencent/xmagic/XmagicProperty;",
        "property",
        "",
        "isDeviceSupportProperty",
        "",
        "init",
        "resume",
        "pause",
        "",
        "textureId",
        "width",
        "height",
        "process",
        "destroy",
        "destroyOnGLThread",
        "update",
        "onInited",
        "",
        "throwable",
        "onFail",
        "Landroid/hardware/SensorEvent;",
        "event",
        "onSensorChanged",
        "Landroid/hardware/Sensor;",
        "sensor",
        "accuracy",
        "onAccuracyChanged",
        "reInit",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "Landroid/hardware/SensorManager;",
        "mSensorManager",
        "Landroid/hardware/SensorManager;",
        "mAccelerometer",
        "Landroid/hardware/Sensor;",
        "Lcom/tencent/xmagic/XmagicApi;",
        "mXmagicApi",
        "Lcom/tencent/xmagic/XmagicApi;",
        "getMXmagicApi",
        "()Lcom/tencent/xmagic/XmagicApi;",
        "setMXmagicApi",
        "(Lcom/tencent/xmagic/XmagicApi;)V",
        "mIsSupported",
        "Z",
        "getMIsSupported",
        "()Z",
        "setMIsSupported",
        "(Z)V",
        "Lcom/guochao/library_xmagic/XMagicHelper$Processor;",
        "mProcessor",
        "Lcom/guochao/library_xmagic/XMagicHelper$Processor;",
        "",
        "pendingItems",
        "Ljava/util/Set;",
        "getPendingItems",
        "()Ljava/util/Set;",
        "setPendingItems",
        "(Ljava/util/Set;)V",
        "Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;",
        "faceListener",
        "Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;",
        "getFaceListener",
        "()Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;",
        "setFaceListener",
        "(Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;)V",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "FaceListener",
        "Processor",
        "XmagicProcessor",
        "lib_xmagic_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/library_xmagic/XMagicHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final RESOURCE_VERSION_CODE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "XMagicHelper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static licenceChecked:Z

.field private static resourceUnzipped:Z

.field private static sBaseDir:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final sCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/library_xmagic/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sInitComplete:Z

.field private static sInited:Z


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private faceListener:Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mAccelerometer:Landroid/hardware/Sensor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mIsSupported:Z

.field private final mProcessor:Lcom/guochao/library_xmagic/XMagicHelper$Processor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSensorManager:Landroid/hardware/SensorManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mXmagicApi:Lcom/tencent/xmagic/XmagicApi;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private pendingItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/library_xmagic/XMagicHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/library_xmagic/XMagicHelper;->Companion:Lcom/guochao/library_xmagic/XMagicHelper$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/library_xmagic/XMagicHelper;->sCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->context:Landroid/content/Context;

    .line 2
    new-instance p1, Lcom/guochao/library_xmagic/XMagicHelper$XmagicProcessor;

    invoke-direct {p1, p0}, Lcom/guochao/library_xmagic/XMagicHelper$XmagicProcessor;-><init>(Lcom/guochao/library_xmagic/XMagicHelper;)V

    iput-object p1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mProcessor:Lcom/guochao/library_xmagic/XMagicHelper$Processor;

    .line 3
    new-instance p1, Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;

    invoke-direct {p1}, Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;-><init>()V

    iput-object p1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->faceListener:Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;

    .line 4
    sget-boolean p1, Lcom/guochao/library_xmagic/XMagicHelper;->sInitComplete:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/guochao/library_xmagic/XMagicHelper;->init()V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/guochao/library_xmagic/XMagicHelper;->sCallbacks:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static final synthetic access$getLicenceChecked$cp()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/library_xmagic/XMagicHelper;->licenceChecked:Z

    return v0
.end method

.method public static final synthetic access$getResourceUnzipped$cp()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/library_xmagic/XMagicHelper;->resourceUnzipped:Z

    return v0
.end method

.method public static final synthetic access$getSBaseDir$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/guochao/library_xmagic/XMagicHelper;->sBaseDir:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getSCallbacks$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/guochao/library_xmagic/XMagicHelper;->sCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSInited$cp()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/library_xmagic/XMagicHelper;->sInited:Z

    return v0
.end method

.method public static final synthetic access$setLicenceChecked$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/library_xmagic/XMagicHelper;->licenceChecked:Z

    return-void
.end method

.method public static final synthetic access$setResourceUnzipped$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/library_xmagic/XMagicHelper;->resourceUnzipped:Z

    return-void
.end method

.method public static final synthetic access$setSBaseDir$cp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/guochao/library_xmagic/XMagicHelper;->sBaseDir:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSInitComplete$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/library_xmagic/XMagicHelper;->sInitComplete:Z

    return-void
.end method

.method public static final synthetic access$setSInited$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/guochao/library_xmagic/XMagicHelper;->sInited:Z

    return-void
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/library_xmagic/XMagicHelper;->Companion:Lcom/guochao/library_xmagic/XMagicHelper$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final isDeviceSupportProperty(Lcom/tencent/xmagic/XmagicProperty;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/xmagic/XmagicApi;->getDeviceAbilities()Ljava/util/Map;

    move-result-object v2

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0, v3}, Lcom/tencent/xmagic/XmagicApi;->getPropertyRequiredAbilities(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_4
    :goto_0
    return v3
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/library_xmagic/XMagicHelper;->sCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mAccelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public final destroyOnGLThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/xmagic/XmagicApi;->onPause()V

    .line 3
    invoke-virtual {v0}, Lcom/tencent/xmagic/XmagicApi;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    return-void
.end method

.method public final getFaceListener()Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->faceListener:Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;

    return-object v0
.end method

.method public final getMIsSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mIsSupported:Z

    return v0
.end method

.method public final getMXmagicApi()Lcom/tencent/xmagic/XmagicApi;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    return-object v0
.end method

.method public final getPendingItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->pendingItems:Ljava/util/Set;

    return-object v0
.end method

.method public final init()V
    .locals 4

    .line 1
    new-instance v0, Lcom/tencent/xmagic/XmagicApi;

    iget-object v1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->context:Landroid/content/Context;

    sget-object v2, Lcom/guochao/library_xmagic/XMagicHelper;->sBaseDir:Ljava/lang/String;

    new-instance v3, Lcom/guochao/library_xmagic/XMagicHelper$init$1;

    invoke-direct {v3}, Lcom/guochao/library_xmagic/XMagicHelper$init$1;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/xmagic/XmagicApi;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;)V

    .line 2
    invoke-virtual {v0}, Lcom/tencent/xmagic/XmagicApi;->onResume()V

    .line 3
    invoke-virtual {v0}, Lcom/tencent/xmagic/XmagicApi;->isSupportBeauty()Z

    move-result v1

    iput-boolean v1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mIsSupported:Z

    .line 4
    iget-object v1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->pendingItems:Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Lcom/tencent/xmagic/XmagicApi;->updateProperties(Ljava/util/List;)V

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->pendingItems:Ljava/util/Set;

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->faceListener:Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;

    invoke-virtual {v0, v1}, Lcom/tencent/xmagic/XmagicApi;->setAIDataListener(Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;)V

    const/4 v1, 0x6

    .line 10
    invoke-virtual {v0, v1}, Lcom/tencent/xmagic/XmagicApi;->setXmagicLogLevel(I)V

    .line 11
    iput-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    .line 12
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.SensorManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    .line 14
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "sensor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onInited()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/library_xmagic/XMagicHelper;->init()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1    # Landroid/hardware/SensorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p1, v1}, Lcom/tencent/xmagic/XmagicApi;->sensorChanged(Landroid/hardware/SensorEvent;Landroid/hardware/Sensor;)V

    :cond_0
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/xmagic/XmagicApi;->onPause()V

    :cond_0
    return-void
.end method

.method public final process(III)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mProcessor:Lcom/guochao/library_xmagic/XMagicHelper$Processor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/library_xmagic/XMagicHelper$Processor;->process(III)I

    move-result p1

    return p1
.end method

.method public final reInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/library_xmagic/XMagicHelper;->destroy()V

    .line 3
    :cond_0
    sget-boolean v0, Lcom/guochao/library_xmagic/XMagicHelper;->sInitComplete:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/library_xmagic/XMagicHelper;->init()V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcom/guochao/library_xmagic/XMagicHelper;->sCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/tencent/xmagic/XmagicApi;->onResume()V

    :cond_0
    return-void
.end method

.method public final setFaceListener(Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;)V
    .locals 1
    .param p1    # Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->faceListener:Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;

    return-void
.end method

.method public final setMIsSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mIsSupported:Z

    return-void
.end method

.method public final setMXmagicApi(Lcom/tencent/xmagic/XmagicApi;)V
    .locals 0
    .param p1    # Lcom/tencent/xmagic/XmagicApi;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    return-void
.end method

.method public final setPendingItems(Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/library_xmagic/XMagicHelper;->pendingItems:Ljava/util/Set;

    return-void
.end method

.method public final update(Lcom/tencent/xmagic/XmagicProperty;)V
    .locals 3
    .param p1    # Lcom/tencent/xmagic/XmagicProperty;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper;->mXmagicApi:Lcom/tencent/xmagic/XmagicApi;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lcom/tencent/xmagic/XmagicApi;->isSupportBeauty()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/tencent/xmagic/XmagicApi;->isDeviceSupport(Ljava/util/List;)V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/xmagic/XmagicProperty;

    .line 6
    iget-boolean v2, v2, Lcom/tencent/xmagic/XmagicProperty;->isSupport:Z

    if-nez v2, :cond_2

    return-void

    .line 7
    :cond_3
    invoke-direct {p0, p1}, Lcom/guochao/library_xmagic/XMagicHelper;->isDeviceSupportProperty(Lcom/tencent/xmagic/XmagicProperty;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-virtual {v0, p1}, Lcom/tencent/xmagic/XmagicApi;->updateProperty(Lcom/tencent/xmagic/XmagicProperty;)V

    :cond_5
    return-void
.end method
