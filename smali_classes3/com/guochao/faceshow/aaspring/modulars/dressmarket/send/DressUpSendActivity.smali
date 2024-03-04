.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

.field private f:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private A0(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lr8/b;

    invoke-direct {v1, p0, p1}, Lr8/b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Ljava/util/ArrayList;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static B0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dressBean"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private E0()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->q0()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->q0()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 7
    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    if-eqz v4, :cond_2

    .line 8
    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->T1()Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    move-result-object v3

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    if-nez v3, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    if-nez v2, :cond_4

    return-void

    .line 10
    :cond_4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getIsVip()I

    move-result v2

    const-string v3, ""

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result v2

    if-nez v2, :cond_5

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;Z)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)V

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    goto :goto_2

    .line 14
    :cond_5
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->v0(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 15
    :cond_6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getIsVip()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_8

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result v2

    if-ge v2, v5, :cond_7

    .line 17
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-direct {p0, v0, v4}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->s0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;Z)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)V

    invoke-virtual {p0, v3, v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->alert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/guochao/faceshow/views/e$a;Z)Lcom/guochao/faceshow/views/e;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    goto :goto_2

    .line 19
    :cond_7
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->v0(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 20
    :cond_8
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->v0(Ljava/util/ArrayList;)V

    :goto_2
    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->u0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->t0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    return-object p0
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->r0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->g:Z

    return p1
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    return-object p0
.end method

.method static synthetic o0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->A0(Ljava/util/ArrayList;)V

    return-void
.end method

.method private p0(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f01f7

    .line 2
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v2, p3

    const/4 p2, 0x2

    const-string p3, "{diamond}"

    aput-object p3, v2, p2

    const v4, 0x7f1202e3

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 7
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 8
    invoke-virtual {v5, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {v5, v3, v3}, Landroid/widget/TextView;->measure(II)V

    .line 10
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, v4

    div-float p2, p1, p2

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    float-to-int p1, p1

    .line 11
    invoke-virtual {v1, v3, v3, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    new-instance p1, Lcom/guochao/faceshow/views/r;

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_1

    add-int/lit8 p3, p2, 0x9

    .line 14
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gt p3, v0, :cond_1

    const/16 v0, 0x11

    .line 15
    invoke-virtual {v2, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v2
.end method

.method private r0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;)Ljava/lang/CharSequence;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f1202ad

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getUnit()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getQuantityTime(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getDuration()I

    move-result v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 4
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1

    const v0, 0x7f1202ae

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getUnit()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getQuantityTime(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getDuration()I

    move-result v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 8
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result v0

    if-ne v0, v3, :cond_2

    const v0, 0x7f1202af

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getUnit()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getQuantityTime(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getDuration()I

    move-result v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getDuration()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    .line 12
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private s0(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;Z)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "SVIP"

    const-string v4, "VIP/SVIP"

    if-nez p1, :cond_2

    const p1, 0x7f1202aa

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    aput-object v5, v2, v0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    aput-object v3, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result p1

    if-ne p1, v2, :cond_5

    const p1, 0x7f1202ab

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_3

    move-object v5, v3

    goto :goto_2

    :cond_3
    move-object v5, v4

    :goto_2
    aput-object v5, v2, v0

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    aput-object v3, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getType()I

    move-result p1

    if-ne p1, v1, :cond_8

    const p1, 0x7f1202ac

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p2, :cond_6

    move-object v5, v3

    goto :goto_4

    :cond_6
    move-object v5, v4

    :goto_4
    aput-object v5, v2, v0

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, v4

    :goto_5
    aput-object v3, v2, v1

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string p1, ""

    return-object p1
.end method

.method private synthetic t0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->E0()V

    return-void
.end method

.method private synthetic u0(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-static {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/BuyDressSuccessDialog;->V1(Landroidx/fragment/app/FragmentManager;ILcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private v0(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->f:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getLastPrice()I

    move-result v2

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;

    invoke-direct {v5, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lp9/a;->q(Landroidx/lifecycle/LifecycleOwner;IZZLp9/a$f;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0046

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dressBean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    const v0, 0x7f1202e9

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->e:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->setOnSelectUserChangedListener(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment$c;)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0a0440

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const v0, 0x7f0a0624

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->a:Landroid/view/View;

    const v0, 0x7f0a0a5e

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->d:Landroid/widget/ImageView;

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->a:Landroid/view/View;

    new-instance v1, Lr8/a;

    invoke-direct {v1, p0}, Lr8/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0247

    .line 9
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->c:Landroid/widget/TextView;

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->y0()V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public q0()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public y0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 8
    instance-of v4, v3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    if-eqz v4, :cond_1

    .line 9
    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->T1()Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressSpecBean;->getLastPrice()I

    move-result v2

    mul-int v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->p0(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 14
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    if-eqz v2, :cond_4

    .line 15
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/send/DressUpSendFragment;->U1()V

    goto :goto_2

    :cond_5
    return-void
.end method
