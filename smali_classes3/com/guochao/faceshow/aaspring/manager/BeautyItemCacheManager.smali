.class public final Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0008\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0005H\u0007J\u0018\u0010\u0014\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007R\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;",
        "",
        "()V",
        "itemCaches",
        "Landroidx/collection/SparseArrayCompat;",
        "Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;",
        "clearMemory",
        "",
        "getFilterPath",
        "",
        "filterItem",
        "Lcom/guochao/pusher/beauty/FilterItem;",
        "getLast",
        "type",
        "",
        "hasOldBeautyItemSaved",
        "",
        "obtainKey",
        "saveLast",
        "beautyItemCache",
        "setBeauty",
        "beautyManager",
        "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;",
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


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final itemCaches:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;

    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->itemCaches:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearMemory()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->itemCaches:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    return-void
.end method

.method public static final getFilterPath(Lcom/guochao/pusher/beauty/FilterItem;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/guochao/pusher/beauty/FilterItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "filterItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lut"

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/pusher/beauty/FilterItem;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getLast(I)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->itemCaches:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->obtainKey(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    .line 5
    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;-><init>()V

    .line 8
    invoke-virtual {v0, p0, v1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-object v1

    .line 9
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    .line 10
    invoke-virtual {v0, p0, v2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    const-string p0, "getGson().fromJson(str, \u2026put(type, this)\n        }"

    .line 11
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public static final hasOldBeautyItemSaved()Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "FaceBean"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v2, "KEY_DATE_CLICK_TIPS"

    invoke-virtual {v0, v2}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private final obtainKey(I)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beauty_item_cache_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final saveLast(ILcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "beautyItemCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->obtainKey(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->itemCaches:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static final setBeauty(ILcom/guochao/pusher/base/ILivePusher$BeautyManager;)V
    .locals 4
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$BeautyManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "beautyManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getLast(I)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object p0

    .line 2
    invoke-interface {p1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->getBeautyItems()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/pusher/beauty/BeautyItem;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastBeautyValue()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/guochao/pusher/beauty/BeautyItem;->getEffectKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/guochao/pusher/beauty/BeautyItem;->getDefaultValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/pusher/beauty/BeautyItem;->setCurrentValue(F)V

    .line 7
    invoke-interface {p1, v1}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->update(Lcom/guochao/pusher/beauty/BeautyItem;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastFilter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastFilterStrength()F

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/guochao/pusher/base/ILivePusher$BeautyManager;->setFilter(Ljava/lang/String;F)V

    :cond_2
    return-void
.end method
