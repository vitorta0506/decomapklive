.class public Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field btnNext:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I

.field etEmail:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etPhone:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llEmail:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llPhone:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rvCountry:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCountry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUseEmailOrPhone:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUseEmailOrPhoneTip:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method private k0()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "US"

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getNationalFlagAndCode(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$NationalFlagAndCodeCallBack;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0090

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f1207e4

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->k0()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->etPhone:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->etEmail:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_1

    const/16 p2, 0x63

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "country_num"

    .line 2
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->a:Ljava/lang/String;

    const-string p1, "logo"

    .line 3
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->b:Ljava/lang/String;

    const-string p1, "coding"

    .line 4
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->c:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->rvCountry:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->b:Ljava/lang/String;

    const p3, 0x7f0f0122

    invoke-static {p1, p2, p3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvCountry:Landroid/widget/TextView;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->a:Ljava/lang/String;

    aput-object v0, p2, p3

    const-string p3, "+%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 20
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->d:I

    const-string v2, ""

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->llEmail:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->llPhone:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->etPhone:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvUseEmailOrPhoneTip:Landroid/widget/TextView;

    const v2, 0x7f1207ef

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvUseEmailOrPhone:Landroid/widget/TextView;

    const v2, 0x7f120116

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 8
    iput v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->d:I

    goto/16 :goto_0

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->llEmail:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->llPhone:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvUseEmailOrPhoneTip:Landroid/widget/TextView;

    const v2, 0x7f1207f0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvUseEmailOrPhone:Landroid/widget/TextView;

    const v2, 0x7f120115

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iput v4, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->d:I

    goto/16 :goto_0

    .line 15
    :sswitch_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 16
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->tvCountry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Please choose country"

    .line 17
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void

    .line 18
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x63

    invoke-static {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/login/activity/AreaSelectActivity;->start(Landroid/app/Activity;Ljava/lang/String;I)V

    const v1, 0x7f010029

    const v2, 0x7f010025

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 20
    :sswitch_2
    iget v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->d:I

    if-nez v1, :cond_3

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->etPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->b:Ljava/lang/String;

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->c:Ljava/lang/String;

    invoke-static/range {v2 .. v10}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->v0(Landroid/content/Context;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v11

    const/4 v12, 0x0

    iget v13, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->d:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;->etEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v11 .. v19}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordPhoneActivity;->v0(Landroid/content/Context;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0192 -> :sswitch_2
        0x7f0a05c0 -> :sswitch_1
        0x7f0a09ec -> :sswitch_1
        0x7f0a0c66 -> :sswitch_1
        0x7f0a0d19 -> :sswitch_0
    .end sparse-switch
.end method
