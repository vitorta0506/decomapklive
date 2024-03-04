.class public final Lcom/guochao/faceshow/utils/ServiceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u000c\u001a\u00020\r2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000fH\u0007J\u0014\u0010\u0010\u001a\u00020\r2\n\u0010\u0011\u001a\u0006\u0012\u0002\u0008\u00030\u000fH\u0007R\u0018\u0010\u0003\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\n\n\u0002\u0010\u0006\u0012\u0004\u0008\u0005\u0010\u0002R\"\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00088\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000b\u0010\u0002\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/guochao/faceshow/utils/ServiceUtils;",
        "",
        "()V",
        "handler",
        "com/guochao/faceshow/utils/ServiceUtils$handler$1",
        "getHandler$annotations",
        "Lcom/guochao/faceshow/utils/ServiceUtils$handler$1;",
        "lastStartTimestamps",
        "Landroid/util/ArrayMap;",
        "",
        "",
        "getLastStartTimestamps$annotations",
        "safeStartForegroundService",
        "",
        "clz",
        "Ljava/lang/Class;",
        "safeStopForegroundService",
        "cla",
        "lib_base_release"
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
.field public static final INSTANCE:Lcom/guochao/faceshow/utils/ServiceUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final handler:Lcom/guochao/faceshow/utils/ServiceUtils$handler$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final lastStartTimestamps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/utils/ServiceUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/ServiceUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/ServiceUtils;->INSTANCE:Lcom/guochao/faceshow/utils/ServiceUtils;

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/ServiceUtils;->lastStartTimestamps:Landroid/util/ArrayMap;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/utils/ServiceUtils$handler$1;

    invoke-direct {v1, v0}, Lcom/guochao/faceshow/utils/ServiceUtils$handler$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/guochao/faceshow/utils/ServiceUtils;->handler:Lcom/guochao/faceshow/utils/ServiceUtils$handler$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic getHandler$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getLastStartTimestamps$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final safeStartForegroundService(Ljava/lang/Class;)Z
    .locals 3
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "clz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lcom/guochao/faceshow/utils/ServiceUtils;->handler:Lcom/guochao/faceshow/utils/ServiceUtils$handler$1;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    .line 4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/utils/ServiceUtils;->lastStartTimestamps:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static final safeStopForegroundService(Ljava/lang/Class;)Z
    .locals 10
    .param p0    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cla"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "app()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/guochao/faceshow/utils/ServiceUtils;->lastStartTimestamps:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4
    sget-object v4, Lcom/guochao/faceshow/utils/ServiceUtils;->handler:Lcom/guochao/faceshow/utils/ServiceUtils$handler$1;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1770

    cmp-long v9, v5, v7

    if-gtz v9, :cond_1

    .line 7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iput v5, v0, Landroid/os/Message;->what:I

    .line 9
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 p0, 0x1770

    int-to-long v5, p0

    .line 10
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v2, v7

    sub-long/2addr v5, v2

    .line 11
    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 12
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
