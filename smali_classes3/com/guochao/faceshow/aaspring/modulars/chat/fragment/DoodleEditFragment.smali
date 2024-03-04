.class public Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;,
        Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$b;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/guochao/faceshow/aaspring/views/doodle/h;

.field complete:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private d:I

.field private e:[I

.field etText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private f:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$b;

.field private g:I

.field private h:Z

.field ivBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivMode:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llBottom:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const-string v0, "#DF382C"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->d:I

    const/16 v1, 0x9

    new-array v1, v1, [I

    const-string v2, "#FFFFFF"

    .line 3
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    aput v0, v1, v2

    const-string v0, "#F19A36"

    .line 4
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    aput v0, v1, v2

    const-string v0, "#83D753"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    aput v0, v1, v2

    const-string v0, "#3378F6"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x5

    aput v0, v1, v2

    const-string v0, "#883C9B"

    .line 5
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x6

    aput v0, v1, v2

    const-string v0, "#A25617"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x7

    aput v0, v1, v2

    const-string v0, "#F7E368"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x8

    aput v0, v1, v2

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->h:Z

    return p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->g:I

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->g:I

    return p1
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)[I
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->d:I

    return p1
.end method


# virtual methods
.method public V1(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->x(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->m(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->ivBg:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->Z1(Landroid/view/View;)V

    return-void
.end method

.method public W1(Lcom/guochao/faceshow/aaspring/views/doodle/h;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->c:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->T(Z)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->Q()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->Q()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->d:I

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->M()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v3, 0x41000000    # 8.0f

    .line 9
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->M()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v3, v3

    .line 11
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->M()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->g:I

    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    array-length v3, v1

    if-ge p1, v3, :cond_1

    .line 15
    aget v1, v1, p1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->g:I

    if-ne v1, v3, :cond_0

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->h:Z

    goto :goto_4

    :cond_2
    const/4 p1, 0x0

    .line 19
    :goto_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    array-length v3, v1

    if-ge p1, v3, :cond_4

    .line 20
    aget v1, v1, p1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->d:I

    if-ne v1, v3, :cond_3

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    goto :goto_3

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 23
    :cond_4
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->h:Z

    :goto_4
    return-void
.end method

.method public X1(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$b;

    return-void
.end method

.method public Y1(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/utils/NavigationBarUtils;->getDpi(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/utils/NavigationBarUtils;->getBottomStatusHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    if-nez p1, :cond_0

    .line 4
    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/high16 v3, 0x42600000    # 56.0f

    .line 5
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/utils/NavigationBarUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/utils/NavigationBarUtils;->getBottomStatusHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPPO R11st"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/utils/NavigationBarUtils;->getBottomStatusHeight(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public Z1(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0143

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->b:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->d:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;-><init>()V

    .line 5
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v3, 0x40400000    # 3.0f

    .line 6
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    const-string v4, "#ffffff"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setDrawable(Landroid/graphics/drawable/GradientDrawable;)V

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 10
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->setSelect(Z)V

    .line 12
    :goto_1
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$a;

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 6
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0239

    if-eq p1, v0, :cond_6

    const v0, 0x7f0a05bc

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0c55

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$b;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$b;->hide()V

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->h:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->g:I

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->g:I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->h:Z

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->ivMode:Landroid/widget/ImageView;

    const v0, 0x7f0f03aa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_2
    const/high16 p1, 0x41000000    # 8.0f

    .line 9
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    .line 10
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ColorItemBean;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_3

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    aget v3, v3, v5

    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->d:I

    goto :goto_1

    .line 15
    :cond_3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 16
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    aget v3, v3, v0

    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->d:I

    .line 17
    :goto_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->e:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->g:I

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->g:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float p1, p1

    .line 19
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->h:Z

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->ivMode:Landroid/widget/ImageView;

    const v0, 0x7f0f03ab

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 23
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->f:Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$b;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->c:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->etText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->d:I

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;->g:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$b;->a(Lcom/guochao/faceshow/aaspring/views/doodle/h;Ljava/lang/String;II)V

    :goto_2
    return-void
.end method
