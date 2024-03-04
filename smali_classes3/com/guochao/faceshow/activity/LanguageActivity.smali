.class public Lcom/guochao/faceshow/activity/LanguageActivity;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/activity/LanguageActivity$e;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/guochao/faceshow/activity/LanguageActivity$e;

.field f:Ljava/lang/String;

.field lvCountry:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field saveTV:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->d:Ljava/util/List;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/activity/LanguageActivity;)Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->b:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    return-object p0
.end method

.method private Q1()V
    .locals 2

    const-string v0, "api/Country/findLanguageByTrans"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/activity/LanguageActivity$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/activity/LanguageActivity$c;-><init>(Lcom/guochao/faceshow/activity/LanguageActivity;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static R1(Ljava/lang/String;Lcom/guochao/faceshow/activity/LanguageActivity$e;)Lcom/guochao/faceshow/activity/LanguageActivity;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/activity/LanguageActivity;

    invoke-direct {v0}, Lcom/guochao/faceshow/activity/LanguageActivity;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "language"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    iput-object p1, v0, Lcom/guochao/faceshow/activity/LanguageActivity;->e:Lcom/guochao/faceshow/activity/LanguageActivity$e;

    return-object v0
.end method

.method private S1()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/LanguageActivity;->Q1()V

    return-void
.end method


# virtual methods
.method public T1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->b:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    invoke-virtual {v0}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->f:Ljava/lang/String;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->f:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tokens/language/can/saveLangById"

    .line 7
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->f:Ljava/lang/String;

    const-string v3, "languageIds"

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v2, Lcom/guochao/faceshow/activity/LanguageActivity$d;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/activity/LanguageActivity$d;-><init>(Lcom/guochao/faceshow/activity/LanguageActivity;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0075

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->mClose:Landroid/widget/ImageView;

    new-instance v0, Lcom/guochao/faceshow/activity/LanguageActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/LanguageActivity$a;-><init>(Lcom/guochao/faceshow/activity/LanguageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->saveTV:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/activity/LanguageActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/LanguageActivity$b;-><init>(Lcom/guochao/faceshow/activity/LanguageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f120571

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/LanguageActivity;->S1()V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->c:Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 9
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;-><init>()V

    .line 10
    invoke-virtual {v3, v2}, Lcom/guochao/faceshow/aaspring/beans/MultiLanguageBean;->setLanguage(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->lvCountry:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    new-instance p1, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d00fb

    iget-object v2, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->d:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;Ljava/util/List;)V

    iput-object p1, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->b:Lcom/guochao/faceshow/adapters/MyLanguageRecycleAdapter;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/activity/LanguageActivity;->lvCountry:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f13012a

    invoke-direct {p1, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 4
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x50

    .line 8
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 9
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object p1
.end method
