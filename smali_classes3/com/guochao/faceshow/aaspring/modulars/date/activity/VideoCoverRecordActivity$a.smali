.class Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->initView()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/VideoCoverRecordActivity;->a:Lcom/tencent/ugc/TXUGCRecord;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/tencent/ugc/TXUGCRecord;->setFocusPosition(FF)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
