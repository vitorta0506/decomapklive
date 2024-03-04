.class public Lcom/guochao/faceshow/activity/MineCenterSettingActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Landroid/widget/CheckBox;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->o0(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->a:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->b:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->c:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->d:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->e:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->f:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->g:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private n0()V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->setList:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$i;-><init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private o0(Ljava/lang/String;I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->setUpdate:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    new-instance p2, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$a;-><init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0077

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f0a04cc

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->a:Landroid/widget/CheckBox;

    const v0, 0x7f0a04cf

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->b:Landroid/widget/CheckBox;

    const v0, 0x7f0a04d1

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->c:Landroid/widget/CheckBox;

    const v0, 0x7f0a04cd

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0a04ce

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->e:Landroid/widget/CheckBox;

    const v0, 0x7f0a04d0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->f:Landroid/widget/CheckBox;

    const v0, 0x7f0a003e

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->g:Landroid/widget/CheckBox;

    const v0, 0x7f0a06e2

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->h:Landroid/widget/LinearLayout;

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$b;-><init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->b:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$c;-><init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->c:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$d;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$d;-><init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$e;-><init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$f;-><init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->f:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$g;-><init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity$h;-><init>(Lcom/guochao/faceshow/activity/MineCenterSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120811

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/MineCenterSettingActivity;->n0()V

    return-void
.end method
