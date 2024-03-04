.class Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->showEffect(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->f:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$c;->b:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->f:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0, p1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x6

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->W1(JII)V

    :cond_1
    :goto_0
    return-void
.end method
