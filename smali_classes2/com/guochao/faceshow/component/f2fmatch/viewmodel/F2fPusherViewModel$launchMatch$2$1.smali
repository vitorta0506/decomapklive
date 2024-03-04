.class public final Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/trtc/TRTCCloudListener$TRTCAudioFrameListener;


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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001c\u0010\t\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$1",
        "Lcom/tencent/trtc/TRTCCloudListener$TRTCAudioFrameListener;",
        "onCapturedRawAudioFrame",
        "",
        "p0",
        "Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;",
        "onLocalProcessedAudioFrame",
        "onMixedAllAudioFrame",
        "onMixedPlayAudioFrame",
        "onRemoteUserAudioFrame",
        "p1",
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

    iput-object p1, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapturedRawAudioFrame(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;)V
    .locals 1
    .param p1    # Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel$launchMatch$2$1;->this$0:Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;

    invoke-static {v0}, Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;->access$getSpeechToTextUtils$p(Lcom/guochao/faceshow/component/f2fmatch/viewmodel/F2fPusherViewModel;)Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/component/f2fmatch/utils/SpeechToTextUtils;->record(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;)V

    return-void
.end method

.method public onLocalProcessedAudioFrame(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;)V
    .locals 0
    .param p1    # Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onMixedAllAudioFrame(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;)V
    .locals 0
    .param p1    # Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onMixedPlayAudioFrame(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;)V
    .locals 0
    .param p1    # Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onRemoteUserAudioFrame(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
