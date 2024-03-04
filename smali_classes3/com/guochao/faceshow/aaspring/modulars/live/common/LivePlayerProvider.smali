.class public final Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\u0004H\u0007J\u0008\u0010\u000c\u001a\u00020\u0006H\u0007J\u0008\u0010\r\u001a\u00020\u000eH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;",
        "",
        "()V",
        "sLivePlayer",
        "Lcom/guochao/player/GCLivePlayer;",
        "sLivePusher",
        "Lcom/guochao/pusher/GCLivePusher;",
        "type",
        "",
        "beautyManager",
        "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;",
        "player",
        "pusher",
        "release",
        "",
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
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static sLivePlayer:Lcom/guochao/player/GCLivePlayer; = null
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static sLivePusher:Lcom/guochao/pusher/GCLivePusher; = null
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final type:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->INSTANCE:Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final beautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->Companion:Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager$Companion;->getInstance(Landroid/content/Context;)Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    move-result-object v0

    return-object v0
.end method

.method public static final player()Lcom/guochao/player/GCLivePlayer;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->sLivePlayer:Lcom/guochao/player/GCLivePlayer;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/guochao/player/GCLivePlayer;->Companion:Lcom/guochao/player/GCLivePlayer$Companion;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/player/GCLivePlayer$Companion;->createPlayer(Landroid/content/Context;I)Lcom/guochao/player/GCLivePlayer;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->sLivePlayer:Lcom/guochao/player/GCLivePlayer;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->sLivePlayer:Lcom/guochao/player/GCLivePlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final pusher()Lcom/guochao/pusher/GCLivePusher;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->sLivePusher:Lcom/guochao/pusher/GCLivePusher;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/guochao/pusher/GCLivePusher;->Companion:Lcom/guochao/pusher/GCLivePusher$Companion;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/pusher/GCLivePusher$Companion;->createPusher(Landroid/content/Context;I)Lcom/guochao/pusher/GCLivePusher;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->sLivePusher:Lcom/guochao/pusher/GCLivePusher;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->sLivePusher:Lcom/guochao/pusher/GCLivePusher;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final release()V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->sLivePlayer:Lcom/guochao/player/GCLivePlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/guochao/player/GCLivePlayer;->stopPlay(ZZ)V

    .line 3
    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePlayerProvider;->sLivePlayer:Lcom/guochao/player/GCLivePlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/player/GCLivePlayer;->setPlayerView(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
