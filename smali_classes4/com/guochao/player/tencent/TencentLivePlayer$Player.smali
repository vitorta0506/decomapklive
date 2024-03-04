.class public final Lcom/guochao/player/tencent/TencentLivePlayer$Player;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/player/tencent/TencentLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Player"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u001cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/player/tencent/TencentLivePlayer$Player;",
        "",
        "hostPlayer",
        "Lcom/guochao/player/tencent/TencentLivePlayer;",
        "context",
        "Landroid/content/Context;",
        "previewView",
        "Landroid/view/View;",
        "player",
        "Lcom/tencent/live2/impl/V2TXLivePlayerImpl;",
        "(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/content/Context;Landroid/view/View;Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V",
        "getContext",
        "()Landroid/content/Context;",
        "currentStreamId",
        "",
        "getCurrentStreamId",
        "()Ljava/lang/String;",
        "setCurrentStreamId",
        "(Ljava/lang/String;)V",
        "observer",
        "Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;",
        "getObserver",
        "()Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;",
        "getPlayer",
        "()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;",
        "getPreviewView",
        "()Landroid/view/View;",
        "pause",
        "",
        "resume",
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
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentStreamId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final observer:Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final player:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final previewView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/content/Context;Landroid/view/View;Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V
    .locals 1
    .param p1    # Lcom/guochao/player/tencent/TencentLivePlayer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/tencent/live2/impl/V2TXLivePlayerImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "hostPlayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->context:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->previewView:Landroid/view/View;

    .line 4
    iput-object p4, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->player:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    const/16 p2, 0x5dc

    .line 5
    invoke-virtual {p4, p2}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->enableVolumeEvaluation(I)I

    .line 6
    new-instance p2, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    invoke-direct {p2, p1}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;-><init>(Lcom/guochao/player/tencent/TencentLivePlayer;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->currentStreamId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;->setLastStreamId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p4, p2}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->setObserver(Lcom/tencent/live2/V2TXLivePlayerObserver;)V

    .line 9
    iput-object p2, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->observer:Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/content/Context;Landroid/view/View;Lcom/tencent/live2/impl/V2TXLivePlayerImpl;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x1

    .line 10
    invoke-virtual {p1, p3}, Lcom/guochao/player/tencent/TencentLivePlayer;->obtainPreviewView(Z)Landroid/view/View;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 11
    new-instance p4, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-direct {p4, p2}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;-><init>(Landroid/content/Context;)V

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/player/tencent/TencentLivePlayer$Player;-><init>(Lcom/guochao/player/tencent/TencentLivePlayer;Landroid/content/Context;Landroid/view/View;Lcom/tencent/live2/impl/V2TXLivePlayerImpl;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentStreamId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->currentStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public final getObserver()Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->observer:Lcom/guochao/player/tencent/TencentLivePlayer$PlayObserver;

    return-object v0
.end method

.method public final getPlayer()Lcom/tencent/live2/impl/V2TXLivePlayerImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->player:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    return-object v0
.end method

.method public final getPreviewView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->previewView:Landroid/view/View;

    return-object v0
.end method

.method public final pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->player:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-virtual {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->pauseAudio()I

    .line 2
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->player:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-virtual {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->pauseVideo()I

    return-void
.end method

.method public final resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->player:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-virtual {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->resumeAudio()I

    .line 2
    iget-object v0, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->player:Lcom/tencent/live2/impl/V2TXLivePlayerImpl;

    invoke-virtual {v0}, Lcom/tencent/live2/impl/V2TXLivePlayerImpl;->resumeVideo()I

    return-void
.end method

.method public final setCurrentStreamId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/player/tencent/TencentLivePlayer$Player;->currentStreamId:Ljava/lang/String;

    return-void
.end method
