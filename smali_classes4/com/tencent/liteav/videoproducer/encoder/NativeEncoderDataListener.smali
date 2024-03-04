.class public Lcom/tencent/liteav/videoproducer/encoder/NativeEncoderDataListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$VideoEncoderDataListener;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NativeEncoderDataListener"


# instance fields
.field private mNativeVideoEncodeDataListener:J

.field private mStreamType:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/tencent/liteav/videoproducer/encoder/NativeEncoderDataListener;->mNativeVideoEncodeDataListener:J

    .line 3
    iput p3, p0, Lcom/tencent/liteav/videoproducer/encoder/NativeEncoderDataListener;->mStreamType:I

    return-void
.end method

.method private native nativeOnEncodedFail(JII)V
.end method

.method private native nativeOnEncodedNAL(JILcom/tencent/liteav/videobase/common/EncodedVideoFrame;Ljava/nio/ByteBuffer;IIIIJJJJJJIIZI)V
.end method


# virtual methods
.method public declared-synchronized onEncodedFail(Lcom/tencent/liteav/videobase/videobase/h$a;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/NativeEncoderDataListener;->mNativeVideoEncodeDataListener:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget v2, p0, Lcom/tencent/liteav/videoproducer/encoder/NativeEncoderDataListener;->mStreamType:I

    .line 3
    invoke-static {p1}, Lcom/tencent/liteav/videobase/videobase/h;->a(Lcom/tencent/liteav/videobase/videobase/h$a;)I

    move-result p1

    .line 4
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/tencent/liteav/videoproducer/encoder/NativeEncoderDataListener;->nativeOnEncodedFail(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "NativeEncoderDataListener"

    const-string v0, "onEncodedFail nativeclient is zero."

    .line 5
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onEncodedNAL(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;Z)V
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v2, v15, Lcom/tencent/liteav/videoproducer/encoder/NativeEncoderDataListener;->mNativeVideoEncodeDataListener:J

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_2

    if-nez p2, :cond_2

    .line 2
    iget v4, v15, Lcom/tencent/liteav/videoproducer/encoder/NativeEncoderDataListener;->mStreamType:I

    iget-object v7, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    iget-object v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    .line 3
    iget v8, v5, Lcom/tencent/liteav/videobase/common/a;->mValue:I

    .line 4
    iget-object v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/b;

    .line 5
    iget v9, v5, Lcom/tencent/liteav/videobase/common/b;->mValue:I

    .line 6
    iget-object v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    .line 7
    iget v10, v5, Lcom/tencent/liteav/videobase/common/CodecType;->mValue:I

    .line 8
    iget v11, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    iget-wide v12, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    iget-wide v14, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    move-wide/from16 v18, v14

    iget-wide v14, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    move-wide/from16 v20, v14

    iget-wide v14, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    move-wide/from16 v22, v14

    iget-wide v14, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->refFrameIndex:J

    iget v5, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->width:I

    move-wide/from16 v24, v14

    iget v15, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->height:I

    iget-object v14, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    if-eqz v14, :cond_0

    const/16 v26, 0x1

    goto :goto_0

    :cond_0
    const/16 v26, 0x0

    :goto_0
    if-nez v14, :cond_1

    const/16 v27, 0x0

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v27, v1

    :goto_1
    move-object/from16 v1, p0

    move/from16 v28, v5

    move-object/from16 v5, p1

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move-wide v11, v12

    move-wide/from16 v13, v16

    move v0, v15

    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v22

    move-wide/from16 v21, v24

    move/from16 v23, v28

    move/from16 v24, v0

    move/from16 v25, v26

    move/from16 v26, v27

    .line 10
    invoke-direct/range {v1 .. v26}, Lcom/tencent/liteav/videoproducer/encoder/NativeEncoderDataListener;->nativeOnEncodedNAL(JILcom/tencent/liteav/videobase/common/EncodedVideoFrame;Ljava/nio/ByteBuffer;IIIIJJJJJJIIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v0, "NativeEncoderDataListener"

    const-string v4, "onEncodedNAL mNativeVideoEncodeDataListener=%d,isEos=%b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    .line 12
    invoke-static {v0, v4, v5}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 1
    :try_start_0
    iput-wide v0, p0, Lcom/tencent/liteav/videoproducer/encoder/NativeEncoderDataListener;->mNativeVideoEncodeDataListener:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
