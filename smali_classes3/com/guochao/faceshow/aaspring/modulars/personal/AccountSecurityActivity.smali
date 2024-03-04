.class public Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field authorizedResult:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field flBg:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Z

.field ivMobileMore:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivMobileWaring:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivMore:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivTitlebg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field realNameAuthentication:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlChangeLoginPassword:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlChangePaymentPassword:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlEmail:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlPhone:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field rlRealNameAuthentication:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvChange:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvEmail:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvLoginPwd:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvMobile:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvMobileChange:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPlayPwd:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSafetyLevel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->e0()V

    return-void
.end method

.method private synthetic e0()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelAccountActivity;->s0(Landroid/content/Context;I)V

    return-void
.end method

.method private g0()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsCertication()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->h:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlEmail:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlRealNameAuthentication:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->realNameAuthentication:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->authorizedResult:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->b(Landroid/content/Context;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlEmail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlRealNameAuthentication:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private i0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->g:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvChange:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvEmail:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlEmail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvEmail:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->setEncryptionEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvEmail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvChange:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :goto_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->f:Z

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvMobile:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvMobileChange:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMobileMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMobileWaring:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvMobile:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->setEncryptionMobile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->rlPhone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvMobile:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvMobileChange:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMobileMore:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->ivMobileWaring:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvLoginPwd:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->i:Z

    if-eqz v1, :cond_2

    const v1, 0x7f120164

    goto :goto_2

    :cond_2
    const v1, 0x7f1207e4

    :goto_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvPlayPwd:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->e:Z

    if-eqz v1, :cond_3

    const v1, 0x7f120165

    goto :goto_3

    :cond_3
    const v1, 0x7f1207ed

    :goto_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private k0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->e:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->i:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->flBg:Landroid/widget/RelativeLayout;

    const v1, 0x7f08054a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvSafetyLevel:Landroid/widget/TextView;

    const v1, 0x7f1207c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->g:Z

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->flBg:Landroid/widget/RelativeLayout;

    const v1, 0x7f080548

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvSafetyLevel:Landroid/widget/TextView;

    const v1, 0x7f1207c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    .line 7
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->g:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->flBg:Landroid/widget/RelativeLayout;

    const v1, 0x7f080549

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvSafetyLevel:Landroid/widget/TextView;

    const v1, 0x7f1208b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->flBg:Landroid/widget/RelativeLayout;

    const v1, 0x7f080547

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->tvSafetyLevel:Landroid/widget/TextView;

    const v1, 0x7f1207c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    :goto_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->i0()V

    return-void
.end method


# virtual methods
.method public d0()V
    .locals 4

    const-string v0, "phone"

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->b:Ljava/lang/String;

    const-string v0, "email"

    .line 2
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->a:Ljava/lang/String;

    const-string v0, "userPwd"

    .line 3
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->d:Ljava/lang/String;

    const-string v0, "payPassword"

    .line 4
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->c:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->f:Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->g:Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "1"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->e:Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->i:Z

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->g0()V

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->k0()V

    return-void
.end method

.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d001d

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f1207f1

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    const v0, 0x7f080319

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLeftBackIcon(I)V

    const v0, 0x7f0a042c

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;

    const v1, 0x7f06038c

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TitleBackgroundView;->setBottomEnable(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->d0()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->d0()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->i:Z

    xor-int/2addr p1, v1

    invoke-static {p0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->t0(Landroid/content/Context;IZ)V

    goto/16 :goto_1

    .line 3
    :sswitch_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->i:Z

    xor-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->k0(Landroid/content/Context;IZ)V

    goto/16 :goto_1

    .line 4
    :sswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelWarnDialog;->T1(Landroidx/fragment/app/FragmentManager;)Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelWarnDialog;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/personal/a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/personal/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelWarnDialog;->setOnConfirmClickListener(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelWarnDialog$a;)V

    goto :goto_1

    .line 6
    :sswitch_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/b;->i(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 7
    :sswitch_4
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->i:Z

    xor-int/2addr p1, v1

    invoke-static {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/bind/BindPhoneV2Activity;->t0(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 8
    :sswitch_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->i:Z

    xor-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/BindEmailV2Activity;->k0(Landroid/content/Context;IZ)V

    goto :goto_1

    .line 9
    :sswitch_6
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->e:Z

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->g0(Landroid/content/Context;I)V

    goto :goto_1

    .line 11
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->f:Z

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->i0(Landroid/content/Context;I)V

    goto :goto_1

    .line 13
    :cond_1
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/personal/BindPhoneToSetPayPasswordActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 14
    :sswitch_7
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->i:Z

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/ChangeLoginOrPayPasswordActivity;->g0(Landroid/content/Context;I)V

    goto :goto_1

    .line 16
    :cond_2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->f:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/AccountSecurityActivity;->g:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/personal/PhoneOrEmailSetLoginPasswordActivity;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->startActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 18
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/SetLoginPasswordActivity;->i0(Landroid/content/Context;I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a09b9 -> :sswitch_7
        0x7f0a09ba -> :sswitch_6
        0x7f0a09be -> :sswitch_5
        0x7f0a09c2 -> :sswitch_4
        0x7f0a09c5 -> :sswitch_3
        0x7f0a09cd -> :sswitch_2
        0x7f0a0c58 -> :sswitch_1
        0x7f0a0cc0 -> :sswitch_0
    .end sparse-switch
.end method
