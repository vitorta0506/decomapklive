.class Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$b;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$b;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->b0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
