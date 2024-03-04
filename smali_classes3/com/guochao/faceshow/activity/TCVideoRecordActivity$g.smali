.class Lcom/guochao/faceshow/activity/TCVideoRecordActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

.field final synthetic b:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/TCVideoRecordActivity;Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$g;->b:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

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
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$g;->b:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h5:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$g;->b:Lcom/guochao/faceshow/activity/TCVideoRecordActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity;->h5:Lcom/guochao/pusher/beauty/XMagicBeautyManager;

    invoke-virtual {v0, p1}, Lcom/guochao/pusher/beauty/XMagicBeautyManager;->setMotionTmpl(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/TCVideoRecordActivity$g;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result p2

    int-to-long v0, p2

    const/4 p2, 0x6

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->W1(JII)V

    :cond_0
    return-void
.end method
