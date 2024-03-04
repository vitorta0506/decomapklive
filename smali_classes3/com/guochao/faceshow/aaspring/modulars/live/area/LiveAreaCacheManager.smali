.class public Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\t\u0008\u0016\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ \u0010\n\u001a\u0004\u0018\u00010\u00052\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000c2\u0006\u0010\r\u001a\u00020\u0005H\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000fH\u0016J\u0016\u0010\u0010\u001a\u00020\u00072\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0007H\u0016J\u0014\u0010\u0013\u001a\u00020\u00072\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cJ\u0010\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0005H\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;",
        "",
        "()V",
        "mCurrentHistory",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
        "checkSaveCountry",
        "",
        "liveRoomPageData",
        "Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;",
        "containsCountry",
        "datas",
        "",
        "data",
        "getLiveAreaHistory",
        "",
        "putLiveAreaHistory",
        "countryDatas",
        "refreshLiveAreaHistory",
        "removeRepeatItem",
        "netCountryDatas",
        "saveLiveAreaHistory",
        "currentCountry",
        "Companion",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sLiveAreaCacheManager:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$data$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$data$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "live"

    const-string v2, "history_area"

    .line 4
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSLiveAreaCacheManager$cp()Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;
    .locals 1

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->sLiveAreaCacheManager:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;

    return-object v0
.end method

.method public static final synthetic access$setSLiveAreaCacheManager$cp(Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;)V
    .locals 0

    sput-object p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->sLiveAreaCacheManager:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;

    return-void
.end method

.method private final containsCountry(Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ")",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    .line 2
    iget v1, p2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    iget v2, v0, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->Companion:Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$Companion;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$Companion;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final checkSaveCountry(Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getDiscoverCounty()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "discoverCounty"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData$LiveCountry;->getCountryId()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;-><init>()V

    :try_start_0
    const-string v2, "countryId"

    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    iput-object v0, v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryName:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->saveLiveAreaHistory(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V

    :cond_0
    return-void
.end method

.method public getLiveAreaHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public putLiveAreaHistory(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ">;)V"
        }
    .end annotation

    const-string v0, "countryDatas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v0, "live"

    const-string v1, "history_area"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public refreshLiveAreaHistory()V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$refreshLiveAreaHistory$data$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager$refreshLiveAreaHistory$data$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "live"

    const-string v2, "history_area"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public final removeRepeatItem(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;",
            ">;)V"
        }
    .end annotation

    const-string v0, "netCountryDatas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    const-string v3, "it"

    .line 5
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->containsCountry(Ljava/util/List;Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->putLiveAreaHistory(Ljava/util/List;)V

    return-void
.end method

.method public saveLiveAreaHistory(Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentCountry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;

    .line 5
    iget v2, v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget v1, v1, Lcom/guochao/faceshow/aaspring/beans/CountryStateBean$Country;->countryId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->mCurrentHistory:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v0, "live"

    const-string v1, "history_area"

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/manager/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
