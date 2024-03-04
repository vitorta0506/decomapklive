.class public final Lcom/guochao/player/tencent/TencentLivePlayer;
.super Lcom/guochao/player/base/BaseLivePlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/player/tencent/TencentLivePlayer$Player;,
        Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001:\u0002EFB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\u0006H\u0016J\u0008\u0010%\u001a\u00020\u0006H\u0016J\u0008\u0010&\u001a\u00020\u0006H\u0016J\u0010\u0010&\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020\tH\u0016J&\u0010(\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\'\u001a\u00020\t2\u0008\u0010)\u001a\u0004\u0018\u00010*2\u0008\u0008\u0002\u0010+\u001a\u00020\u0006H\u0002J\u0010\u0010,\u001a\u00020\u00182\u0008\u0008\u0002\u0010-\u001a\u00020\u0006J\u0008\u0010.\u001a\u00020!H\u0016J\u0008\u0010/\u001a\u00020!H\u0016J\u0010\u00100\u001a\u00020!2\u0006\u0010\'\u001a\u00020\tH\u0016J\u0008\u00101\u001a\u00020!H\u0016J\u0010\u00102\u001a\u00020!2\u0006\u0010\'\u001a\u00020\tH\u0016J\u0010\u00103\u001a\u00020!2\u0006\u00104\u001a\u00020\u0006H\u0016J\u001a\u00103\u001a\u00020!2\u0006\u00104\u001a\u00020\u00062\u0008\u0010\'\u001a\u0004\u0018\u00010\tH\u0016J\u0010\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020\u0018H\u0016J\u0012\u00105\u001a\u00020!2\u0008\u00107\u001a\u0004\u0018\u00010*H\u0016J\u001a\u00105\u001a\u00020!2\u0008\u00107\u001a\u0004\u0018\u00010*2\u0006\u00108\u001a\u00020\u0006H\u0016J\u0012\u00109\u001a\u00020!2\u0008\u0010:\u001a\u0004\u0018\u00010\tH\u0002J\u0018\u0010;\u001a\u00020!2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u00106\u001a\u00020\u0018H\u0002J\u001c\u0010<\u001a\u00020!2\u0008\u0010=\u001a\u0004\u0018\u00010\t2\u0008\u0010>\u001a\u0004\u0018\u00010?H\u0016J&\u0010@\u001a\u00020!2\u0008\u0010=\u001a\u0004\u0018\u00010\t2\u0008\u0010\'\u001a\u0004\u0018\u00010\t2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0018\u0010A\u001a\u00020!2\u0006\u0010B\u001a\u00020\u00062\u0006\u0010C\u001a\u00020\u0006H\u0016J\u0012\u0010A\u001a\u00020!2\u0008\u0010\'\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010D\u001a\u00020!H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006G"
    }
    d2 = {
        "Lcom/guochao/player/tencent/TencentLivePlayer;",
        "Lcom/guochao/player/base/BaseLivePlayer;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "audioMuted",
        "",
        "firstPlay",
        "Landroid/util/ArrayMap;",
        "",
        "height",
        "",
        "isPlayerFrozen",
        "()Z",
        "setPlayerFrozen",
        "(Z)V",
        "lastStreamId",
        "lastUrl",
        "loading",
        "observer",
        "Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;",
        "player",
        "Lcom/tencent/live2/V2TXLivePlayer;",
        "playerView",
        "Landroid/view/View;",
        "players",
        "Lcom/guochao/player/tencent/TencentLivePlayer$Player;",
        "playing",
        "previewSet",
        "starting",
        "videoMuted",
        "width",
        "freezeAllPlayers",
        "",
        "getVideoSize",
        "Landroid/util/Size;",
        "isCompatMode",
        "isLoading",
        "isPlaying",
        "streamId",
        "obtainPlayer",
        "previewView",
        "Landroid/view/ViewGroup;",
        "initOnNull",
        "obtainPreviewView",
        "acc",
        "onPause",
        "onResume",
        "pause",
        "reset",
        "resume",
        "setMute",
        "mute",
        "setPlayerView",
        "view",
        "viewGroup",
        "forceReset",
        "setRefer",
        "refer",
        "setRenderView",
        "startPlay",
        "url",
        "roomInfo",
        "Lcom/guochao/user/RoomInfo;",
        "startPlayAcc",
        "stopPlay",
        "clearLastFrame",
        "exitRoom",
        "unfreezeAllPlayers",
        "PlayObserver",
        "Player",
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


# instance fields
.field private audioMuted:Z

.field private final firstPlay:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private height:I

.field private isPlayerFrozen:Z

.field private lastStreamId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loading:Z

.field private final observer:Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final player:Lcom/tencent/live2/V2TXLivePlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final playerView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final players:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/player/tencent/TencentLivePlayer$Player;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private playing:Z

.field private previewSet:Z

.field private starting:Z

.field private videoMuted:Z

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/player/base/BaseLivePlayer;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-direct {v0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;->V2TXLiveFillModeFill:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;

    invoke-virtual {v0, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->setRenderFillMode(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveFillMode;)I

    const/4 p1, 0x1

    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->enableReceiveSeiMessage(ZI)I

    .line 5
    iput-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    invoke-static {p0, v1, p1, v2}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPreviewView$default(Lcom/guochao/player/tencent/TencentLivePlayer;ZILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    .line 7
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->players:Landroid/util/ArrayMap;

    .line 8
    new-instance p1, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    invoke-direct {p1, p0}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;-><init>(Lcom/guochao/player/tencent/TencentLivePlayer;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePlayer;->setObserver(Lcom/tencent/live2/V2TXLivePlayerObserver;)V

    .line 10
    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->observer:Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    .line 11
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->firstPlay:Landroid/util/ArrayMap;

    const-string p1, ""

    .line 12
    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->lastUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/player/tencent/TencentLivePlayer;->startPlayAcc$lambda-3(Landroid/view/View;Landroid/view/ViewGroup;Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V

    return-void
.end method

.method public static final synthetic access$getLastStreamId$p(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->lastStreamId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getListeners(Lcom/guochao/player/tencent/TencentLivePlayer;)Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/player/base/BaseLivePlayer;->getListeners()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setHeight$p(Lcom/guochao/player/tencent/TencentLivePlayer;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->height:I

    return-void
.end method

.method public static final synthetic access$setLoading$p(Lcom/guochao/player/tencent/TencentLivePlayer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->loading:Z

    return-void
.end method

.method public static final synthetic access$setPlaying$p(Lcom/guochao/player/tencent/TencentLivePlayer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playing:Z

    return-void
.end method

.method public static final synthetic access$setStarting$p(Lcom/guochao/player/tencent/TencentLivePlayer;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->starting:Z

    return-void
.end method

.method public static final synthetic access$setWidth$p(Lcom/guochao/player/tencent/TencentLivePlayer;I)V
    .locals 0

    iput p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->width:I

    return-void
.end method

.method public static synthetic b(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->setPlayerView$lambda-9(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->setPlayerView$lambda-8(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPlayer$lambda-10(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic e(Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->startPlayAcc$lambda-4(Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V

    return-void
.end method

.method private final obtainPlayer(Ljava/lang/String;Landroid/view/ViewGroup;Z)Lcom/guochao/player/tencent/TencentLivePlayer$Player;
    .locals 9

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->players:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 2
    check-cast v1, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    return-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 3
    new-instance p3, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-virtual {p0}, Lcom/guochao/player/base/BaseLivePlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, p3

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;-><init>(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/content/Context;Landroid/view/View;Lcom/tencent/live2/impl/V2TXLivePlayerImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    invoke-virtual {p3, p1}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->setCurrentStreamId(Ljava/lang/String;)V

    .line 5
    iget-object p3, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->players:Landroid/util/ArrayMap;

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-virtual {p3}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPreviewView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-virtual {p3}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPreviewView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 7
    :cond_2
    iget-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-virtual {p3}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPreviewView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-eqz p3, :cond_3

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-virtual {v1}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPreviewView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 8
    new-instance p3, Lcom/guochao/player/tencent/e;

    invoke-direct {p3, v0, p2}, Lcom/guochao/player/tencent/e;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 9
    :cond_4
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-virtual {p2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object p2

    iget-object p3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-virtual {p3}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPreviewView()Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p2, p3}, Lcom/guochao/player/tencent/TencentLivePlayer;->setRenderView(Lcom/tencent/live2/V2TXLivePlayer;Landroid/view/View;)V

    .line 10
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-virtual {p2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getObserver()Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->setLastStreamId(Ljava/lang/String;)V

    .line 11
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    return-object p1
.end method

.method static synthetic obtainPlayer$default(Lcom/guochao/player/tencent/TencentLivePlayer;Ljava/lang/String;Landroid/view/ViewGroup;ZILjava/lang/Object;)Lcom/guochao/player/tencent/TencentLivePlayer$Player;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPlayer(Ljava/lang/String;Landroid/view/ViewGroup;Z)Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    move-result-object p0

    return-object p0
.end method

.method private static final obtainPlayer$lambda-10(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "$player"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-virtual {v0}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPreviewView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    invoke-virtual {p0}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPreviewView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic obtainPreviewView$default(Lcom/guochao/player/tencent/TencentLivePlayer;ZILjava/lang/Object;)Landroid/view/View;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPreviewView(Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static final setPlayerView$lambda-8(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/view/ViewGroup;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final setPlayerView$lambda-9(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->previewSet:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-direct {p0, v0, p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->setRenderView(Lcom/tencent/live2/V2TXLivePlayer;Landroid/view/View;)V

    return-void
.end method

.method private final setRefer(Ljava/lang/String;)V
    .locals 8

    const-string v0, "setHeaders"

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/live2/V2TXLivePlayer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)I

    goto :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "headers"

    .line 3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "key"

    const-string v7, "Referer"

    .line 5
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "value"

    .line 6
    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v1, v0, p1}, Lcom/tencent/live2/V2TXLivePlayer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)I

    :goto_1
    return-void
.end method

.method private final setRenderView(Lcom/tencent/live2/V2TXLivePlayer;Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p2, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/SurfaceView;)I

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/TextureView;)I

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p2, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_2

    .line 6
    check-cast p2, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1, p2}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private static final startPlayAcc$lambda-3(Landroid/view/View;Landroid/view/ViewGroup;Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V
    .locals 1

    const-string v0, "$preview"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$player"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p3}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object p0

    invoke-virtual {p3}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPreviewView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->setRenderView(Lcom/tencent/live2/V2TXLivePlayer;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private static final startPlayAcc$lambda-4(Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPreviewView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->setRenderView(Lcom/tencent/live2/V2TXLivePlayer;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public freezeAllPlayers()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/player/tencent/TencentLivePlayer;->isPlayerFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/player/tencent/TencentLivePlayer;->setPlayerFrozen(Z)V

    .line 3
    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->players:Landroid/util/ArrayMap;

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->isPlaying()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->pauseAudio()I

    .line 8
    invoke-virtual {v2}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->pauseVideo()I

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->audioMuted:Z

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseAudio()I

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseVideo()I

    return-void
.end method

.method public getVideoSize()Landroid/util/Size;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->width:I

    iget v2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public isCompatMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->loading:Z

    return v0
.end method

.method public isPlayerFrozen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->isPlayerFrozen:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playing:Z

    return v0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPlayer(Ljava/lang/String;Landroid/view/ViewGroup;Z)Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->isPlaying()I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final obtainPreviewView(Z)Landroid/view/View;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p0}, Lcom/guochao/player/base/BaseLivePlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/player/tencent/TencentLivePlayer;->isCompatMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/guochao/player/base/BaseLivePlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 6
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p0}, Lcom/guochao/player/base/BaseLivePlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->audioMuted:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseAudio()I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->pauseVideo()I

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->audioMuted:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeAudio()I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeVideo()I

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/player/tencent/TencentLivePlayer;->isPlayerFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPlayer(Ljava/lang/String;Landroid/view/ViewGroup;Z)Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->pause()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->stopPlay()I

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/player/tencent/TencentLivePlayer;->isPlayerFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPlayer(Ljava/lang/String;Landroid/view/ViewGroup;Z)Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->resume()V

    :cond_1
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->audioMuted:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->audioMuted:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePlayer;->pauseAudio()I

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePlayer;->resumeAudio()I

    :goto_0
    return-void
.end method

.method public setMute(ZLjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p2, v0, v1}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPlayer(Ljava/lang/String;Landroid/view/ViewGroup;Z)Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->pauseAudio()I

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->resumeAudio()I

    :goto_0
    return-void
.end method

.method public setPlayerFrozen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->isPlayerFrozen:Z

    return-void
.end method

.method public setPlayerView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :cond_0
    new-instance v0, Lcom/guochao/player/tencent/b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/player/tencent/b;-><init>(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPlayerView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->previewSet:Z

    .line 3
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/live2/V2TXLivePlayer;->setRenderView(Landroid/view/TextureView;)I

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_3
    new-instance v0, Lcom/guochao/player/tencent/c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/player/tencent/c;-><init>(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 7
    :cond_4
    iget-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->previewSet:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->previewSet:Z

    .line 9
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playerView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/guochao/player/tencent/TencentLivePlayer;->setRenderView(Lcom/tencent/live2/V2TXLivePlayer;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setPlayerView(Landroid/view/ViewGroup;Z)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 13
    iput-boolean p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->previewSet:Z

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->setPlayerView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public startPlay(Ljava/lang/String;Lcom/guochao/user/RoomInfo;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/user/RoomInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->starting:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->lastUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->loading:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->observer:Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    iget-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {p1, p2, v1, v2}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->onVideoPlaying(Lcom/tencent/live2/V2TXLivePlayer;ZLandroid/os/Bundle;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iput-boolean v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->starting:Z

    .line 6
    iput-boolean v1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->loading:Z

    .line 7
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->firstPlay:Landroid/util/ArrayMap;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/guochao/user/RoomInfo;->getRoomId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 8
    invoke-virtual {p2}, Lcom/guochao/user/RoomInfo;->getRefer()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/guochao/player/tencent/TencentLivePlayer;->setRefer(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0, p1}, Lcom/tencent/live2/V2TXLivePlayer;->startLivePlay(Ljava/lang/String;)I

    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_2

    :cond_5
    move-object v0, p1

    .line 10
    :goto_2
    iput-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->lastUrl:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 11
    invoke-virtual {p2}, Lcom/guochao/user/RoomInfo;->getRoomId()Ljava/lang/String;

    move-result-object v2

    :cond_6
    iput-object v2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->lastStreamId:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->observer:Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    invoke-virtual {p2, v2}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->setLastStreamId(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->observer:Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    invoke-virtual {p2, p1}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->setLastUrl(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->observer:Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->setRetryCount(I)V

    .line 15
    iput p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->width:I

    .line 16
    iput p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->height:I

    return-void
.end method

.method public startPlayAcc(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPlayer(Ljava/lang/String;Landroid/view/ViewGroup;Z)Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getObserver()Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->setLastUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->isPlaying()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 7
    invoke-virtual {p2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPreviewView()Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 10
    new-instance v0, Lcom/guochao/player/tencent/a;

    invoke-direct {v0, p1, p3, p0, p2}, Lcom/guochao/player/tencent/a;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    if-eqz p3, :cond_5

    .line 11
    new-instance v0, Lcom/guochao/player/tencent/d;

    invoke-direct {v0, p0, p2}, Lcom/guochao/player/tencent/d;-><init>(Lcom/guochao/player/tencent/TencentLivePlayer;Lcom/guochao/player/tencent/TencentLivePlayer$Player;)V

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 12
    :cond_5
    invoke-virtual {p2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object p3

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->startLivePlay(Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/guochao/player/tencent/TencentLivePlayer;->isPlayerFrozen()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->pauseAudio()I

    .line 15
    invoke-virtual {p2}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->pauseVideo()I

    :cond_6
    return-void
.end method

.method public stopPlay(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->players:Landroid/util/ArrayMap;

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->stopPlay()I

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->players:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->lastStreamId:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1, p1}, Lcom/guochao/player/tencent/TencentLivePlayer;->stopPlay(ZZ)V

    return-void

    .line 16
    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPlayer(Ljava/lang/String;Landroid/view/ViewGroup;Z)Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {v0}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->stopPlay()I

    .line 18
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->players:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public stopPlay(ZZ)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->starting:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {p1}, Lcom/tencent/live2/V2TXLivePlayer;->stopPlay()I

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->starting:Z

    .line 4
    iget-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->firstPlay:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->lastStreamId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, ""

    .line 5
    iput-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->lastUrl:Ljava/lang/String;

    const/4 p2, 0x0

    .line 6
    iput-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->lastStreamId:Ljava/lang/String;

    .line 7
    iput-boolean p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->playing:Z

    return-void
.end method

.method public unfreezeAllPlayers()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/guochao/player/tencent/TencentLivePlayer;->isPlayerFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/player/tencent/TencentLivePlayer;->setPlayerFrozen(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->players:Landroid/util/ArrayMap;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/player/tencent/TencentLivePlayer$Player;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->isPlaying()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->resumeAudio()I

    .line 8
    invoke-virtual {v1}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->resumeVideo()I

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->audioMuted:Z

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeAudio()I

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer;->player:Lcom/tencent/live2/V2TXLivePlayer;

    invoke-virtual {v0}, Lcom/tencent/live2/V2TXLivePlayer;->resumeVideo()I

    return-void
.end method
