.class Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->startScreenShot(Landroid/app/Activity;ZLcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;)Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;)Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;->onCallBack(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
