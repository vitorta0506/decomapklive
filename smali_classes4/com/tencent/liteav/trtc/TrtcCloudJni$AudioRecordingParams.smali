.class Lcom/tencent/liteav/trtc/TrtcCloudJni$AudioRecordingParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/trtc/TrtcCloudJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioRecordingParams"
.end annotation


# instance fields
.field private final a:Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioRecordingParams;


# direct methods
.method public constructor <init>(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioRecordingParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$AudioRecordingParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioRecordingParams;

    return-void
.end method


# virtual methods
.method public getContent()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
        value = "AudioRecordingParams"
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$AudioRecordingParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioRecordingParams;

    iget v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioRecordingParams;->recordingContent:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
        value = "AudioRecordingParams"
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/trtc/TrtcCloudJni$AudioRecordingParams;->a:Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioRecordingParams;

    iget-object v0, v0, Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioRecordingParams;->filePath:Ljava/lang/String;

    return-object v0
.end method
