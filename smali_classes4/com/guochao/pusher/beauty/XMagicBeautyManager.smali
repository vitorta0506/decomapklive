.class public final Lcom/guochao/pusher/beauty/XMagicBeautyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/pusher/base/ILivePusher$BeautyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;,
        Lcom/guochao/pusher/beauty/XMagicBeautyManager$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 :2\u00020\u0001:\u0001:B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u0014\u001a\u00020\u00152\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u0010H\u0002J\u0008\u0010\u0017\u001a\u00020\u0015H\u0002J\u0008\u0010\u0018\u001a\u00020\u0015H\u0016J\u0008\u0010\u0019\u001a\u00020\u0015H\u0016J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001bH\u0016J\u000e\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001bH\u0016J`\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000f2\u0008\u0008\u0002\u0010 \u001a\u00020!2\u0008\u0008\u0002\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010$\u001a\u00020#2\u0008\u0008\u0002\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020#2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u000fH\u0002J\u0006\u0010)\u001a\u00020\u0015J\u001e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020+2\u0006\u0010.\u001a\u00020+J\u0008\u0010/\u001a\u00020\u0015H\u0016J\u0012\u00100\u001a\u00020\u00152\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u001a\u00103\u001a\u00020\u00152\u0008\u00104\u001a\u0004\u0018\u00010\u000f2\u0006\u00105\u001a\u00020#H\u0016J\u0012\u00106\u001a\u00020\u00152\u0008\u00107\u001a\u0004\u0018\u00010\u000fH\u0016J\u0010\u00108\u001a\u00020\u00152\u0006\u00109\u001a\u00020\u001cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R!\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR \u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00100\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lcom/guochao/pusher/beauty/XMagicBeautyManager;",
        "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;",
        "context",
        "Landroid/app/Application;",
        "helper",
        "Lcom/guochao/library_xmagic/XMagicHelper;",
        "(Landroid/app/Application;Lcom/guochao/library_xmagic/XMagicHelper;)V",
        "lutList",
        "Ljava/util/ArrayList;",
        "Lcom/guochao/pusher/beauty/FilterItem;",
        "Lkotlin/collections/ArrayList;",
        "getLutList",
        "()Ljava/util/ArrayList;",
        "propertyMap",
        "Landroid/util/ArrayMap;",
        "",
        "Lcom/tencent/xmagic/XmagicProperty;",
        "Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;",
        "resourceSet",
        "Ljava/util/concurrent/CopyOnWriteArraySet;",
        "addToCache",
        "",
        "xmagicProperty",
        "checkHelper",
        "destroyOnGLThread",
        "destroyOnMainThread",
        "getBeautyItems",
        "",
        "Lcom/guochao/pusher/beauty/BeautyItem;",
        "getFilterItems",
        "getXProperty",
        "key",
        "category",
        "Lcom/tencent/xmagic/XmagicProperty$Category;",
        "minValue",
        "",
        "maxValue",
        "defaultValue",
        "nowValue",
        "id",
        "resPath",
        "glContextCreated",
        "process",
        "",
        "textureId",
        "width",
        "height",
        "reInit",
        "setFaceDetectListener",
        "faceDetectListener",
        "Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;",
        "setFilter",
        "bitmapPath",
        "strength",
        "setMotionTmpl",
        "path",
        "update",
        "beautyItem",
        "Companion",
        "lib_pusher_and_player_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static instance:Lcom/guochao/pusher/beauty/XMagicBeautyManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final helper:Lcom/guochao/library_xmagic/XMagicHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/pusher/beauty/FilterItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final propertyMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;Lcom/guochao/library_xmagic/XMagicHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->context:Landroid/app/Application;

    .line 3
    iput-object p2, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    .line 4
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->propertyMap:Landroid/util/ArrayMap;

    .line 5
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->lutList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Application;Lcom/guochao/library_xmagic/XMagicHelper;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 7
    new-instance p2, Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-direct {p2, p1}, Lcom/guochao/library_xmagic/XMagicHelper;-><init>(Landroid/content/Context;)V

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;-><init>(Landroid/app/Application;Lcom/guochao/library_xmagic/XMagicHelper;)V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/guochao/pusher/beauty/XMagicBeautyManager;
    .locals 1

    sget-object v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->instance:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/guochao/pusher/beauty/XMagicBeautyManager;)V
    .locals 0

    sput-object p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->instance:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    return-void
.end method

.method private final addToCache(Lcom/tencent/xmagic/XmagicProperty;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/guochao/pusher/beauty/XMagicBeautyManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto/16 :goto_4

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/tencent/xmagic/XmagicProperty;

    iget-object v6, v5, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    sget-object v7, Lcom/tencent/xmagic/XmagicProperty$Category;->BEAUTY:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v6, v7, :cond_3

    iget-object v5, v5, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    move-object v2, v4

    :cond_4
    check-cast v2, Lcom/tencent/xmagic/XmagicProperty;

    if-eqz v2, :cond_d

    .line 3
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 4
    :cond_5
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/tencent/xmagic/XmagicProperty;

    iget-object v5, v5, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    sget-object v6, Lcom/tencent/xmagic/XmagicProperty$Category;->MOTION:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_6

    move-object v2, v4

    :cond_8
    check-cast v2, Lcom/tencent/xmagic/XmagicProperty;

    if-eqz v2, :cond_d

    .line 5
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 6
    :cond_9
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/tencent/xmagic/XmagicProperty;

    iget-object v5, v5, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    sget-object v6, Lcom/tencent/xmagic/XmagicProperty$Category;->LUT:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v5, v6, :cond_b

    const/4 v5, 0x1

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_a

    move-object v2, v4

    :cond_c
    check-cast v2, Lcom/tencent/xmagic/XmagicProperty;

    if-eqz v2, :cond_d

    .line 7
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final checkHelper()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->getMXmagicApi()Lcom/tencent/xmagic/XmagicApi;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->reInit()V

    .line 3
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/xmagic/XmagicProperty;

    .line 5
    iget-object v2, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v2, v1}, Lcom/guochao/library_xmagic/XMagicHelper;->update(Lcom/tencent/xmagic/XmagicProperty;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object p0

    return-object p0
.end method

.method private final getXProperty(Ljava/lang/String;Lcom/tencent/xmagic/XmagicProperty$Category;FFFFLjava/lang/String;Ljava/lang/String;)Lcom/tencent/xmagic/XmagicProperty;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/xmagic/XmagicProperty$Category;",
            "FFFF",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->propertyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/xmagic/XmagicProperty;

    .line 2
    sget-object v3, Lcom/guochao/pusher/beauty/XMagicBeautyManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move-object v10, v4

    goto :goto_0

    :cond_0
    move-object v10, v1

    :goto_0
    if-nez v2, :cond_2

    .line 3
    sget-object v2, Lcom/tencent/xmagic/XmagicProperty$Category;->LUT:Lcom/tencent/xmagic/XmagicProperty$Category;

    move-object/from16 v3, p2

    if-ne v3, v2, :cond_1

    if-nez p8, :cond_1

    move-object v11, v4

    goto :goto_1

    .line 4
    :cond_1
    new-instance v4, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v15, p3, v2

    div-float v16, p4, v2

    move-object v11, v4

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v11 .. v16}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;-><init>(FFFFF)V

    .line 5
    :goto_1
    new-instance v2, Lcom/tencent/xmagic/XmagicProperty;

    move-object v6, v2

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v6 .. v11}, Lcom/tencent/xmagic/XmagicProperty;-><init>(Lcom/tencent/xmagic/XmagicProperty$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v3, v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->propertyMap:Landroid/util/ArrayMap;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    iget-object v1, v2, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    check-cast v1, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v3, p6

    invoke-virtual {v1, v3}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->setCurrentDisplayValue(F)V

    :goto_2
    return-object v2
.end method

.method static synthetic getXProperty$default(Lcom/guochao/pusher/beauty/XMagicBeautyManager;Ljava/lang/String;Lcom/tencent/xmagic/XmagicProperty$Category;FFFFLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/tencent/xmagic/XmagicProperty;
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 1
    sget-object v1, Lcom/tencent/xmagic/XmagicProperty$Category;->BEAUTY:Lcom/tencent/xmagic/XmagicProperty$Category;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v5, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v6, 0x42c80000    # 100.0f

    goto :goto_2

    :cond_2
    move v6, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move/from16 v7, p5

    :goto_3
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p8

    :goto_5
    move-object v2, p0

    move-object v3, p1

    move/from16 v8, p6

    .line 2
    invoke-direct/range {v2 .. v10}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->getXProperty(Ljava/lang/String;Lcom/tencent/xmagic/XmagicProperty$Category;FFFFLjava/lang/String;Ljava/lang/String;)Lcom/tencent/xmagic/XmagicProperty;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyOnGLThread()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->destroyOnGLThread()V

    return-void
.end method

.method public destroyOnMainThread()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->pause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->destroy()V

    .line 3
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public getBeautyItems()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/pusher/beauty/BeautyItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget v2, Lcom/guochao/library_xmagic/R$mipmap;->beauty_whiten:I

    .line 3
    sget v7, Lcom/guochao/library_xmagic/R$string;->Whitening_my:I

    .line 4
    new-instance v13, Lcom/guochao/pusher/beauty/BeautyItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    const-string v8, "beauty.lutFoundationAlpha"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x196

    const/4 v12, 0x0

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_eye_lighten:I

    .line 7
    sget v20, Lcom/guochao/library_xmagic/R$string;->Eye_lighten_my:I

    .line 8
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x41f00000    # 30.0f

    const/16 v19, 0x0

    const-string v21, "beauty.eyeLighten"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x196

    const/16 v25, 0x0

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_smooth:I

    .line 11
    sget v8, Lcom/guochao/library_xmagic/R$string;->Beauty_my:I

    .line 12
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/4 v5, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    const/4 v7, 0x0

    const-string/jumbo v9, "smooth.smooth"

    const/4 v11, 0x0

    const/16 v12, 0x196

    const/4 v13, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_thin_face1:I

    .line 15
    sget v20, Lcom/guochao/library_xmagic/R$string;->Face1_my:I

    .line 16
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v18, 0x41a00000    # 20.0f

    const-string v21, "basicV7.natureFace"

    const-string v23, "nature"

    const/16 v24, 0x96

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_ruddy:I

    .line 19
    sget v8, Lcom/guochao/library_xmagic/R$string;->Flush_my:I

    .line 20
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v6, 0x41a00000    # 20.0f

    const-string/jumbo v9, "smooth.rosy"

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_enlarge_eye:I

    .line 23
    sget v20, Lcom/guochao/library_xmagic/R$string;->Big_Eyes_my:I

    .line 24
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v18, 0x41f00000    # 30.0f

    const-string v21, "basicV7.enlargeEye"

    const/16 v23, 0x0

    const/16 v24, 0x196

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_thin_nose:I

    .line 27
    sget v8, Lcom/guochao/library_xmagic/R$string;->Nose_my:I

    .line 28
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const-string v9, "basicV7.thinNose"

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_tooth_beauty:I

    .line 31
    sget v20, Lcom/guochao/library_xmagic/R$string;->Tooth_whiten_my:I

    .line 32
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v18, 0x42480000    # 50.0f

    const-string v21, "beauty.toothWhiten"

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_liti:I

    .line 35
    sget v8, Lcom/guochao/library_xmagic/R$string;->Liti_my:I

    .line 36
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/4 v6, 0x0

    const-string v9, "beauty.faceFeatureSoftlight"

    const-string v10, "/images/beauty/liti_ziran.png"

    const-string v11, "beauty.softLight.softLightMask"

    const/16 v12, 0x16

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->image_saturation:I

    .line 39
    sget v20, Lcom/guochao/library_xmagic/R$string;->Baohe_my:I

    .line 40
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v16, -0x3d380000    # -100.0f

    const/16 v18, 0x0

    const-string/jumbo v21, "smooth.saturation"

    const/16 v24, 0x194

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_v_face:I

    .line 43
    sget v8, Lcom/guochao/library_xmagic/R$string;->Face2_my:I

    .line 44
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v6, 0x41a00000    # 20.0f

    const-string v9, "basicV7.vFace"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x196

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_lips:I

    .line 47
    sget v20, Lcom/guochao/library_xmagic/R$string;->Lips_my:I

    .line 48
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/16 v16, 0x0

    const/high16 v18, 0x41f00000    # 30.0f

    const-string v21, "beauty.faceFeatureLipsLut"

    const-string v22, "/images/beauty/lips_fuguhong.png"

    const-string v23, "beauty.lips.lipsMask"

    const/16 v24, 0x16

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_nose_wing:I

    .line 51
    sget v8, Lcom/guochao/library_xmagic/R$string;->Nose_wing_my:I

    .line 52
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v4, -0x3d380000    # -100.0f

    const/4 v6, 0x0

    const-string v9, "basicV7.noseWing"

    const/16 v12, 0x194

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->image_sharpen:I

    .line 55
    sget v20, Lcom/guochao/library_xmagic/R$string;->clarity:I

    .line 56
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v18, 0x41200000    # 10.0f

    const-string v21, "beauty.lutClearAlpha"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x196

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_remove_pounch:I

    .line 59
    sget v8, Lcom/guochao/library_xmagic/R$string;->Remove_my:I

    .line 60
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const-string v9, "beauty.removeWrinkle"

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_wrinkle_smooth:I

    .line 63
    sget v20, Lcom/guochao/library_xmagic/R$string;->Remove_law_my:I

    .line 64
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/16 v18, 0x0

    const-string v21, "beauty.removeLawLine"

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_remove_eye_pouch:I

    .line 67
    sget v8, Lcom/guochao/library_xmagic/R$string;->Remove_eye_my:I

    .line 68
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/4 v4, 0x0

    const-string v9, "beauty.removeEyeBags"

    const/16 v12, 0x196

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_chin:I

    .line 71
    sget v20, Lcom/guochao/library_xmagic/R$string;->Face3_my:I

    .line 72
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v16, -0x3d380000    # -100.0f

    const/high16 v18, -0x3e600000    # -20.0f

    const-string v21, "basicV7.chin"

    const/16 v24, 0x194

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_thin_cheek:I

    .line 75
    sget v8, Lcom/guochao/library_xmagic/R$string;->Quangu_my:I

    .line 76
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v4, -0x3d380000    # -100.0f

    const-string v9, "basicV7.cheekboneThin"

    const/16 v12, 0x194

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_redcheeks:I

    .line 79
    sget v20, Lcom/guochao/library_xmagic/R$string;->Saihong_my:I

    .line 80
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/16 v16, 0x0

    const/high16 v18, 0x41200000    # 10.0f

    const-string v21, "beauty.faceFeatureRedCheek"

    const-string v22, "/images/beauty/saihong_jianyue.png"

    const-string v23, "beauty.makeupMultiply.multiplyMask"

    const/16 v24, 0x16

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->image_contrast:I

    .line 83
    sget v8, Lcom/guochao/library_xmagic/R$string;->Contrast_my:I

    .line 84
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/4 v4, 0x0

    const-string v9, "beauty.imageContrastAlpha"

    const/16 v12, 0x196

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_eye_distance:I

    .line 87
    sget v20, Lcom/guochao/library_xmagic/R$string;->Eye_distance_my:I

    .line 88
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v16, -0x3d380000    # -100.0f

    const/16 v18, 0x0

    const-string v21, "basicV7.eyeDistance"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x194

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_eye_angle:I

    .line 91
    sget v8, Lcom/guochao/library_xmagic/R$string;->Eye_coner_my:I

    .line 92
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v4, -0x3d380000    # -100.0f

    const-string v9, "basicV7.eyeAngle"

    const/16 v12, 0x194

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_basic_face:I

    .line 95
    sget v20, Lcom/guochao/library_xmagic/R$string;->Face_shape_my:I

    .line 96
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/16 v16, 0x0

    const-string v21, "liquefaction.basic3"

    const/16 v24, 0x196

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_narrow_face:I

    .line 99
    sget v8, Lcom/guochao/library_xmagic/R$string;->Face_narrow_my:I

    .line 100
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/4 v4, 0x0

    const/high16 v6, 0x41a00000    # 20.0f

    const-string v9, "basicV7.thinFace"

    const/16 v12, 0x196

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_forehead:I

    .line 103
    sget v20, Lcom/guochao/library_xmagic/R$string;->ForeHead_my:I

    .line 104
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v16, -0x3d380000    # -100.0f

    const-string v21, "basicV7.forehead"

    const/16 v24, 0x194

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_short_face:I

    .line 107
    sget v8, Lcom/guochao/library_xmagic/R$string;->Face4_my:I

    .line 108
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/4 v6, 0x0

    const-string v9, "basicV7.shortFace"

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_nose_position:I

    .line 111
    sget v20, Lcom/guochao/library_xmagic/R$string;->Nose_position_my:I

    .line 112
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const-string v21, "basicV7.noseHeight"

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget v3, Lcom/guochao/library_xmagic/R$mipmap;->beauty_mouth_size:I

    .line 115
    sget v8, Lcom/guochao/library_xmagic/R$string;->Mouse_shape_my:I

    .line 116
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const/high16 v4, -0x3d380000    # -100.0f

    const-string v9, "basicV7.mouthSize"

    const/16 v12, 0x194

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget v15, Lcom/guochao/library_xmagic/R$mipmap;->beauty_mouth_height:I

    .line 119
    sget v20, Lcom/guochao/library_xmagic/R$string;->Mouse_height_my:I

    .line 120
    new-instance v1, Lcom/guochao/pusher/beauty/BeautyItem;

    const-string v21, "basicV7.mouthHeight"

    move-object v14, v1

    invoke-direct/range {v14 .. v25}, Lcom/guochao/pusher/beauty/BeautyItem;-><init>(IFFFFILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getFilterItems()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/pusher/beauty/FilterItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->lutList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->lutList:Ljava/util/ArrayList;

    return-object v1

    .line 3
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "{\"baseUrl\":\"https://fsveg.buzzcast.info/app_static/\",\"list\":[{\"id\":\"1\",\"name\":\"nuanyang_lf\",\"defaultValue\":60},{\"id\":\"2\",\"name\":\"n_baixi\",\"defaultValue\":60},{\"id\":\"3\",\"name\":\"gaobai_lf\",\"defaultValue\":60},{\"id\":\"4\",\"name\":\"xindong_lf\",\"defaultValue\":60},{\"id\":\"5\",\"name\":\"n_chengjing\",\"defaultValue\":60},{\"id\":\"6\",\"name\":\"yingtaobuding_lf\",\"defaultValue\":40},{\"id\":\"7\",\"name\":\"n_candyb\",\"defaultValue\":60},{\"id\":\"8\",\"name\":\"n_huoli\",\"defaultValue\":40},{\"id\":\"9\",\"name\":\"n_xuanlan\",\"defaultValue\":40},{\"id\":\"10\",\"name\":\"dongjing_lf\",\"defaultValue\":40},{\"id\":\"11\",\"name\":\"n_musi\",\"defaultValue\":40},{\"id\":\"12\",\"name\":\"n_jiaoye\",\"defaultValue\":40},{\"id\":\"13\",\"name\":\"n_meiwei\",\"defaultValue\":40},{\"id\":\"14\",\"name\":\"n_yishigan\",\"defaultValue\":40},{\"id\":\"15\",\"name\":\"n_lengcui\",\"defaultValue\":40},{\"id\":\"16\",\"name\":\"n_dianying\",\"defaultValue\":40},{\"id\":\"17\",\"name\":\"n_fugu\",\"defaultValue\":40},{\"id\":\"18\",\"name\":\"n_luoma\",\"defaultValue\":40},{\"id\":\"19\",\"name\":\"n_huidiao\",\"defaultValue\":40}]}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "baseUrl"

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "list"

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    .line 8
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "id"

    .line 9
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "icon/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".png"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v7, "defaultValue"

    .line 11
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-float v12, v12

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "lut/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 13
    new-instance v15, Lcom/guochao/pusher/beauty/FilterItem;

    const-string v7, "getString(\"id\")"

    .line 14
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/16 v14, 0x20

    const/4 v6, 0x0

    move-object v7, v15

    move-object v10, v11

    move-object v11, v5

    move-object v5, v15

    move-object v15, v6

    .line 16
    invoke-direct/range {v7 .. v15}, Lcom/guochao/pusher/beauty/FilterItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    iget-object v6, v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->lutList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v1, v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->lutList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public final getLutList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/pusher/beauty/FilterItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->lutList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final glContextCreated()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->destroyOnGLThread()V

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->reInit()V

    .line 3
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->resourceSet:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/xmagic/XmagicProperty;

    .line 5
    iget-object v2, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v2, v1}, Lcom/guochao/library_xmagic/XMagicHelper;->update(Lcom/tencent/xmagic/XmagicProperty;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final process(III)I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->checkHelper()V

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/guochao/library_xmagic/XMagicHelper;->process(III)I

    move-result p1

    return p1
.end method

.method public reInit()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->reInit()V

    return-void
.end method

.method public setFaceDetectListener(Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;)V
    .locals 2
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {p1}, Lcom/guochao/library_xmagic/XMagicHelper;->getFaceListener()Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;->setFaceListener(Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    invoke-virtual {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->getFaceListener()Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;

    move-result-object v0

    new-instance v1, Lcom/guochao/pusher/beauty/XMagicBeautyManager$setFaceDetectListener$1;

    invoke-direct {v1, p1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$setFaceDetectListener$1;-><init>(Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;)V

    invoke-virtual {v0, v1}, Lcom/guochao/library_xmagic/XMagicHelper$FaceListener;->setFaceListener(Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;)V

    :goto_0
    return-void
.end method

.method public setFilter(Ljava/lang/String;F)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->checkHelper()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "lut_"

    if-eqz v0, :cond_0

    .line 3
    iget-object v11, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/tencent/xmagic/XmagicProperty$Category;->LUT:Lcom/tencent/xmagic/XmagicProperty$Category;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x9c

    const/4 v10, 0x0

    const-string v7, "ID_NONE"

    move-object v0, p0

    move v6, p2

    .line 6
    invoke-static/range {v0 .. v10}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->getXProperty$default(Lcom/guochao/pusher/beauty/XMagicBeautyManager;Ljava/lang/String;Lcom/tencent/xmagic/XmagicProperty$Category;FFFFLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/tencent/xmagic/XmagicProperty;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->addToCache(Lcom/tencent/xmagic/XmagicProperty;)V

    .line 8
    invoke-virtual {v11, v0}, Lcom/guochao/library_xmagic/XMagicHelper;->update(Lcom/tencent/xmagic/XmagicProperty;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v11, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    .line 10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    sget-object v2, Lcom/tencent/xmagic/XmagicProperty$Category;->LUT:Lcom/tencent/xmagic/XmagicProperty$Category;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v9, 0x1c

    const/4 v10, 0x0

    move-object v0, p0

    move v6, p2

    move-object v8, p1

    .line 13
    invoke-static/range {v0 .. v10}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->getXProperty$default(Lcom/guochao/pusher/beauty/XMagicBeautyManager;Ljava/lang/String;Lcom/tencent/xmagic/XmagicProperty$Category;FFFFLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/tencent/xmagic/XmagicProperty;

    move-result-object v0

    .line 14
    invoke-direct {p0, v0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->addToCache(Lcom/tencent/xmagic/XmagicProperty;)V

    .line 15
    invoke-virtual {v11, v0}, Lcom/guochao/library_xmagic/XMagicHelper;->update(Lcom/tencent/xmagic/XmagicProperty;)V

    :goto_0
    return-void
.end method

.method public setMotionTmpl(Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->checkHelper()V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    .line 4
    new-instance v7, Lcom/tencent/xmagic/XmagicProperty;

    .line 5
    sget-object v2, Lcom/tencent/xmagic/XmagicProperty$Category;->MOTION:Lcom/tencent/xmagic/XmagicProperty$Category;

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p1

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/tencent/xmagic/XmagicProperty;-><init>(Lcom/tencent/xmagic/XmagicProperty$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, v7}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->addToCache(Lcom/tencent/xmagic/XmagicProperty;)V

    .line 9
    invoke-virtual {v0, v7}, Lcom/guochao/library_xmagic/XMagicHelper;->update(Lcom/tencent/xmagic/XmagicProperty;)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    .line 11
    new-instance v6, Lcom/tencent/xmagic/XmagicProperty;

    .line 12
    sget-object v1, Lcom/tencent/xmagic/XmagicProperty$Category;->MOTION:Lcom/tencent/xmagic/XmagicProperty$Category;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/guochao/library_xmagic/XMagicHelper;->Companion:Lcom/guochao/library_xmagic/XMagicHelper$Companion;

    invoke-virtual {v2}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->getSBaseDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "light_assets/template.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v2, "ID_NONE"

    move-object v0, v6

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/tencent/xmagic/XmagicProperty;-><init>(Lcom/tencent/xmagic/XmagicProperty$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-direct {p0, v6}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->addToCache(Lcom/tencent/xmagic/XmagicProperty;)V

    .line 16
    invoke-virtual {p1, v6}, Lcom/guochao/library_xmagic/XMagicHelper;->update(Lcom/tencent/xmagic/XmagicProperty;)V

    :goto_2
    return-void
.end method

.method public update(Lcom/guochao/pusher/beauty/BeautyItem;)V
    .locals 12
    .param p1    # Lcom/guochao/pusher/beauty/BeautyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "beautyItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->checkHelper()V

    .line 2
    iget-object v0, p0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->helper:Lcom/guochao/library_xmagic/XMagicHelper;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/BeautyItem;->getEffectKey()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/BeautyItem;->getMinValue()F

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/BeautyItem;->getMaxValue()F

    move-result v5

    .line 6
    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/BeautyItem;->getDefaultValue()F

    move-result v6

    .line 7
    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/BeautyItem;->getCurrentValue()F

    move-result v7

    .line 8
    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/BeautyItem;->getId$lib_pusher_and_player_release()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {p1}, Lcom/guochao/pusher/beauty/BeautyItem;->getEffectRes()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v1, p0

    .line 10
    invoke-static/range {v1 .. v11}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->getXProperty$default(Lcom/guochao/pusher/beauty/XMagicBeautyManager;Ljava/lang/String;Lcom/tencent/xmagic/XmagicProperty$Category;FFFFLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/tencent/xmagic/XmagicProperty;

    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->addToCache(Lcom/tencent/xmagic/XmagicProperty;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/guochao/library_xmagic/XMagicHelper;->update(Lcom/tencent/xmagic/XmagicProperty;)V

    return-void
.end method
