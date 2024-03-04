.class Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;->g0(Lcom/guochao/faceshow/bean/FollowBean;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/bean/FollowBean;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;Lcom/guochao/faceshow/bean/FollowBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$d;->a:Lcom/guochao/faceshow/bean/FollowBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/setting/LiveOpenPushSettingActivity$d;->a:Lcom/guochao/faceshow/bean/FollowBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/FollowBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method
