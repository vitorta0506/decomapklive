.class public Lcom/guochao/faceshow/mine/view/AreaActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


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

.field b:Lwa/b;

.field et_search:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

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

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/AreaActivity;ILjava/lang/String;Lcom/guochao/faceshow/bean/CountryData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/mine/view/AreaActivity;->g0(ILjava/lang/String;Lcom/guochao/faceshow/bean/CountryData;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/mine/view/AreaActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/AreaActivity;->m0()V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/mine/view/AreaActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/mine/view/AreaActivity;->i0(Ljava/util/List;)V

    return-void
.end method

.method private g0(ILjava/lang/String;Lcom/guochao/faceshow/bean/CountryData;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->CHANGE_COUNTRY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "countryId"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "coding"

    .line 3
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/mine/view/AreaActivity$c;

    invoke-direct {v0, p0, p3, p2}, Lcom/guochao/faceshow/mine/view/AreaActivity$c;-><init>(Lcom/guochao/faceshow/mine/view/AreaActivity;Lcom/guochao/faceshow/bean/CountryData;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private i0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/CountryData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "CURRENT_COUNTRY"

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/CountryData;

    .line 4
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/mine/view/AreaActivity;->l0(Lcom/guochao/faceshow/bean/CountryData;)Lcom/guochao/faceshow/bean/CountryData;

    move-result-object v1

    .line 5
    :cond_1
    new-instance v0, Lwa/b;

    invoke-direct {v0, p0, p1, v1}, Lwa/b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/guochao/faceshow/bean/CountryData;)V

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->b:Lwa/b;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->lvCountry:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    return-void
.end method

.method private k0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/mine/view/AreaActivity$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/AreaActivity$d;-><init>(Lcom/guochao/faceshow/mine/view/AreaActivity;)V

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/CountryUtils;->getCountryData(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/utils/CountryUtils$CountryCallBack;)V

    return-void
.end method

.method private l0(Lcom/guochao/faceshow/bean/CountryData;)Lcom/guochao/faceshow/bean/CountryData;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/CountryData;->getCountryId()I

    move-result v1

    iget-object v2, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/CountryData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/CountryData;->getCountryId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/CountryData;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private m0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/mine/view/AreaActivity;->i0(Ljava/util/List;)V

    goto :goto_1

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->a:Ljava/util/List;

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
    iget-object v3, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/CountryData;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/mine/view/AreaActivity;->i0(Ljava/util/List;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00b1

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f1207b4

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/guochao/faceshow/mine/view/AreaActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/AreaActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/AreaActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/AreaActivity;->et_search:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/mine/view/AreaActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/AreaActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/AreaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method public loadData()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/mine/view/AreaActivity;->k0()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f12081d

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    return-void
.end method
