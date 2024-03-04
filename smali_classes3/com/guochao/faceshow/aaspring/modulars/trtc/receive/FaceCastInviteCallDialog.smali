.class public Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Lb8/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

.field avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

.field inviteType:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvInviteName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNickName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTrtcPrice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field userAgeLevel:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->b:Z

    return-void
.end method

.method private P1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;->c(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 4
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Ly7/d;

    invoke-direct {v1}, Ly7/d;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method private Q1()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->matchPrice:Ljava/lang/String;

    .line 2
    iget v0, v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    const-string v2, "%s/min"

    const/4 v3, 0x2

    const v4, 0x7f120920

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "placeholder"

    if-ne v0, v6, :cond_2

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAudioDiamond()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v1, v0, v5

    .line 5
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v7, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v7, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getVideoDiamond()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    new-array v0, v6, [Ljava/lang/Object;

    aput-object v1, v0, v5

    .line 11
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v1

    invoke-virtual {v1}, Lq7/a;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v7, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v7, v2, v5

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f0570

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    .line 17
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {v2, v5, v5, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 19
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;

    invoke-direct {v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v0, 0xb

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->tvTrtcPrice:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->avatarUser:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 22
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->userAgeLevel:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;-><init>(Landroid/view/View;)V

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/view/UserCenterSexLevel;->d(Lp7/i;)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->tvNickName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->tvInviteName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iget v2, v1, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->callType:I

    if-ne v2, v6, :cond_6

    const v2, 0x7f12092b

    goto :goto_1

    :cond_6
    const v2, 0x7f120927

    :goto_1
    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getUserName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private R1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;->a(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    :cond_1
    return-void
.end method

.method private S1()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static T1(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "callModel"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private V1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;->b(Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->dismissAllowingStateLoss()V

    return-void
.end method


# virtual methods
.method public U1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->b:Z

    return v0
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->b:Z

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->O()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->g()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/c;->d()V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0169

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->z(Landroid/content/Context;)V

    return-void
.end method

.method public loadData()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "callModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->Q1()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p1, 0x7f130197

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->b:Z

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->r()Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/call/a;->O()V

    return-void
.end method

.method public onLogout()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 0

    return-void
.end method

.method public synthetic onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lb8/c;->a(Lb8/d$a;Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;ZZZ)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->S1()V

    goto :goto_0

    .line 3
    :sswitch_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->V1()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->R1()V

    goto :goto_0

    .line 5
    :sswitch_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->V1()V

    goto :goto_0

    .line 6
    :sswitch_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/face2face/FaceToFaceFloatWindowManager;->isFaceToFaceFloatShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    const v0, 0x7f12069f

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->P1()V

    goto :goto_0

    .line 9
    :sswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    if-nez p1, :cond_1

    return-void

    .line 10
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->V1()V

    .line 11
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->BLACL_LIST_ADD:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "From_Account"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/model/CallModel;->getCurrentUserId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "To_Account"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a014b -> :sswitch_4
        0x7f0a017e -> :sswitch_3
        0x7f0a0197 -> :sswitch_2
        0x7f0a01e5 -> :sswitch_1
        0x7f0a0564 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnResultListener(Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog;->c:Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/FaceCastInviteCallDialog$c;

    return-void
.end method
