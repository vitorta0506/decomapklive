.class Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->onRecordComplete(Lcom/tencent/ugc/TXRecordCommon$TXRecordResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodeFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method

.method public onEncodeSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/date/activity/UploadVideoCoverMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x400

    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {p1}, Lcom/tencent/ugc/TXUGCRecord;->getPartsManager()Lcom/tencent/ugc/TXUGCPartsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/ugc/TXUGCPartsManager;->deleteAllParts()V

    return-void
.end method
