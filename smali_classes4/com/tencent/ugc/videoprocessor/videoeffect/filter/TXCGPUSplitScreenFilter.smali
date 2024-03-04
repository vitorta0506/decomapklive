.class public Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;
.super Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;,
        Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;
    }
.end annotation


# static fields
.field private static final DURATION_SPLIT_SCREEN:I = 0x3e8


# instance fields
.field private mSplitScreenParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;

.field private mSpliteNumber:I

.field private mSubWindowPosition:[Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

.field private final mSupportSplitNumber:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSpliteNumber:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSupportSplitNumber:[I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSubWindowPosition:[Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0x9
    .end array-data
.end method

.method private updateParams(Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;)V
    .locals 7

    .line 1
    iget v0, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;->splitScreenNumber:I

    iget v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSpliteNumber:I

    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSupportSplitNumber:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v0, v3, :cond_0

    aget v3, v1, v4

    if-eq v0, v3, :cond_0

    aget v1, v1, v5

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iput v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSpliteNumber:I

    .line 3
    new-array v0, v0, [Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSubWindowPosition:[Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSpliteNumber:I

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSubWindowPosition:[Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

    new-instance v3, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

    invoke-direct {v3, v2}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;-><init>(B)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v0

    iget v0, v0, Lcom/tencent/liteav/base/util/q;->a:I

    .line 7
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object v1

    iget v1, v1, Lcom/tencent/liteav/base/util/q;->b:I

    .line 8
    iget p1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;->splitScreenNumber:I

    iget-object v3, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSupportSplitNumber:[I

    aget v6, v3, v2

    if-ne p1, v6, :cond_2

    .line 9
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSubWindowPosition:[Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

    aget-object v3, p1, v2

    iput v2, v3, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->a:I

    .line 10
    aget-object v3, p1, v2

    iput v2, v3, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->b:I

    .line 11
    aget-object v3, p1, v2

    iput v0, v3, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->c:I

    .line 12
    aget-object p1, p1, v2

    iput v1, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->d:I

    return-void

    .line 13
    :cond_2
    aget v6, v3, v4

    if-ne p1, v6, :cond_4

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSupportSplitNumber:[I

    aget p1, p1, v4

    if-ge v2, p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSubWindowPosition:[Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

    aget-object v3, p1, v2

    rem-int/lit8 v6, v2, 0x2

    mul-int v6, v6, v0

    div-int/2addr v6, v5

    iput v6, v3, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->a:I

    .line 16
    aget-object v3, p1, v2

    div-int/lit8 v6, v2, 0x2

    mul-int v6, v6, v1

    div-int/2addr v6, v5

    iput v6, v3, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->b:I

    .line 17
    aget-object v3, p1, v2

    div-int/lit8 v6, v0, 0x2

    iput v6, v3, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->c:I

    .line 18
    aget-object p1, p1, v2

    div-int/lit8 v3, v1, 0x2

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 19
    :cond_4
    aget v3, v3, v5

    if-ne p1, v3, :cond_5

    .line 20
    :goto_2
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSupportSplitNumber:[I

    aget p1, p1, v5

    if-ge v2, p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSubWindowPosition:[Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

    aget-object v3, p1, v2

    rem-int/lit8 v4, v2, 0x3

    mul-int v4, v4, v0

    div-int/lit8 v4, v4, 0x3

    iput v4, v3, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->a:I

    .line 22
    aget-object v3, p1, v2

    div-int/lit8 v4, v2, 0x3

    mul-int v4, v4, v1

    div-int/lit8 v4, v4, 0x3

    iput v4, v3, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->b:I

    .line 23
    aget-object v3, p1, v2

    div-int/lit8 v4, v0, 0x3

    iput v4, v3, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->c:I

    .line 24
    aget-object p1, p1, v2

    div-int/lit8 v3, v1, 0x3

    iput v3, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->d:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSubWindowPosition:[Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSubWindowPosition:[Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 4
    iget v5, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->a:I

    iget v6, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->b:I

    iget v7, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->c:I

    iget v4, v4, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$a;->d:I

    invoke-static {v5, v6, v7, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/videobase/a/b;->onDraw(ILcom/tencent/liteav/videobase/frame/d;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object p1

    iget p1, p1, Lcom/tencent/liteav/base/util/q;->a:I

    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/a/b;->getOutputSize()Lcom/tencent/liteav/base/util/q;

    move-result-object p2

    iget p2, p2, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-static {v2, v2, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public setNextFrameTimestamp(J)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->setNextFrameTimestamp(J)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSplitScreenParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;

    invoke-direct {v0}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSplitScreenParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->mEffectStartTime:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSplitScreenParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;

    const/4 p2, 0x4

    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;->splitScreenNumber:I

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSplitScreenParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;

    const/16 p2, 0x9

    iput p2, p1, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;->splitScreenNumber:I

    goto :goto_0

    :cond_2
    const-wide/16 p1, -0x1

    .line 7
    iput-wide p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/TXCGPUEffectFilterBase;->mEffectStartTime:J

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->mSplitScreenParam:Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;

    invoke-direct {p0, p1}, Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter;->updateParams(Lcom/tencent/ugc/videoprocessor/videoeffect/filter/TXCGPUSplitScreenFilter$SplitSceenParam;)V

    return-void
.end method
