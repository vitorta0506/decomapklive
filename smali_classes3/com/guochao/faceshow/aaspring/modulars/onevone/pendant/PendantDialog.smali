.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Lq9/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$b;,
        Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;
    }
.end annotation


# instance fields
.field a:I

.field private b:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

.field private e:Z

.field emptyView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Z

.field firstTab:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field fragmentContainer:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private g:Z

.field private h:I

.field private i:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;

.field iconClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private j:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$b;

.field secondTab:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tab1:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tab2:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tab3:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tabLay:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tabLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field thirdTab:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->a:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f120222

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f1204e5

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v3, 0x7f120329

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->b:[Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    .line 7
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->f:Z

    return-void
.end method

.method private P1(I)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->a:I

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->g:Z

    const-string v1, "isTrtc"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method private R1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->firstTab:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->secondTab:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->b:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->thirdTab:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->b:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->U1()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->d:Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    const v4, 0x7f0a0440

    invoke-virtual {v0, v4, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->initFragments(ILandroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->d:Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->showFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private S1()V
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->P1(I)Landroid/os/Bundle;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->d:Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    const v4, 0x7f0a0440

    invoke-virtual {v0, v4, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->initFragments(ILandroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->d:Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->showFragment(Landroidx/fragment/app/Fragment;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tabLay:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tabLine:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private T1(I)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->S1()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->R1()V

    :goto_0
    return-void
.end method

.method private U1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;-><init>()V

    .line 4
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->P1(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab1:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab2:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :goto_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;-><init>()V

    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->P1(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 12
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;-><init>()V

    const/4 v3, 0x2

    .line 13
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->P1(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->f:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->V1(I)V

    return-void
.end method

.method private V1(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->f:Z

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    :goto_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->h:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->firstTab:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const v2, 0x7f06009e

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->secondTab:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->thirdTab:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab1:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab2:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->a:I

    .line 9
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->g:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x3ed

    .line 10
    :cond_1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getLast(I)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->t1(Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    const v0, 0x7f06009c

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->thirdTab:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab3:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "Beautify_filter_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->secondTab:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "Beautify_Beauty_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->firstTab:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->tab1:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "Beautify_Special_effects_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public Q1()Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;

    return-object v0
.end method

.method public W1(JII)V
    .locals 1

    const-string v0, "tokens/resource/record/save"

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "infoId"

    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "resourceCode"

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "moduleCode"

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public X1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->f:Z

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->j:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$b;->onDismiss()V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0138

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "isTrtc"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->g:Z

    .line 3
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->d:Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->fragmentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->fragmentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->a:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->T1(I)V

    .line 8
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->a:I

    .line 9
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->g:Z

    if-eqz v0, :cond_1

    const/16 p1, 0x3ed

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/BeautyItemCacheManager;->getLast(I)Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->t1(Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createBottomDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->e:Z

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0332

    if-eq v0, v1, :cond_d

    const v1, 0x7f0a04f8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_6

    const/4 p1, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 2
    :pswitch_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->V1(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->d:Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    iget-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->f:Z

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_4

    .line 6
    :pswitch_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->f:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-direct {p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->V1(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->d:Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->f:Z

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    .line 10
    :pswitch_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v3, :cond_5

    return-void

    .line 11
    :cond_5
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->V1(I)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->d:Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/FragmentUtil;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    .line 13
    :cond_6
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 14
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;

    if-eqz p1, :cond_8

    .line 16
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;->a()V

    .line 17
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v2, p1, :cond_e

    .line 18
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->h:I

    if-eq v2, p1, :cond_9

    goto :goto_3

    .line 19
    :cond_9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->c:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 20
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    if-eqz v0, :cond_a

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/face/FacePendantFragment;->a2()V

    .line 22
    :cond_a
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    if-eqz v0, :cond_b

    .line 23
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/beauty/BeaultyFragment;->V1()V

    .line 24
    :cond_b
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    if-eqz v0, :cond_c

    .line 25
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/filter/FilterFragment;->W1()V

    :cond_c
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 26
    :cond_d
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->dismiss()V

    :cond_e
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0b15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnDismissListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->j:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$b;

    return-void
.end method

.method public setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->i:Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog$c;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->a:I

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string p2, "Beautifye_click"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    return-void
.end method

.method public t1(Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->iconClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastFilter()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->iconClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastBeautyValue()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/pendant/PendantDialog;->iconClose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/BeautyItemCache;->getLastFaceMotion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method
