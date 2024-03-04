.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;->showMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$a;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 2

    .line 2
    iget-boolean p1, p1, Lte/a;->b:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/PhotoActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    const/16 v1, 0x2727

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/ScanActivity;

    const v0, 0x7f01000d

    const v1, 0x7f01000c

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method
