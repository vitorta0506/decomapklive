.class public Lcom/tencent/liteav/videobase/frame/FrameMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;
    }
.end annotation


# instance fields
.field private final mCaptureMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

.field private final mCaptureRealFrameSize:Lcom/tencent/liteav/base/util/q;

.field private mCaptureRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private final mEncodeMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

.field private mEncodeRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private final mEncodeSize:Lcom/tencent/liteav/base/util/q;

.field private mIsFrontCamera:Z

.field private final mPreprocessorMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

.field private mPreprocessorRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private mPreprocessorScaleType:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

.field private final mRenderMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

.field private mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private final mRenderSize:Lcom/tencent/liteav/base/util/q;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mCaptureRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mIsFrontCamera:Z

    .line 4
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mPreprocessorRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 5
    sget-object v2, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    iput-object v2, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mPreprocessorScaleType:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    .line 6
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 7
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mEncodeRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 8
    new-instance v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;-><init>(B)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mCaptureMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    .line 9
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mCaptureRealFrameSize:Lcom/tencent/liteav/base/util/q;

    .line 10
    new-instance v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;-><init>(B)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mPreprocessorMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    .line 11
    new-instance v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;-><init>(B)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mRenderMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    .line 12
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mRenderSize:Lcom/tencent/liteav/base/util/q;

    .line 13
    new-instance v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;-><init>(B)V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mEncodeMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    .line 14
    new-instance v0, Lcom/tencent/liteav/base/util/q;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/q;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mEncodeSize:Lcom/tencent/liteav/base/util/q;

    return-void
.end method


# virtual methods
.method public getCaptureRealSize()Lcom/tencent/liteav/base/util/q;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mCaptureRealFrameSize:Lcom/tencent/liteav/base/util/q;

    return-object v0
.end method

.method public getCaptureRotation()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mCaptureRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 2
    iget v0, v0, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    return v0
.end method

.method public getEncodeRotation()Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mEncodeRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-object v0
.end method

.method public getEncodeSize()Lcom/tencent/liteav/base/util/q;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mEncodeSize:Lcom/tencent/liteav/base/util/q;

    return-object v0
.end method

.method public getPreprocessorRotation()Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mPreprocessorRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-object v0
.end method

.method public getPreprocessorScaleType()Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mPreprocessorScaleType:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    return-object v0
.end method

.method public getRenderRotation()Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-object v0
.end method

.method public getRenderSize()Lcom/tencent/liteav/base/util/q;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mRenderSize:Lcom/tencent/liteav/base/util/q;

    return-object v0
.end method

.method public isCaptureMirrorHorizontal()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mCaptureMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iget-boolean v0, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->a:Z

    return v0
.end method

.method public isCaptureMirrorVertical()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mCaptureMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iget-boolean v0, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->b:Z

    return v0
.end method

.method public isEncodeMirrorHorizontal()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mEncodeMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iget-boolean v0, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->a:Z

    return v0
.end method

.method public isEncodeMirrorVertical()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mEncodeMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iget-boolean v0, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->b:Z

    return v0
.end method

.method public isFrontCamera()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mIsFrontCamera:Z

    return v0
.end method

.method public isPreprocessorMirrorHorizontal()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mPreprocessorMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iget-boolean v0, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->a:Z

    return v0
.end method

.method public isPreprocessorMirrorVertical()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mPreprocessorMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iget-boolean v0, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->b:Z

    return v0
.end method

.method public isRenderMirrorHorizontal()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mRenderMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iget-boolean v0, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->a:Z

    return v0
.end method

.method public isRenderMirrorVertical()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mRenderMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iget-boolean v0, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->b:Z

    return v0
.end method

.method public setCaptureMetaData(ZZIZII)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mCaptureMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iput-boolean p1, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->a:Z

    .line 2
    iput-boolean p2, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->b:Z

    .line 3
    invoke-static {p3}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mCaptureRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 4
    iput-boolean p4, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mIsFrontCamera:Z

    .line 5
    iget-object p1, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mCaptureRealFrameSize:Lcom/tencent/liteav/base/util/q;

    iput p5, p1, Lcom/tencent/liteav/base/util/q;->a:I

    .line 6
    iput p6, p1, Lcom/tencent/liteav/base/util/q;->b:I

    return-void
.end method

.method public setEncodeMetaData(ZZIII)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mEncodeMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iput-boolean p1, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->a:Z

    .line 2
    iput-boolean p2, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->b:Z

    .line 3
    invoke-static {p3}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mEncodeRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mEncodeSize:Lcom/tencent/liteav/base/util/q;

    iput p4, p1, Lcom/tencent/liteav/base/util/q;->a:I

    .line 5
    iput p5, p1, Lcom/tencent/liteav/base/util/q;->b:I

    return-void
.end method

.method public setPreprocessorMetaData(ZZII)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mPreprocessorMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iput-boolean p1, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->a:Z

    .line 2
    iput-boolean p2, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->b:Z

    .line 3
    invoke-static {p3}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mPreprocessorRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 4
    invoke-static {p4}, Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mPreprocessorScaleType:Lcom/tencent/liteav/videobase/base/GLConstants$GLScaleType;

    return-void
.end method

.method public setRenderMetaData(ZZIII)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mRenderMirror:Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;

    iput-boolean p1, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->a:Z

    .line 2
    iput-boolean p2, v0, Lcom/tencent/liteav/videobase/frame/FrameMetaData$a;->b:Z

    .line 3
    invoke-static {p3}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mRenderRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->mRenderSize:Lcom/tencent/liteav/base/util/q;

    iput p4, p1, Lcom/tencent/liteav/base/util/q;->a:I

    .line 5
    iput p5, p1, Lcom/tencent/liteav/base/util/q;->b:I

    return-void
.end method
