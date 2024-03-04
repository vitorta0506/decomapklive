.class public Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;->R1(Landroidx/fragment/app/FragmentActivity;I)V

    return-void
.end method

.method public static Q1(Landroidx/fragment/app/FragmentActivity;)V
    .locals 8

    const-string v0, "last_login_days"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-void

    :cond_0
    const-string v0, "last_review_dialog_show"

    const-wide/16 v3, -0x1

    .line 2
    invoke-static {v0, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getSelfLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v5

    const-wide v5, 0x3b8b87c00L

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAppEvaluateGuidePop()I

    move-result v4

    if-ne v4, v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAppEvaluateGuidePop()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/a;->m()Lcom/google/android/gms/common/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/a;->g(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;->S1(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;->R1(Landroidx/fragment/app/FragmentActivity;I)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAppEvaluateGuidePop()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 11
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;->R1(Landroidx/fragment/app/FragmentActivity;I)V

    .line 12
    :cond_5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setSelfLong(Ljava/lang/String;J)V

    return-void
.end method

.method private static R1(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "showFrom"

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Launch Google Failed"

    .line 2
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "No Google Service"

    .line 3
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "APP UI"

    .line 4
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v1, "UI_commentbox"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "review_dialog"

    invoke-virtual {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static S1(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object v0

    const-string v1, "Google_commentbox"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/google/android/play/core/review/b;->a(Landroid/content/Context;)Lcom/google/android/play/core/review/a;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/google/android/play/core/review/a;->a()Ld5/d;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a;

    invoke-direct {v2, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ReviewDialog$a;-><init>(Lcom/google/android/play/core/review/a;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1, v2}, Ld5/d;->a(Ld5/a;)Ld5/d;

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->goToMarket(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "UI_commentbox_Praise"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :sswitch_1
    new-instance p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    invoke-direct {p1}, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;-><init>()V

    .line 6
    invoke-static {}, Lfb/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;->userId:I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->A0(Landroid/content/Context;Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;I)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "UI_commentbox_opinion"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    return-void

    .line 9
    :sswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0254 -> :sswitch_3
        0x7f0a0255 -> :sswitch_2
        0x7f0a03cd -> :sswitch_1
        0x7f0a0493 -> :sswitch_0
    .end sparse-switch
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0178

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    return-object p1
.end method
