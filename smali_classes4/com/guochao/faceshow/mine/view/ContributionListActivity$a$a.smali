.class Lcom/guochao/faceshow/mine/view/ContributionListActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;->a(Lcom/guochao/faceshow/adapter/ZZ_RecycleAdapter$ViewHolder;Lcom/guochao/faceshow/mine/model/ContributionBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/model/ContributionBean;

.field final synthetic b:Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;Lcom/guochao/faceshow/mine/model/ContributionBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;

    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a$a;->a:Lcom/guochao/faceshow/mine/model/ContributionBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a$a;->a:Lcom/guochao/faceshow/mine/model/ContributionBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/mine/model/ContributionBean;->getUser_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a$a;->b:Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;

    iget-object v0, v0, Lcom/guochao/faceshow/mine/view/ContributionListActivity$a;->a:Lcom/guochao/faceshow/mine/view/ContributionListActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
