.class public final Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;",
        "",
        "()V",
        "create",
        "Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;",
        "gcLiveRoomModel",
        "Lcom/guochao/component/liveroom/model/GCLiveRoomModel;",
        "view",
        "Landroid/view/View;",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/guochao/component/liveroom/model/GCLiveRoomModel;Landroid/view/View;)Lcom/guochao/component/liveroomcommon/helper/LiveRoomViewLayoutHelper;
    .locals 1
    .param p1    # Lcom/guochao/component/liveroom/model/GCLiveRoomModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "gcLiveRoomModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;

    invoke-direct {v0, p2, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceLiveRoomViewLayoutHelper;-><init>(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/component/liveroom/helper/VideoLiveRoomViewLayoutHelper;

    invoke-direct {v0, p2, p1}, Lcom/guochao/component/liveroom/helper/VideoLiveRoomViewLayoutHelper;-><init>(Landroid/view/View;Lcom/guochao/component/liveroom/model/GCLiveRoomModel;)V

    :goto_0
    return-object v0
.end method
