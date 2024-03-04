.class public Lcom/tencent/liteav/videobase/frame/PixelFrame;
.super Lcom/tencent/liteav/videobase/frame/k;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PixelFrame"

.field private static final sThrottler:Lcom/tencent/liteav/base/b/a;


# instance fields
.field protected mBuffer:Ljava/nio/ByteBuffer;

.field protected mData:[B

.field protected mGLContext:Ljava/lang/Object;

.field protected mHeight:I

.field private mIsMirrorHorizontal:Z

.field private mIsMirrorVertical:Z

.field private mMatrix:[F

.field protected mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

.field protected mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

.field protected mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

.field private mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

.field protected mTextureId:I

.field private mTimestamp:J

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/tencent/liteav/base/b/a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/base/b/a;-><init>(J)V

    sput-object v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->sThrottler:Lcom/tencent/liteav/base/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videobase/frame/k;-><init>(Lcom/tencent/liteav/videobase/frame/g;)V

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    .line 4
    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    .line 5
    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    .line 7
    iput-boolean v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    .line 8
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    .line 9
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    .line 10
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    .line 11
    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    .line 12
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 7
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 26
    invoke-static {p4}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    move-result-object v5

    .line 27
    invoke-static {p5}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->a(I)Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    move-result-object v6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/g;IIILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 3

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/tencent/liteav/videobase/frame/k;-><init>(Lcom/tencent/liteav/videobase/frame/g;)V

    const-wide/16 v1, 0x0

    .line 14
    iput-wide v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    .line 16
    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    .line 17
    sget-object v2, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    .line 19
    iput-boolean v2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    .line 20
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    .line 21
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    .line 22
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    .line 23
    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    .line 24
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    .line 25
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->copy(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    return-void
.end method

.method protected constructor <init>(Lcom/tencent/liteav/videobase/frame/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/g<",
            "+",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videobase/frame/k;-><init>(Lcom/tencent/liteav/videobase/frame/g;)V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    const/4 p1, -0x1

    .line 51
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    .line 52
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    .line 53
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    .line 55
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    .line 57
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    .line 58
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    .line 59
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    .line 60
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/frame/g;IIILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/g<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;III",
            "Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;",
            "Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videobase/frame/k;-><init>(Lcom/tencent/liteav/videobase/frame/g;)V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    .line 33
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    .line 34
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    .line 36
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    .line 38
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    .line 39
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    .line 40
    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    .line 41
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    .line 42
    iput p2, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    .line 43
    iput p3, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    .line 44
    iput-object p6, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 45
    iput-object p5, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    .line 46
    sget-object p1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne p5, p1, :cond_0

    .line 47
    new-array p1, p4, [B

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    return-void

    .line 48
    :cond_0
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/liteav/videobase/frame/g;IILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/liteav/videobase/frame/g<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;II",
            "Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;",
            "Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;",
            ")V"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    if-ne p5, v0, :cond_0

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    :goto_0
    move v5, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>(Lcom/tencent/liteav/videobase/frame/g;IIILcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    return-void
.end method

.method public static createFromBitmap(Landroid/graphics/Bitmap;)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 4
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 4
    :cond_0
    invoke-static {p0, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 7
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    new-instance v1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    .line 12
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    .line 13
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    return-object v1
.end method

.method private getPixelBufferTypeValue()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    .line 2
    iget v0, v0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->mValue:I

    return v0
.end method

.method private getPixelFormatTypeValue()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->getValue()I

    move-result v0

    return v0
.end method

.method private getRotationValue()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 2
    iget v0, v0, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    return v0
.end method

.method public static releasePixelFrames(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/tencent/liteav/videobase/frame/PixelFrame;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    goto :goto_0

    .line 3
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/tencent/liteav/videobase/frame/PixelFrame;)V
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    iput-wide v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    .line 2
    iget v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    iput v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    .line 3
    iget v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    iput v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    .line 4
    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    .line 5
    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    .line 6
    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 7
    iget-boolean v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    .line 8
    iget-boolean v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    .line 9
    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 10
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    .line 11
    invoke-virtual {p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    .line 13
    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    .line 14
    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    .line 15
    iget v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    iput v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    .line 16
    iget-object v0, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    .line 17
    iget-object p1, p1, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getData()[B
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    return-object v0
.end method

.method public getGLContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getGLContextNativeHandle()J
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    instance-of v0, v0, Landroid/opengl/EGLContext;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    check-cast v0, Landroid/opengl/EGLContext;

    invoke-virtual {v0}, Landroid/opengl/EGLContext;->getNativeHandle()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    check-cast v0, Landroid/opengl/EGLContext;

    invoke-virtual {v0}, Landroid/opengl/EGLContext;->getHandle()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    instance-of v0, v0, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->sThrottler:Lcom/tencent/liteav/base/b/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PixelFrame"

    const-string v3, "should not reach here when using EGL10."

    invoke-static {v0, v2, v3, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    return v0
.end method

.method public getMatrix()[F
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    return-object v0
.end method

.method public getMetaData()Lcom/tencent/liteav/videobase/frame/FrameMetaData;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    return-object v0
.end method

.method public getPixelBufferType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    return-object v0
.end method

.method public getPixelFormatType()Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    return-object v0
.end method

.method public getRotation()Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    return v0
.end method

.method public hasTransformParams()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFrameDataValid()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->b:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    :cond_0
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->a:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->d:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isMirrorHorizontal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    return v0
.end method

.method public isMirrorVertical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    return v0
.end method

.method public postRotate(Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->swapWidthHeight()V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 4
    iget v0, v0, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    .line 5
    iget p1, p1, Lcom/tencent/liteav/videobase/utils/Rotation;->mValue:I

    add-int/2addr v0, p1

    .line 6
    rem-int/lit16 v0, v0, 0x168

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/Rotation;->a(I)Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    return-void
.end method

.method public release()V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-super {p0}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    return-void
.end method

.method protected reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    .line 2
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    .line 4
    iput-boolean v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    .line 7
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    return-void
.end method

.method public retain()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-super {p0}, Lcom/tencent/liteav/videobase/frame/k;->retain()I

    move-result v0

    return v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mData:[B

    return-void
.end method

.method public setGLContext(Ljava/lang/Object;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mGLContext:Ljava/lang/Object;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    return-void
.end method

.method public setMatrix([F)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMatrix:[F

    return-void
.end method

.method public setMetaData(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mMetaData:Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    return-void
.end method

.method public setMirrorHorizontal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorHorizontal:Z

    return-void
.end method

.method public setMirrorVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mIsMirrorVertical:Z

    return-void
.end method

.method public setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelBufferType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    return-void
.end method

.method public setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mPixelFormatType:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    return-void
.end method

.method public setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-void
.end method

.method public setTextureId(I)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTextureId:I

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iput-wide p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mTimestamp:J

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    return-void
.end method

.method public swapWidthHeight()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    .line 2
    iget v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    iput v1, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mWidth:I

    .line 3
    iput v0, p0, Lcom/tencent/liteav/videobase/frame/PixelFrame;->mHeight:I

    return-void
.end method
