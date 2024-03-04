.class public final Lcom/guochao/player/GCLivePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/player/base/ILivePlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/player/GCLivePlayer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 /2\u00020\u0001:\u0001/B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002J\u0008\u0010\u0014\u001a\u00020\u0005H\u0016J\u0008\u0010\u0015\u001a\u00020\u0005H\u0016J\u0008\u0010\u0016\u001a\u00020\u0005H\u0016J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\u0008\u0010\u0018\u001a\u00020\u000bH\u0016J\u0008\u0010\u0019\u001a\u00020\u000bH\u0016J\u0010\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u001c\u001a\u00020\u000bH\u0016J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0012H\u0016J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u0005H\u0016J\u001a\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u00052\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010 \u001a\u00020\u000b2\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010 \u001a\u00020\u000b2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u001a\u0010 \u001a\u00020\u000b2\u0008\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020\u0005H\u0016J\u001c\u0010&\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J&\u0010)\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00122\u0008\u0010*\u001a\u0004\u0018\u00010$H\u0016J\u0018\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u0005H\u0016J\u0012\u0010+\u001a\u00020\u000b2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010.\u001a\u00020\u000bH\u0016R$\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/guochao/player/GCLivePlayer;",
        "Lcom/guochao/player/base/ILivePlayer;",
        "player",
        "(Lcom/guochao/player/base/ILivePlayer;)V",
        "value",
        "",
        "isPlayerFrozen",
        "()Z",
        "setPlayerFrozen",
        "(Z)V",
        "addPlayEventListener",
        "",
        "playEventListener",
        "Lcom/guochao/player/base/ILivePlayer$PlayEventListener;",
        "freezeAllPlayers",
        "getVideoSize",
        "Landroid/util/Size;",
        "handleUrl",
        "",
        "url",
        "isCompatMode",
        "isLoading",
        "isPlaying",
        "streamId",
        "onPause",
        "onResume",
        "pause",
        "removePlayEventListener",
        "reset",
        "resume",
        "setMute",
        "mute",
        "setPlayerView",
        "view",
        "Landroid/view/View;",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "forceReset",
        "startPlay",
        "roomInfo",
        "Lcom/guochao/user/RoomInfo;",
        "startPlayAcc",
        "previewView",
        "stopPlay",
        "clearLastFrame",
        "exitRoom",
        "unfreezeAllPlayers",
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
.field public static final Companion:Lcom/guochao/player/GCLivePlayer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final player:Lcom/guochao/player/base/ILivePlayer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/player/GCLivePlayer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/player/GCLivePlayer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/player/GCLivePlayer;->Companion:Lcom/guochao/player/GCLivePlayer$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/guochao/player/base/ILivePlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/guochao/player/base/ILivePlayer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/player/GCLivePlayer;-><init>(Lcom/guochao/player/base/ILivePlayer;)V

    return-void
.end method

.method public static final createPlayer(Landroid/content/Context;I)Lcom/guochao/player/GCLivePlayer;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/player/GCLivePlayer;->Companion:Lcom/guochao/player/GCLivePlayer$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/guochao/player/GCLivePlayer$Companion;->createPlayer(Landroid/content/Context;I)Lcom/guochao/player/GCLivePlayer;

    move-result-object p0

    return-object p0
.end method

.method private final handleUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "/"

    move-object v0, p1

    .line 1
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "."

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_av1test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "live.facecast.xyz"

    const-string/jumbo v10, "testlive.gchao.com"

    .line 3
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addPlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V
    .locals 1
    .param p1    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "playEventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/guochao/player/base/ILivePlayer;->addPlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    return-void
.end method

.method public freezeAllPlayers()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0}, Lcom/guochao/player/base/ILivePlayer;->freezeAllPlayers()V

    return-void
.end method

.method public getVideoSize()Landroid/util/Size;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0}, Lcom/guochao/player/base/ILivePlayer;->getVideoSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public isCompatMode()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0}, Lcom/guochao/player/base/ILivePlayer;->isCompatMode()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0}, Lcom/guochao/player/base/ILivePlayer;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlayerFrozen()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0}, Lcom/guochao/player/base/ILivePlayer;->isPlayerFrozen()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0}, Lcom/guochao/player/base/ILivePlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlaying(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/guochao/player/base/ILivePlayer;->isPlaying(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0}, Lcom/guochao/player/base/ILivePlayer;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0}, Lcom/guochao/player/base/ILivePlayer;->onResume()V

    return-void
.end method

.method public pause(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/guochao/player/base/ILivePlayer;->pause(Ljava/lang/String;)V

    return-void
.end method

.method public removePlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V
    .locals 1
    .param p1    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "playEventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/guochao/player/base/ILivePlayer;->removePlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0}, Lcom/guochao/player/base/ILivePlayer;->reset()V

    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "streamId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/guochao/player/base/ILivePlayer;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/guochao/player/base/ILivePlayer;->setMute(Z)V

    return-void
.end method

.method public setMute(ZLjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1, p2}, Lcom/guochao/player/base/ILivePlayer;->setMute(ZLjava/lang/String;)V

    return-void
.end method

.method public setPlayerFrozen(Z)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/guochao/player/base/ILivePlayer;->setPlayerFrozen(Z)V

    return-void
.end method

.method public setPlayerView(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/guochao/player/base/ILivePlayer;->setPlayerView(Landroid/view/View;)V

    return-void
.end method

.method public setPlayerView(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/guochao/player/base/ILivePlayer;->setPlayerView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setPlayerView(Landroid/view/ViewGroup;Z)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1, p2}, Lcom/guochao/player/base/ILivePlayer;->setPlayerView(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public startPlay(Ljava/lang/String;Lcom/guochao/user/RoomInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/user/RoomInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1, p2}, Lcom/guochao/player/base/ILivePlayer;->startPlay(Ljava/lang/String;Lcom/guochao/user/RoomInfo;)V

    return-void
.end method

.method public startPlayAcc(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 1
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

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1, p2, p3}, Lcom/guochao/player/base/ILivePlayer;->startPlayAcc(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public stopPlay(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0, p1}, Lcom/guochao/player/base/ILivePlayer;->stopPlay(Ljava/lang/String;)V

    return-void
.end method

.method public stopPlay(ZZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/guochao/player/base/ILivePlayer;->stopPlay(ZZ)V

    return-void
.end method

.method public unfreezeAllPlayers()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/player/GCLivePlayer;->player:Lcom/guochao/player/base/ILivePlayer;

    invoke-interface {v0}, Lcom/guochao/player/base/ILivePlayer;->unfreezeAllPlayers()V

    return-void
.end method
