.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$a;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;->initView()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackActivity;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
