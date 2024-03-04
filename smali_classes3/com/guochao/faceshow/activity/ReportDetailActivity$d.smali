.class Lcom/guochao/faceshow/activity/ReportDetailActivity$d;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ReportDetailActivity;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ReportDetailActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ReportDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    const-class v1, Lcom/guochao/faceshow/service/AppBackgroundService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "REPORT_UPLOAD"

    .line 3
    invoke-virtual {p1, v0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->b0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->m0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->n0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "files"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->e0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "typeId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->k0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "infoId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ReportDetailActivity;->o0(Lcom/guochao/faceshow/activity/ReportDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ReportDetailActivity$d;->a:Lcom/guochao/faceshow/activity/ReportDetailActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
