.class public Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    .line 3
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c0f

    const-string v2, "field \'tvDoNotLook\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvDoNotLook:Landroid/widget/TextView;

    .line 4
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a0afc

    const-string v2, "field \'swDoNotLook\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLook:Landroid/widget/CheckBox;

    .line 5
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a09ac

    const-string v2, "field \'rlDoNotLookLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlDoNotLookLayout:Landroid/widget/RelativeLayout;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c0e

    const-string v2, "field \'tvDoNotLiveNotice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvDoNotLiveNotice:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a0afb

    const-string v2, "field \'swDoNotLiveNotice\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLiveNotice:Landroid/widget/CheckBox;

    .line 8
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a09ab

    const-string v2, "field \'rlDoNotLiveNoticeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlDoNotLiveNoticeLayout:Landroid/widget/RelativeLayout;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c32

    const-string v2, "field \'tvStealth\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvStealth:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a0b01

    const-string v2, "field \'swStealth\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swStealth:Landroid/widget/CheckBox;

    .line 11
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a09b6

    const-string v2, "field \'rlStealthLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlStealthLayout:Landroid/widget/RelativeLayout;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c2f

    const-string v2, "field \'tvShielding\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvShielding:Landroid/widget/TextView;

    .line 13
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a09b5

    const-string v2, "field \'rlShieldingLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlShieldingLayout:Landroid/widget/RelativeLayout;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c38

    const-string v2, "field \'tvToReport\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvToReport:Landroid/widget/TextView;

    .line 15
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a09b8

    const-string v2, "field \'rlToReportLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlToReportLayout:Landroid/widget/RelativeLayout;

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0c18

    const-string v2, "field \'tvMeet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvMeet:Landroid/widget/TextView;

    .line 17
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0a63

    const-string v2, "field \'setGroup\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->setGroup:Landroid/widget/RelativeLayout;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a04a2

    const-string v2, "field \'groupName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->groupName:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a0aff

    const-string v2, "field \'swMeet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swMeet:Landroid/widget/CheckBox;

    .line 20
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a09b0

    const-string v2, "field \'rlMeetLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlMeetLayout:Landroid/widget/RelativeLayout;

    .line 21
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a09cc

    const-string v2, "field \'rlUnFollow\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlUnFollow:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvDoNotLook:Landroid/widget/TextView;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLook:Landroid/widget/CheckBox;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlDoNotLookLayout:Landroid/widget/RelativeLayout;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvDoNotLiveNotice:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swDoNotLiveNotice:Landroid/widget/CheckBox;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlDoNotLiveNoticeLayout:Landroid/widget/RelativeLayout;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvStealth:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swStealth:Landroid/widget/CheckBox;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlStealthLayout:Landroid/widget/RelativeLayout;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvShielding:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlShieldingLayout:Landroid/widget/RelativeLayout;

    .line 14
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvToReport:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlToReportLayout:Landroid/widget/RelativeLayout;

    .line 16
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->tvMeet:Landroid/widget/TextView;

    .line 17
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->setGroup:Landroid/widget/RelativeLayout;

    .line 18
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->groupName:Landroid/widget/TextView;

    .line 19
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->swMeet:Landroid/widget/CheckBox;

    .line 20
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlMeetLayout:Landroid/widget/RelativeLayout;

    .line 21
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/UserCenterSettingActivity;->rlUnFollow:Landroid/widget/RelativeLayout;

    .line 22
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
