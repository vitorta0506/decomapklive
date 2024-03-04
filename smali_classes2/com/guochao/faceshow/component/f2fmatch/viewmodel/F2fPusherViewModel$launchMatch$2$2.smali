.class public final Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;
.super Lcom/tencent/trtc/TRTCCloudListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->launchMatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u001c\u0010\r\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\nH\u0016J\u0018\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u0014H\u0016\u00a8\u0006\u0015"
    }
    d2 = {
        "com/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2",
        "Lcom/tencent/trtc/TRTCCloudListener;",
        "onEnterRoom",
        "",
        "result",
        "",
        "onFirstVideoFrame",
        "userId",
        "",
        "streamType",
        "",
        "width",
        "height",
        "onRecvSEIMsg",
        "data",
        "",
        "onRemoteUserLeaveRoom",
        "reason",
        "onUserVideoAvailable",
        "available",
        "",
        "component_f2f_match_release"
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
.field final synthetic this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    invoke-direct {p0}, Lcom/tencent/trtc/TRTCCloudListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnterRoom(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/trtc/TRTCCloudListener;->onEnterRoom(J)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    invoke-static {p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->access$getEnterRoomCallback$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->access$setEnterRoomCallback$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onFirstVideoFrame(Ljava/lang/String;III)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/trtc/TRTCCloudListener;->onFirstVideoFrame(Ljava/lang/String;III)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    invoke-static {p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->access$getViewModel(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getLastMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->getF2fMatchCallback()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;->onPlayFirstFrame(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;)V

    :cond_1
    return-void
.end method

.method public onRecvSEIMsg(Ljava/lang/String;[B)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/trtc/TRTCCloudListener;->onRecvSEIMsg(Ljava/lang/String;[B)V

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    invoke-static {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->access$getViewModel(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->getLastMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;->getMatchUserInfo()Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fMatchRoomInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->getF2fMatchCallback()Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchCallback;->onReceiveSeiMessage(Lcom/guochao/faceshow/component/f2fmatch/model/F2fMatchModel$F2fHeartBeatModel;Lorg/json/JSONObject;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onRemoteUserLeaveRoom(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/trtc/TRTCCloudListener;->onRemoteUserLeaveRoom(Ljava/lang/String;I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    invoke-static {p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->access$getViewModel(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fMatchViewModel;->markRemoteUserLeaveRoom(Ljava/lang/String;)V

    return-void
.end method

.method public onUserVideoAvailable(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/trtc/TRTCCloudListener;->onUserVideoAvailable(Ljava/lang/String;Z)V

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    invoke-static {p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->access$getOnUserVideoAvailable$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$2;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->access$setOnUserVideoAvailable$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;Lkotlin/jvm/functions/Function1;)V

    :cond_1
    return-void
.end method
