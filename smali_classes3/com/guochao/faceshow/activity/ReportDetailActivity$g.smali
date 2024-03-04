.class Lcom/guochao/faceshow/activity/ReportDetailActivity$g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/activity/ReportDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ReportDetailActivity;


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;Lcom/guochao/faceshow/activity/ReportDetailActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;-><init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "type"

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "total"

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "current"

    .line 4
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "REPORT_PIC_TEXT_UPLOAD_STATUS"

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    const-string p2, "100%"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/l;->h(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/l;->d()V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->r0(Lcom/guochao/faceshow/activity/ReportDetailActivity;Lcom/guochao/faceshow/views/l;)Lcom/guochao/faceshow/views/l;

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    const p2, 0x7f1207a8

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    goto/16 :goto_0

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/l;->d()V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    const-string p2, "REPORT_UPLOAD"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->g0(Lcom/guochao/faceshow/activity/ReportDetailActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_8

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    if-nez p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    new-instance p2, Lcom/guochao/faceshow/views/l;

    invoke-direct {p2}, Lcom/guochao/faceshow/views/l;-><init>()V

    invoke-static {p1, p2}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->r0(Lcom/guochao/faceshow/activity/ReportDetailActivity;Lcom/guochao/faceshow/views/l;)Lcom/guochao/faceshow/views/l;

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    const-string v3, ""

    invoke-virtual {p1, p2, v3}, Lcom/guochao/faceshow/views/l;->c(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/l;->f(Z)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/l;->g(Z)V

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/l;->e()Z

    move-result p1

    if-nez p1, :cond_6

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/l;->i()V

    :cond_6
    const-wide/16 p1, 0x64

    mul-long v1, v1, p1

    .line 22
    div-long/2addr v1, v4

    cmp-long v0, v1, p1

    if-ltz v0, :cond_7

    const-wide/16 v1, 0x63

    .line 23
    :cond_7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$g;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->q0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/views/l;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_8
    :goto_0
    return-void
.end method
