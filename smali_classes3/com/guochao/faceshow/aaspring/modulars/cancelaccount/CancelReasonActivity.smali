.class public Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;",
            ">;"
        }
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

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->i0(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->n0(I)V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->l0(Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic i0(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p3, ""

    .line 3
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/AnimationDrawable;

    .line 5
    invoke-virtual {p3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->m0(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    const v2, 0x7f120147

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    const v2, 0x7f120149

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    const v2, 0x7f12014a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    const v2, 0x7f12014b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    const v2, 0x7f12014c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    const v2, 0x7f12014d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    const v2, 0x7f12014e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    const v2, 0x7f12014f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    const v2, 0x7f120150

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    const v2, 0x7f120148

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static k0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "requestData"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private l0(Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Landroid/widget/TextView;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    const/16 v0, 0x8

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f120060

    .line 5
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->c:Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    iget-boolean v0, v0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;->b:Z

    if-eqz v0, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->c:Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->setReasonType(I)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_3

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->c:Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->setReasonRemark(Ljava/lang/String;)V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->c:Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    invoke-static {p0, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->A0(Landroid/content/Context;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;)V

    return-void
.end method

.method private m0(Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tokens/userout/checkUserAccountSecurity"

    .line 2
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$b;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;Ljava/util/Map;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string v1, "tokens/userout/checkUserAccountBalance"

    .line 3
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;Ljava/util/Map;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    const-string v1, "tokens/userout/checkUserVipExpire"

    .line 4
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->get(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$d;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;Ljava/util/Map;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private n0(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, v2, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$e;->b:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p1, v1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->b:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->b:Landroid/widget/EditText;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_2
    const p1, 0x7f0a0806

    .line 8
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d002f

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->c:Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    :cond_0
    const v0, 0x7f120146

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->initData()V

    const v0, 0x7f0a0806

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a012d

    .line 6
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 8
    new-instance v2, Ld8/p;

    invoke-direct {v2, p0, v1, v0}, Ld8/p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a031d

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->b:Landroid/widget/EditText;

    const v0, 0x7f0a025a

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;->a:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelReasonActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
