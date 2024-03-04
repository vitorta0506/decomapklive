.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$a;
.super Lcom/guochao/faceshow/aaspring/views/v$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/v$d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstIconClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "It is a becoming a big trend on BuzzCast now! Click here:#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/bean/FirstSixBean;->tname:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".join me and have fun! tap here\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Leb/b;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/bean/FirstSixBean;->img:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/VideoTopicsActivity;)Lcom/guochao/faceshow/bean/FirstSixBean;

    move-result-object v3

    iget-object v3, v3, Lcom/guochao/faceshow/bean/FirstSixBean;->share_url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, v3}, Leb/b;->G(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
