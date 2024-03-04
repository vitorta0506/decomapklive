.class public Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sIsCorePlugin:[Z

.field private static final sPluginClazzName:[Ljava/lang/String;

.field private static final sPluginIds:[I

.field private static final sPluginName:[Ljava/lang/String;

.field private static final sPluginVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginIds:[I

    const-string v1, "monet"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginName:[Ljava/lang/String;

    new-array v1, v0, [I

    aput v0, v1, v3

    .line 3
    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginVersion:[I

    const-string v1, "com.tencent.liteav.monet.MonetPlugin"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginClazzName:[Ljava/lang/String;

    new-array v1, v0, [Z

    aput-boolean v0, v1, v3

    .line 5
    sput-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sIsCorePlugin:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadPluginConfig(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    sget-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    new-instance v2, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;

    invoke-direct {v2}, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;-><init>()V

    .line 3
    aget v1, v1, v0

    iput v1, v2, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginId:I

    .line 4
    sget-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginName:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, v2, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginName:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginVersion:[I

    aget v1, v1, v0

    iput v1, v2, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginVersion:I

    .line 6
    sget-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sPluginClazzName:[Ljava/lang/String;

    aget-object v1, v1, v0

    iput-object v1, v2, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mPluginClazzName:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/tencent/liteav/txcplayer/ext/config/PluginConfigCenter;->sIsCorePlugin:[Z

    aget-boolean v1, v1, v0

    iput-boolean v1, v2, Lcom/tencent/liteav/txcplayer/ext/host/PluginInfo;->mIsCorePlugin:Z

    .line 8
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
