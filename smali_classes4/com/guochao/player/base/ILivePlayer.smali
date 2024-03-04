.class public interface abstract Lcom/guochao/player/base/ILivePlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/player/base/ILivePlayer$Companion;,
        Lcom/guochao/player/base/ILivePlayer$PlayEventListener;,
        Lcom/guochao/player/base/ILivePlayer$StreamInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008f\u0018\u0000 +2\u00020\u0001:\u0003+,-J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\u0008H&J\u0008\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u0003H&J\u0008\u0010\u000f\u001a\u00020\u0003H&J\u0008\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0008\u0010\u0013\u001a\u00020\u0008H&J\u0008\u0010\u0014\u001a\u00020\u0008H&J\u0010\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u0017\u001a\u00020\u0008H&J\u0010\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0010\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0003H&J\u001a\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u00032\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0010\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0012\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH&J\u001a\u0010\u001b\u001a\u00020\u00082\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u0003H&J\u001c\u0010!\u001a\u00020\u00082\u0008\u0010\"\u001a\u0004\u0018\u00010\u00122\u0008\u0010#\u001a\u0004\u0018\u00010$H&J&\u0010%\u001a\u00020\u00082\u0008\u0010\"\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010&\u001a\u0004\u0018\u00010\u001fH&J\u0018\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u00032\u0006\u0010)\u001a\u00020\u0003H&J\u0012\u0010\'\u001a\u00020\u00082\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0008\u0010*\u001a\u00020\u0008H&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0005\u0010\u0006\u00a8\u0006.\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/player/base/ILivePlayer;",
        "",
        "isPlayerFrozen",
        "",
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
        "isCompatMode",
        "isLoading",
        "isPlaying",
        "streamId",
        "",
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
        "url",
        "roomInfo",
        "Lcom/guochao/user/RoomInfo;",
        "startPlayAcc",
        "previewView",
        "stopPlay",
        "clearLastFrame",
        "exitRoom",
        "unfreezeAllPlayers",
        "Companion",
        "PlayEventListener",
        "StreamInfo",
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
.field public static final CODE_PLAY_FAIL:I = 0x3e9

.field public static final Companion:Lcom/guochao/player/base/ILivePlayer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/guochao/player/base/ILivePlayer$Companion;->$$INSTANCE:Lcom/guochao/player/base/ILivePlayer$Companion;

    sput-object v0, Lcom/guochao/player/base/ILivePlayer;->Companion:Lcom/guochao/player/base/ILivePlayer$Companion;

    return-void
.end method


# virtual methods
.method public abstract addPlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V
    .param p1    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract freezeAllPlayers()V
.end method

.method public abstract getVideoSize()Landroid/util/Size;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isCompatMode()Z
.end method

.method public abstract isLoading()Z
.end method

.method public abstract isPlayerFrozen()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPlaying(Ljava/lang/String;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract pause(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract removePlayEventListener(Lcom/guochao/player/base/ILivePlayer$PlayEventListener;)V
    .param p1    # Lcom/guochao/player/base/ILivePlayer$PlayEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract reset()V
.end method

.method public abstract resume(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setMute(ZLjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPlayerFrozen(Z)V
.end method

.method public abstract setPlayerView(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setPlayerView(Landroid/view/ViewGroup;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPlayerView(Landroid/view/ViewGroup;Z)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract startPlay(Ljava/lang/String;Lcom/guochao/user/RoomInfo;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/user/RoomInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract startPlayAcc(Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewGroup;)V
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
.end method

.method public abstract stopPlay(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract stopPlay(ZZ)V
.end method

.method public abstract unfreezeAllPlayers()V
.end method
