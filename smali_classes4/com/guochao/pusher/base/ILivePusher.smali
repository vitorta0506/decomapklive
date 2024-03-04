.class public interface abstract Lcom/guochao/pusher/base/ILivePusher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/pusher/base/ILivePusher$PushEventListener;,
        Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;,
        Lcom/guochao/pusher/base/ILivePusher$BeautyManager;,
        Lcom/guochao/pusher/base/ILivePusher$FaceDetectListener;,
        Lcom/guochao/pusher/base/ILivePusher$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008f\u0018\u00002\u00020\u0001:\u0004:;<=J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0003H&J\u0008\u0010\u0010\u001a\u00020\u0008H&J\u0008\u0010\u0011\u001a\u00020\u0012H&J\u0008\u0010\u0013\u001a\u00020\u0003H&J\u0008\u0010\u0014\u001a\u00020\u0008H&J\u0008\u0010\u0015\u001a\u00020\u0008H&J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0010\u0010\u0019\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH&J\u0008\u0010\u001a\u001a\u00020\u0008H&J\u0012\u0010\u001b\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u0003H&J\u0010\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u0003H&J&\u0010\"\u001a\u00020\u00082\u0008\u0010#\u001a\u0004\u0018\u00010\u00182\u0008\u0008\u0002\u0010$\u001a\u00020\u001d2\u0008\u0008\u0002\u0010%\u001a\u00020\u001dH&J\u0012\u0010&\u001a\u00020\u00082\u0008\u0010\'\u001a\u0004\u0018\u00010(H&J\u0010\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020+H&J\u0010\u0010)\u001a\u00020\u00082\u0006\u0010*\u001a\u00020,H&J&\u0010-\u001a\u00020\u001d2\u0008\u0010.\u001a\u0004\u0018\u00010\u00182\u0008\u0010/\u001a\u0004\u0018\u00010\u00182\u0008\u00100\u001a\u0004\u0018\u000101H&J\u001c\u00102\u001a\u00020\u00082\u0008\u0010.\u001a\u0004\u0018\u00010\u00182\u0008\u0010/\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u00103\u001a\u00020\u0008H&J\u0008\u00104\u001a\u00020\u0008H&J\u0012\u00105\u001a\u00020\u00082\u0008\u0008\u0002\u00106\u001a\u00020\u0003H&J\u0008\u00107\u001a\u00020\u0008H&J\u0008\u00108\u001a\u00020\u0008H&J\u0008\u00109\u001a\u00020\u0008H&R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0002\u0010\u0004\"\u0004\u0008\u0005\u0010\u0006\u00a8\u0006>\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/pusher/base/ILivePusher;",
        "",
        "isPusherFrozen",
        "",
        "()Z",
        "setPusherFrozen",
        "(Z)V",
        "addPushEventListener",
        "",
        "pushEventListener",
        "Lcom/guochao/pusher/base/ILivePusher$PushEventListener;",
        "enableAudio",
        "enable",
        "enableCamera",
        "enableThirdBeauty",
        "boolean",
        "freezePusher",
        "getBeautyManager",
        "Lcom/guochao/pusher/base/ILivePusher$BeautyManager;",
        "isPushing",
        "onPause",
        "onResume",
        "playBGM",
        "path",
        "",
        "removePushEventListener",
        "reset",
        "setLiveResolution",
        "liveResolution",
        "",
        "setMirror",
        "mirror",
        "setMute",
        "mute",
        "setPauseImage",
        "assetPath",
        "pauseTime",
        "pauseFPS",
        "setSoundLevelListener",
        "listener",
        "Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;",
        "startPreview",
        "view",
        "Landroid/view/TextureView;",
        "Landroid/view/ViewGroup;",
        "startPush",
        "cdnPushUrl",
        "streamId",
        "roomInfo",
        "Lcom/guochao/user/RoomInfo;",
        "startPushToRtc",
        "stopAll",
        "stopBGM",
        "stopPreview",
        "clearLastFrame",
        "stopPush",
        "switchCamera",
        "unfreezePusher",
        "BeautyManager",
        "FaceDetectListener",
        "PushEventListener",
        "PushSoundLevelListener",
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


# virtual methods
.method public abstract addPushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$PushEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract enableAudio(Z)V
.end method

.method public abstract enableCamera(Z)V
.end method

.method public abstract enableThirdBeauty(Z)V
.end method

.method public abstract freezePusher()V
.end method

.method public abstract getBeautyManager()Lcom/guochao/pusher/base/ILivePusher$BeautyManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isPusherFrozen()Z
.end method

.method public abstract isPushing()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract playBGM(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract removePushEventListener(Lcom/guochao/pusher/base/ILivePusher$PushEventListener;)V
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$PushEventListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract reset()V
.end method

.method public abstract setLiveResolution(I)V
.end method

.method public abstract setMirror(Z)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setPauseImage(Ljava/lang/String;II)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPusherFrozen(Z)V
.end method

.method public abstract setSoundLevelListener(Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;)V
    .param p1    # Lcom/guochao/pusher/base/ILivePusher$PushSoundLevelListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract startPreview(Landroid/view/TextureView;)V
    .param p1    # Landroid/view/TextureView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract startPreview(Landroid/view/ViewGroup;)V
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract startPush(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/user/RoomInfo;)I
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/user/RoomInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract startPushToRtc(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract stopAll()V
.end method

.method public abstract stopBGM()V
.end method

.method public abstract stopPreview(Z)V
.end method

.method public abstract stopPush()V
.end method

.method public abstract switchCamera()V
.end method

.method public abstract unfreezePusher()V
.end method
