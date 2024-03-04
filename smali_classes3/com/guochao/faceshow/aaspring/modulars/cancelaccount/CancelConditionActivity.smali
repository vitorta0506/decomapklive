.class public Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static A0(Landroid/content/Context;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "requestMap"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "requestData"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->t0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->q0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->p0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->n0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->o0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->u0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->r0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->s0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic n0(Landroid/view/View;I)V
    .locals 1

    const p2, 0x7f0a0a3a

    .line 1
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f0f01c5

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 p2, 0x8

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->v0()V

    return-void
.end method

.method private synthetic o0(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->T1(Landroidx/fragment/app/FragmentManager;I)Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;

    move-result-object v0

    .line 2
    new-instance v1, Ld8/m;

    invoke-direct {v1, p0, p1}, Ld8/m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->setOnConfirmClickListener(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog$a;)V

    return-void
.end method

.method private synthetic p0(Landroid/view/View;I)V
    .locals 1

    const p2, 0x7f0a0b94

    .line 1
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f0f01c5

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 p2, 0x8

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->v0()V

    return-void
.end method

.method private synthetic q0(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->T1(Landroidx/fragment/app/FragmentManager;I)Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;

    move-result-object v0

    .line 2
    new-instance v1, Ld8/l;

    invoke-direct {v1, p0, p1}, Ld8/l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->setOnConfirmClickListener(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog$a;)V

    return-void
.end method

.method private synthetic r0(Landroid/view/View;I)V
    .locals 1

    const p2, 0x7f0a043c

    .line 1
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v0, 0x7f0f01c5

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 p2, 0x8

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->v0()V

    return-void
.end method

.method private synthetic s0(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->T1(Landroidx/fragment/app/FragmentManager;I)Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;

    move-result-object v0

    .line 2
    new-instance v1, Ld8/n;

    invoke-direct {v1, p0, p1}, Ld8/n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog;->setOnConfirmClickListener(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/WarnDialog$a;)V

    return-void
.end method

.method private synthetic t0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->v0()V

    return-void
.end method

.method private synthetic u0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->d:Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    if-eqz v0, :cond_0

    const-string v1, "1,2,3,4"

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;->setCheckList(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->d:Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelImportantTipActivity;->e0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;)V

    return-void
.end method

.method private v0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f0a023c

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    const v0, 0x7f0a023d

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    const v0, 0x7f0a023e

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->a:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private y0(Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v4, 0x2

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const v4, 0x7f0a03f5

    const v5, 0x7f0f01c5

    const v6, 0x7f0f01c6

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->c:Z

    .line 7
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->c:Z

    .line 9
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v1, 0x7f0a0a3a

    const v2, 0x7f0a023c

    const/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const v1, 0x7f0a0b94

    const v2, 0x7f0a023d

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    const v1, 0x7f0a043c

    const v2, 0x7f0a023e

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 23
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d002d

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestMap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "requestData"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->d:Lcom/guochao/faceshow/aaspring/beans/CancelAccountRequestBean;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f120690

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120141

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f120142

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a01b1

    .line 5
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;)V

    .line 7
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    :cond_1
    const v0, 0x7f120126

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    const v0, 0x7f0a023c

    .line 10
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ld8/i;

    invoke-direct {v2, p0}, Ld8/i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a023d

    .line 11
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ld8/h;

    invoke-direct {v2, p0}, Ld8/h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a023e

    .line 12
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Ld8/k;

    invoke-direct {v2, p0}, Ld8/k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0522

    .line 13
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->b:Landroid/view/View;

    const v0, 0x7f0a0806

    .line 14
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->a:Landroid/view/View;

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Ld8/g;

    invoke-direct {v2, p0}, Ld8/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->a:Landroid/view/View;

    new-instance v2, Ld8/j;

    invoke-direct {v2, p0}, Ld8/j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->y0(Ljava/util/Map;)V

    .line 18
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/CancelConditionActivity;->v0()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
