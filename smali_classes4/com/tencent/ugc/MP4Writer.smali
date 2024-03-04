.class public Lcom/tencent/ugc/MP4Writer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::ugc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/MP4Writer$MP4WriterListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MP4Writer"


# instance fields
.field private mHasAudio:Z

.field private mHasVideo:Z

.field private mListener:Lcom/tencent/ugc/MP4Writer$MP4WriterListener;

.field private volatile mNativePtr:J

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/MP4Writer;->mListener:Lcom/tencent/ugc/MP4Writer$MP4WriterListener;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/tencent/ugc/MP4Writer;->mHasVideo:Z

    .line 5
    iput-boolean v0, p0, Lcom/tencent/ugc/MP4Writer;->mHasAudio:Z

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/tencent/ugc/MP4Writer;->mPath:Ljava/lang/String;

    return-void
.end method

.method private static native nativeCreate(Lcom/tencent/ugc/MP4Writer;)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeSetHasAudio(JZ)V
.end method

.method private static native nativeSetHasVideo(JZ)V
.end method

.method private static native nativeStart(JLjava/lang/String;)V
.end method

.method private static native nativeStop(J)V
.end method

.method private static native nativeWriteAudioFrame(JIIJILjava/nio/ByteBuffer;)V
.end method

.method private static native nativeWriteVideoFrame(JIIIIJJLjava/nio/ByteBuffer;)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    const-string v0, "MP4Writer"

    const-string v1, "finalize"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/ugc/MP4Writer;->stop()V

    return-void
.end method

.method public onComplete(J)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onComplete,durationMs="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP4Writer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/MP4Writer;->mListener:Lcom/tencent/ugc/MP4Writer$MP4WriterListener;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/tencent/ugc/MP4Writer$MP4WriterListener;->onComplete(J)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError,info="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP4Writer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/MP4Writer;->mListener:Lcom/tencent/ugc/MP4Writer$MP4WriterListener;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Lcom/tencent/ugc/MP4Writer$MP4WriterListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public setHasAudio(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setHasAudio,hasAudio="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP4Writer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/tencent/ugc/MP4Writer;->mHasAudio:Z

    return-void
.end method

.method public setHasVideo(Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setHasVideo,hasVideo="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP4Writer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/tencent/ugc/MP4Writer;->mHasVideo:Z

    return-void
.end method

.method public setListener(Lcom/tencent/ugc/MP4Writer$MP4WriterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/MP4Writer;->mListener:Lcom/tencent/ugc/MP4Writer$MP4WriterListener;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MP4Writer"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/tencent/ugc/MP4Writer;->mPath:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 6

    const-string v0, "MP4Writer"

    const-string/jumbo v1, "start"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v1, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-string v1, "it is already started."

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/ugc/MP4Writer;->nativeCreate(Lcom/tencent/ugc/MP4Writer;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    .line 5
    iget-wide v1, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const-string v1, "create native mp4 writer fail."

    .line 6
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    iget-wide v0, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    iget-boolean v2, p0, Lcom/tencent/ugc/MP4Writer;->mHasVideo:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/ugc/MP4Writer;->nativeSetHasVideo(JZ)V

    .line 8
    iget-wide v0, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    iget-boolean v2, p0, Lcom/tencent/ugc/MP4Writer;->mHasAudio:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/ugc/MP4Writer;->nativeSetHasAudio(JZ)V

    .line 9
    iget-wide v0, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    iget-object v2, p0, Lcom/tencent/ugc/MP4Writer;->mPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/ugc/MP4Writer;->nativeStart(JLjava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 5

    const-string v0, "MP4Writer"

    const-string/jumbo v1, "stop"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/MP4Writer;->nativeStop(J)V

    .line 4
    iget-wide v0, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/MP4Writer;->nativeDestroy(J)V

    .line 5
    iput-wide v2, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    return-void
.end method

.method public writeAudioFrame(Lcom/tencent/ugc/AudioFrame;)V
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v5, p0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getSampleRate()I

    move-result v7

    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getChannelCount()I

    move-result v8

    .line 3
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getTimestamp()J

    move-result-wide v9

    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getCodecFormat()Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;->getValue()I

    move-result v11

    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 4
    invoke-static/range {v5 .. v12}, Lcom/tencent/ugc/MP4Writer;->nativeWriteAudioFrame(JIIJILjava/nio/ByteBuffer;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "MP4Writer"

    const-string/jumbo v0, "writeAudioFrame, mNativePtr or frame is null."

    .line 5
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeVideoFrame(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v7, v0, Lcom/tencent/ugc/MP4Writer;->mNativePtr:J

    iget v9, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->width:I

    iget v10, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->height:I

    iget-object v2, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    .line 3
    iget v11, v2, Lcom/tencent/liteav/videobase/common/a;->mValue:I

    .line 4
    iget-object v2, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    .line 5
    iget v12, v2, Lcom/tencent/liteav/videobase/common/CodecType;->mValue:I

    .line 6
    iget-wide v13, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    iget-wide v2, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    iget-object v1, v1, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    move-wide v15, v2

    move-object/from16 v17, v1

    .line 7
    invoke-static/range {v7 .. v17}, Lcom/tencent/ugc/MP4Writer;->nativeWriteVideoFrame(JIIIIJJLjava/nio/ByteBuffer;)V

    return-void

    :cond_1
    :goto_0
    const-string v1, "MP4Writer"

    const-string/jumbo v2, "writeVideoFrame, mNativePtr or frame is null."

    .line 8
    invoke-static {v1, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
