.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/FirstSixBean;->userId:Ljava/lang/String;

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$c;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
