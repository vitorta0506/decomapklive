.class public Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

.field viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;
    .annotation runtime Lcom/guochao/faceshow/aaspring/base/mvvm/annotations/GCViewBinding;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;Lcom/guochao/faceshow/aaspring/beans/DataAuth;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->e0(Lcom/guochao/faceshow/aaspring/beans/DataAuth;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->onViewClicked()V

    return-void
.end method

.method private e0(Lcom/guochao/faceshow/aaspring/beans/DataAuth;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/DataAuth;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->getAppointAuth()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->tvPermissions:Landroid/widget/TextView;

    const v0, 0x7f120900

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->tvPermissions:Landroid/widget/TextView;

    const v0, 0x7f120919

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->tvPermissions:Landroid/widget/TextView;

    const v0, 0x7f120913

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object p1, p1, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->tvPermissions:Landroid/widget/TextView;

    const v0, 0x7f1208ed

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private onViewClicked()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/date/activity/LaunchPermissionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->getAppointSetting()Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->getAppointAuth()I

    move-result v1

    const-string v2, "appointAuth"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x3f3

    .line 5
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->tvVideoPrice:Landroid/widget/TextView;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getVideoDiamond()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%s/min"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->tvVoicePrice:Landroid/widget/TextView;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getAudioDiamond()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->llPermissions:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->videoSetting:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object v1, v1, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->voiceSetting:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$d;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const v0, 0x7f1209c7

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1209cc

    .line 11
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->setTitle(I)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object v0, v0, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->info:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->initView()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3f3

    if-ne p1, p2, :cond_1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p1, "name"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    const-string v0, "appointAuth"

    .line 3
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->viewBinding:Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;

    iget-object p3, p3, Lcom/guochao/faceshow/databinding/ActivityDateSetBinding;->tvPermissions:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->a:Lcom/guochao/faceshow/aaspring/modulars/date/viewmodel/DatePriceSettingViewModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->getAppointSetting()Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/DataAuth;->setAppointAuth(I)V

    .line 9
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/date/activity/DateSettingActivity;->e0(Lcom/guochao/faceshow/aaspring/beans/DataAuth;)V

    :cond_1
    return-void
.end method
