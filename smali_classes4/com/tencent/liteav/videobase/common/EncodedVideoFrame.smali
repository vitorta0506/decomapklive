.class public Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EncodedVideoFrame"


# instance fields
.field public codecType:Lcom/tencent/liteav/videobase/common/CodecType;

.field public data:Ljava/nio/ByteBuffer;

.field public dts:J

.field public frameIndex:J

.field public gopFrameIndex:J

.field public gopIndex:J

.field public height:I

.field public info:Landroid/media/MediaCodec$BufferInfo;

.field public isEosFrame:Z

.field public nalType:Lcom/tencent/liteav/videobase/common/a;

.field public nativePtr:J

.field public profileType:Lcom/tencent/liteav/videobase/common/b;

.field public pts:J

.field public refFrameIndex:J

.field public rotation:I

.field public svcInfo:Ljava/lang/Integer;

.field public videoFormat:Landroid/media/MediaFormat;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nativePtr:J

    .line 3
    sget-object v2, Lcom/tencent/liteav/videobase/common/CodecType;->b:Lcom/tencent/liteav/videobase/common/CodecType;

    iput-object v2, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    .line 4
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    .line 5
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    .line 6
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    .line 7
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->refFrameIndex:J

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isEosFrame:Z

    .line 10
    iput-object v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method public static createEncodedVideoFrame(Ljava/nio/ByteBuffer;IIIJJJJJJIJIIZI)Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;-><init>()V

    move-object v1, p0

    .line 2
    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    move-wide/from16 v1, p17

    .line 3
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nativePtr:J

    .line 4
    invoke-static {p1}, Lcom/tencent/liteav/videobase/common/a;->a(I)Lcom/tencent/liteav/videobase/common/a;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    .line 5
    invoke-static {p2}, Lcom/tencent/liteav/videobase/common/b;->a(I)Lcom/tencent/liteav/videobase/common/b;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/b;

    .line 6
    invoke-static/range {p16 .. p16}, Lcom/tencent/liteav/videobase/common/CodecType;->a(I)Lcom/tencent/liteav/videobase/common/CodecType;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    move v1, p3

    .line 7
    iput v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    move-wide v1, p4

    .line 8
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    move-wide v1, p6

    .line 9
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    move-wide v1, p8

    .line 10
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    move-wide v1, p10

    .line 11
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    move-wide v1, p12

    .line 12
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    move-wide/from16 v1, p14

    .line 13
    iput-wide v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->refFrameIndex:J

    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->info:Landroid/media/MediaCodec$BufferInfo;

    move/from16 v2, p19

    .line 15
    iput v2, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->width:I

    move/from16 v2, p20

    .line 16
    iput v2, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->height:I

    if-eqz p21, :cond_0

    .line 17
    invoke-static/range {p22 .. p22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    goto :goto_0

    .line 18
    :cond_0
    iput-object v1, v0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    :goto_0
    return-object v0
.end method

.method private getNalTypeFromH264NALHeader(Ljava/nio/ByteBuffer;I)Lcom/tencent/liteav/videobase/common/a;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit8 p1, p1, 0x1f

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    .line 2
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->a:Lcom/tencent/liteav/videobase/common/a;

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->i:Lcom/tencent/liteav/videobase/common/a;

    return-object p1

    .line 4
    :cond_1
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->h:Lcom/tencent/liteav/videobase/common/a;

    return-object p1

    .line 5
    :cond_2
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->e:Lcom/tencent/liteav/videobase/common/a;

    return-object p1

    .line 6
    :cond_3
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->b:Lcom/tencent/liteav/videobase/common/a;

    return-object p1
.end method

.method private getNalTypeFromH265NALHeader(Ljava/nio/ByteBuffer;I)Lcom/tencent/liteav/videobase/common/a;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    and-int/lit8 p1, p1, 0x7e

    shr-int/lit8 p1, p1, 0x1

    const/16 p2, 0x27

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 2
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->a:Lcom/tencent/liteav/videobase/common/a;

    return-object p1

    .line 3
    :pswitch_0
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->i:Lcom/tencent/liteav/videobase/common/a;

    return-object p1

    .line 4
    :pswitch_1
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->h:Lcom/tencent/liteav/videobase/common/a;

    return-object p1

    .line 5
    :pswitch_2
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->j:Lcom/tencent/liteav/videobase/common/a;

    return-object p1

    .line 6
    :pswitch_3
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->b:Lcom/tencent/liteav/videobase/common/a;

    return-object p1

    .line 7
    :cond_0
    sget-object p1, Lcom/tencent/liteav/videobase/common/a;->e:Lcom/tencent/liteav/videobase/common/a;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNextNALHeaderPos(ILjava/nio/ByteBuffer;)I
    .locals 3

    :goto_0
    add-int/lit8 v0, p0, 0x3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p0, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_0

    add-int/lit8 p0, p0, 0x4

    return p0

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v1, p0, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private native nativeRelease(J)V
.end method

.method public static resetEncodedVideoFrame(Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;)J
    .locals 5
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 2
    iput-object v4, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    .line 3
    iput-wide v2, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nativePtr:J

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-string v0, "EncodedVideoFrame"

    const-string v1, "nativePtr != 0, must call release before finalize "

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->release()V

    :cond_0
    return-void
.end method

.method public isH265()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    sget-object v1, Lcom/tencent/liteav/videobase/common/CodecType;->c:Lcom/tencent/liteav/videobase/common/CodecType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIDRFrame()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget-object v2, Lcom/tencent/liteav/videobase/common/a;->b:Lcom/tencent/liteav/videobase/common/a;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method public isRPSEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/b;

    sget-object v1, Lcom/tencent/liteav/videobase/common/b;->e:Lcom/tencent/liteav/videobase/common/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/videobase/common/b;->f:Lcom/tencent/liteav/videobase/common/b;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/videobase/common/b;->g:Lcom/tencent/liteav/videobase/common/b;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSVCEnable()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->svcInfo:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nativeRelease(J)V

    .line 3
    iput-wide v2, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nativePtr:J

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nalType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profiletype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->profileType:Lcom/tencent/liteav/videobase/common/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", codecType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->codecType:Lcom/tencent/liteav/videobase/common/CodecType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->dts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->pts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gopIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gopFrameIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->gopFrameIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", frameIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->frameIndex:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateNALTypeAccordingNALHeader()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/tencent/liteav/videobase/common/a;->a:Lcom/tencent/liteav/videobase/common/a;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->getNextNALHeaderPos(ILjava/nio/ByteBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 4
    sget-object v1, Lcom/tencent/liteav/videobase/common/a;->a:Lcom/tencent/liteav/videobase/common/a;

    .line 5
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->isH265()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->getNalTypeFromH265NALHeader(Ljava/nio/ByteBuffer;I)Lcom/tencent/liteav/videobase/common/a;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->data:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2, v0}, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->getNalTypeFromH264NALHeader(Ljava/nio/ByteBuffer;I)Lcom/tencent/liteav/videobase/common/a;

    move-result-object v2

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    if-eqz v3, :cond_3

    if-eq v3, v1, :cond_3

    sget-object v1, Lcom/tencent/liteav/videobase/common/a;->b:Lcom/tencent/liteav/videobase/common/a;

    if-ne v2, v1, :cond_4

    .line 9
    :cond_3
    iput-object v2, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/tencent/liteav/videobase/common/EncodedVideoFrame;->nalType:Lcom/tencent/liteav/videobase/common/a;

    sget-object v2, Lcom/tencent/liteav/videobase/common/a;->h:Lcom/tencent/liteav/videobase/common/a;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/tencent/liteav/videobase/common/a;->i:Lcom/tencent/liteav/videobase/common/a;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/tencent/liteav/videobase/common/a;->j:Lcom/tencent/liteav/videobase/common/a;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/tencent/liteav/videobase/common/a;->e:Lcom/tencent/liteav/videobase/common/a;

    if-eq v1, v2, :cond_1

    :cond_5
    :goto_1
    return-void
.end method
