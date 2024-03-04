.class Lcom/guochao/faceshow/utils/ReportController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/ReportController;->reportWithDialogAndActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/Window;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$accountId:Ljava/lang/String;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$infoId:Ljava/lang/String;

.field final synthetic val$reportType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/ReportController$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/ReportController$4;->val$accountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/utils/ReportController$4;->val$infoId:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/utils/ReportController$4;->val$reportType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->getInstance()Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/utils/ReportController$4;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/guochao/faceshow/utils/ReportController$4$1;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/utils/ReportController$4$1;-><init>(Lcom/guochao/faceshow/utils/ReportController$4;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper;->startScreenShot(Landroid/app/Activity;ZLcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;)V

    return-void
.end method
