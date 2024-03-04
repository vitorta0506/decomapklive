.class public Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/guochao/faceshow/utils/AAComAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/utils/AAComAdapter<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/guochao/faceshow/bean/CountryData;

.field private d:Ljava/lang/String;

.field private e:I

.field et_search:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Landroid/widget/ImageView;

.field lvCountry:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)Lcom/guochao/faceshow/bean/CountryData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->c:Lcom/guochao/faceshow/bean/CountryData;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Lcom/guochao/faceshow/bean/CountryData;)Lcom/guochao/faceshow/bean/CountryData;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->c:Lcom/guochao/faceshow/bean/CountryData;

    return-object p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->e:I

    return p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->o0()V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic l0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->f:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic m0(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)Lcom/guochao/faceshow/utils/AAComAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->b:Lcom/guochao/faceshow/utils/AAComAdapter;

    return-object p0
.end method

.method private n0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$d;-><init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)V

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getCountryData(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;)V

    return-void
.end method

.method private o0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->b:Lcom/guochao/faceshow/utils/AAComAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/AAComAdapter;->resetData(Ljava/util/List;)V

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/CountryData;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/CountryData;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->b:Lcom/guochao/faceshow/utils/AAComAdapter;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/utils/AAComAdapter;->resetData(Ljava/util/List;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b2

    return v0
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nowAddress"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->d:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;

    const v1, 0x7f0d00fc

    invoke-direct {v0, p0, p0, v1}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$c;-><init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->b:Lcom/guochao/faceshow/utils/AAComAdapter;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->lvCountry:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->n0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->e:I

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f120719

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    const p1, 0x7f1207b4

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f060093

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$a;-><init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->et_search:Landroid/widget/EditText;

    new-instance v0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$b;-><init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method public p0()V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->updateNowAdress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;->c:Lcom/guochao/faceshow/bean/CountryData;

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/CountryData;->getCountryId()I

    move-result v1

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->B(Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "userId"

    .line 3
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$e;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity$e;-><init>(Lcom/guochao/faceshow/activity/CurrentLiveAreaActivity;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
