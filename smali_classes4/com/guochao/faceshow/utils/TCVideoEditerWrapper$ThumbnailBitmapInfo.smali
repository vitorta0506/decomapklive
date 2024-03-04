.class Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailBitmapInfo"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public ptsMs:J

.field final synthetic this$0:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;JLandroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;->this$0:Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;->ptsMs:J

    .line 3
    iput-object p4, p0, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper$ThumbnailBitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
