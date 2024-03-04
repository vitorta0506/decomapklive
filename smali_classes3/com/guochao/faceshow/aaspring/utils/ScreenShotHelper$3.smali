.class Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/trtc/ScreenShotService$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->onActivityResult(Landroid/app/Activity;ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

.field final synthetic val$imageReader:Landroid/media/ImageReader;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;Landroid/media/ImageReader;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$3;->val$imageReader:Landroid/media/ImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaProjectionValue(Landroid/media/projection/MediaProjection;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$3;->this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$3;->val$imageReader:Landroid/media/ImageReader;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->access$100(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;Landroid/media/ImageReader;Landroid/media/projection/MediaProjection;)V

    return-void
.end method
