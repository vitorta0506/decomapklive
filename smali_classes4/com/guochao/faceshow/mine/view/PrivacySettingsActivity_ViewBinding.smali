.class public Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;
.source "SourceFile"


# instance fields
.field private c:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    .line 3
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a02d8

    const-string v2, "field \'mCheckBoxDistance\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->mCheckBoxDistance:Landroid/widget/CheckBox;

    .line 4
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01ef

    const-string v2, "field \'mCheckBoxOnline\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->mCheckBoxOnline:Landroid/widget/CheckBox;

    .line 5
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01f0

    const-string v2, "field \'checkHidePeopleNearby\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkHidePeopleNearby:Landroid/widget/CheckBox;

    .line 6
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a01f1

    const-string v2, "field \'checkHideVoiceRoom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkHideVoiceRoom:Landroid/widget/CheckBox;

    .line 7
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a08c4

    const-string v2, "field \'checkPrivateLiveInvite\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkPrivateLiveInvite:Landroid/widget/CheckBox;

    .line 8
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0a009a

    const-string v2, "field \'adsSwitch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->adsSwitch:Landroid/widget/CheckBox;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0cd0

    const-string v2, "field \'tvPeopleNearby\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->tvPeopleNearby:Landroid/widget/TextView;

    const v0, 0x7f0a0d15

    const-string v1, "field \'trtcSetting\' and method \'onViewClicked\'"

    .line 10
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 11
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'trtcSetting\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->trtcSetting:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->d:Landroid/view/View;

    .line 13
    new-instance v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding$a;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0e02

    const-string v1, "field \'viewLine\'"

    .line 14
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->viewLine:Landroid/view/View;

    .line 15
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0876

    const-string v2, "field \'peopleNearbyLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/c;->d(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->peopleNearbyLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0c00

    const-string v1, "method \'onViewClicked\'"

    .line 16
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->e:Landroid/view/View;

    .line 18
    new-instance v2, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding$b;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding$b;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0c03

    .line 19
    invoke-static {p2, v0, v1}, Lbutterknife/internal/c;->c(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->f:Landroid/view/View;

    .line 21
    new-instance v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding$c;-><init>(Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->c:Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;

    .line 3
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->mCheckBoxDistance:Landroid/widget/CheckBox;

    .line 4
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->mCheckBoxOnline:Landroid/widget/CheckBox;

    .line 5
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkHidePeopleNearby:Landroid/widget/CheckBox;

    .line 6
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkHideVoiceRoom:Landroid/widget/CheckBox;

    .line 7
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->checkPrivateLiveInvite:Landroid/widget/CheckBox;

    .line 8
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->adsSwitch:Landroid/widget/CheckBox;

    .line 9
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->tvPeopleNearby:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->trtcSetting:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->viewLine:Landroid/view/View;

    .line 12
    iput-object v1, v0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity;->peopleNearbyLayout:Landroid/widget/LinearLayout;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->d:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->e:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iput-object v1, p0, Lcom/guochao/faceshow/mine/view/PrivacySettingsActivity_ViewBinding;->f:Landroid/view/View;

    .line 19
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity_ViewBinding;->unbind()V

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
