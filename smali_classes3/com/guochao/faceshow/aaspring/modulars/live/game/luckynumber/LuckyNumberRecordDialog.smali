.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->T1(Landroid/view/View;)V

    return-void
.end method

.method private R1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private S1(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->c:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0f01f8

    goto :goto_0

    :cond_0
    const v0, 0x7f0f01f7

    :goto_0
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "{diamond} %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 6
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    const/high16 v5, 0x41400000    # 12.0f

    .line 7
    invoke-virtual {v4, p1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    invoke-virtual {v4, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 9
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v4, 0x0

    mul-float v4, v4, p1

    float-to-int v4, v4

    int-to-float p2, p2

    mul-float p2, p2, p1

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float p2, p2, v5

    int-to-float v3, v3

    div-float/2addr p2, v3

    float-to-int p2, p2

    mul-float p1, p1, v5

    float-to-int p1, p1

    .line 10
    invoke-virtual {v0, v2, v4, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    new-instance p1, Lcom/guochao/faceshow/views/r;

    invoke-direct {p1, v0}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "{diamond}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_2

    add-int/lit8 v0, p2, 0x9

    .line 13
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-gt v0, v2, :cond_2

    const/16 v2, 0x11

    .line 14
    invoke-virtual {v1, p1, p2, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-object v1
.end method

.method private synthetic T1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->R1()V

    return-void
.end method

.method public static V1(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "liveGameBean"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Q1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;)V
    .locals 5

    const p2, 0x7f0a0954

    .line 1
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v0, 0x7f0a0601

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0981

    .line 3
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->getCreateTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->getDiamondOut()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->S1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->getDiamondIn()I

    move-result p2

    if-lez p2, :cond_0

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;->getDiamondIn()I

    move-result p3

    invoke-direct {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->S1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p2, "0"

    .line 9
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public U1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->Q1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;)V

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0133

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->hideFooterView()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "liveGameBean"

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->c:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    :cond_0
    const v0, 0x7f0a032e

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->a:Landroid/view/View;

    const v0, 0x7f0a062d

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->b:Landroid/view/View;

    const v0, 0x7f0a0601

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0a0981

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0a063f

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, La9/a;

    invoke-direct {v0, p0}, La9/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public loadData(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->c:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->notifyDataLoaded(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->showEmptyView()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "tokens/game/v2/record/list"

    .line 7
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "currPage"

    invoke-virtual {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "pageSize"

    const-string v2, "20"

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "typeList"

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->c:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    .line 11
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getGameInfoId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "gameInfoId"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->y(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p1, 0x7f13012a

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0250

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0601

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->U1(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/LiveGameRecord$LiveGameRecordBean;)V

    return-void
.end method

.method public showEmptyView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewDialogFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/LuckyNumberRecordDialog;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
