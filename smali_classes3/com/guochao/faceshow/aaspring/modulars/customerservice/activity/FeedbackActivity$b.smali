.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/customerservice/helper/UploadFeedImageHelper$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->submit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FeedbackFileInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;

    invoke-static {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$b;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->dismissProgressDialog()V

    return-void
.end method
