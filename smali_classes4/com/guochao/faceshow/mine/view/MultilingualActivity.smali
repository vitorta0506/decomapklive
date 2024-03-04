.class public Lcom/guochao/faceshow/mine/view/MultilingualActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/Language;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;

.field private d:I

.field lvLanguage:Landroidx/recyclerview/widget/RecyclerView;
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

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->c:Landroid/view/View;

    return-object p1
.end method

.method static synthetic i0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->d:I

    return p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/mine/view/MultilingualActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->d:I

    return p1
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0078

    return v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f120804

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    const v0, 0x7f1207b4

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$a;-><init>(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    return-void
.end method

.method public loadData()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v2, "en"

    const-string v3, "English"

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v3, "ja"

    const-string/jumbo v4, "\u65e5\u672c\u8a9e"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v3, "ko"

    const-string/jumbo v4, "\ud55c\uad6d\uc5b4"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v3, "fr"

    const-string v4, "Fran\u00e7ais"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v3, "it"

    const-string v4, "Italiano"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v3, "ru"

    const-string/jumbo v4, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439 \u044f\u0437\u044b\u043a"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v3, "es"

    const-string v4, "Espa\u00f1ol"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v3, "de"

    const-string v4, "Deutsch"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v3, "pt"

    const-string v4, "Portugu\u00eas"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v3, "hi"

    const-string/jumbo v4, "\u0939\u093f\u0928\u094d\u0926\u0940"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string/jumbo v3, "vi"

    const-string v4, "Ti\u1ebfng vi\u1ec7t nam"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string/jumbo v3, "th"

    const-string/jumbo v4, "\u0e44\u0e17\u0e22"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v3, "in"

    const-string v4, "Orang indonesia"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string/jumbo v3, "zh"

    const-string/jumbo v4, "\u4e2d\u6587(\u7b80\u4f53)"

    invoke-direct {v1, v3, v4}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string/jumbo v4, "zh-rHK"

    const-string/jumbo v5, "\u4e2d\u6587(\u7e41\u9ad4)"

    invoke-direct {v1, v4, v5}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string v5, "ar"

    const-string v6, " \u0639\u0631\u0628\u064a \u060c "

    invoke-direct {v1, v5, v6}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    const-string/jumbo v5, "tr"

    const-string v6, "Turkish"

    invoke-direct {v1, v5, v6}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "language"

    .line 18
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->b:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->getAppLanguage()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;

    .line 23
    iget-object v6, v5, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 24
    iget-object v0, v5, Lcom/guochao/faceshow/mine/view/MultilingualActivity$c;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->b:Ljava/lang/String;

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/PhoneUtils;->getLocalCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 26
    iput-object v4, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->b:Ljava/lang/String;

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    iput-object v2, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->b:Ljava/lang/String;

    .line 29
    :cond_3
    new-instance v0, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/mine/view/MultilingualActivity$b;-><init>(Lcom/guochao/faceshow/mine/view/MultilingualActivity;)V

    .line 30
    iget-object v1, p0, Lcom/guochao/faceshow/mine/view/MultilingualActivity;->lvLanguage:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
