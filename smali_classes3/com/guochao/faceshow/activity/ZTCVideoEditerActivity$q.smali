.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/ZZRangeSlider$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    int-to-long v2, p2

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->Z0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;J)J

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object p2

    iget-wide v0, p2, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    int-to-long p2, p3

    mul-long v0, v0, p2

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->h1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;J)J

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->X0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)J

    move-result-wide p2

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->a2(JJ)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->q1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->q1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    const v0, 0x7f1208c4

    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->X0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/TCUtils;->duration(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    iget-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$q;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->g1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/TCUtils;->duration(J)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
