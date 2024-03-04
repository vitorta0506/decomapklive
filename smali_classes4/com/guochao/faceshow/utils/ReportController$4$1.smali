.class Lcom/guochao/faceshow/utils/ReportController$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/ScreenShotHelper$OnScreenShotListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/ReportController$4;->onCallBack(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/utils/ReportController$4;

.field final synthetic val$fragmentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/ReportController$4;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/ReportController$4$1;->this$0:Lcom/guochao/faceshow/utils/ReportController$4;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/ReportController$4$1;->val$fragmentBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/ReportController$4$1;->val$fragmentBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/ReportController;->access$000(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/ReportController$4$1;->this$0:Lcom/guochao/faceshow/utils/ReportController$4;

    iget-object v1, v0, Lcom/guochao/faceshow/utils/ReportController$4;->val$activity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/guochao/faceshow/utils/ReportController$4;->val$accountId:Ljava/lang/String;

    iget-object v3, v0, Lcom/guochao/faceshow/utils/ReportController$4;->val$infoId:Ljava/lang/String;

    iget-object v0, v0, Lcom/guochao/faceshow/utils/ReportController$4;->val$reportType:Ljava/lang/String;

    invoke-static {v1, p1, v2, v3, v0}, Lcom/guochao/faceshow/utils/ReportController;->afterBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
