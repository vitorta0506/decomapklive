.class Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;->l0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/IM_User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/beans/IM_User;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;Lcom/guochao/faceshow/aaspring/beans/IM_User;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$d;->a:Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    const-class v1, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$d;->a:Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getCurrentUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/SearchFriendsActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
