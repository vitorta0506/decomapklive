.class Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->b0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;F)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$d;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->mPhotoView:Lcom/guochao/faceshow/aaspring/views/ImageCropView;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$d;->a:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/github/chrisbanes/photoview/PhotoView;->d(FZ)V

    return-void
.end method
