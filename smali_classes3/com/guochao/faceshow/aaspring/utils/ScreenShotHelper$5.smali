.class Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getScreenShot(Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

.field final synthetic val$imageReader:Landroid/media/ImageReader;

.field final synthetic val$mediaProjection:Landroid/media/projection/MediaProjection;

.field final synthetic val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;Landroid/media/ImageReader;Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;->this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;->val$imageReader:Landroid/media/ImageReader;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;->val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;->val$mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;->val$imageReader:Landroid/media/ImageReader;

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 7
    aget-object v5, v2, v3

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    .line 8
    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    mul-int v6, v5, v0

    sub-int/2addr v2, v6

    .line 9
    div-int/2addr v2, v5

    add-int/2addr v2, v0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 11
    invoke-static {v2, v3, v3, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;->val$virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;->val$mediaProjection:Landroid/media/projection/MediaProjection;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjection;->stop()V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$5;->apply(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
