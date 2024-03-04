.class Lcom/guochao/faceshow/utils/ReportController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/ReportController;->report(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$f2f:Z

.field final synthetic val$infoId:Ljava/lang/String;

.field final synthetic val$reportType:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$f2f:Z

    iput-object p2, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$accountId:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$infoId:Ljava/lang/String;

    iput-object p5, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$reportType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$f2f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$infoId:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/utils/ReportController$1;->val$reportType:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/guochao/faceshow/utils/ReportController;->afterBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
