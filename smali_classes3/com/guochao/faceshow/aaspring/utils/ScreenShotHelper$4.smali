.class Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$4;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


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
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$4;->this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$4;->this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;)Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$4;->this$0:Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->access$000(Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;)Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;->onCallBack(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 4
    sput-boolean p1, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->onActivityResult:Z

    .line 5
    :cond_0
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/trtc/ScreenShotService;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/ServiceUtils;->safeStopForegroundService(Ljava/lang/Class;)Z

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$4;->onNext(Landroid/graphics/Bitmap;)V

    return-void
.end method
