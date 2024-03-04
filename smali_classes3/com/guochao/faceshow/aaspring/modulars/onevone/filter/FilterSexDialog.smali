.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$e;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$e;

.field bgManFilter:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field bgNoneFilter:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field bgWomanFilter:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field manChecker:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field noneChecker:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field womenChecker:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a()Landroid/app/Activity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 3
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->noneChecker:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->manChecker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->womenChecker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgNoneFilter:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgManFilter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgWomanFilter:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->womenChecker:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgWomanFilter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->manChecker:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgManFilter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->noneChecker:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->bgNoneFilter:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 15
    instance-of v0, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_3

    .line 16
    check-cast p1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 17
    :cond_3
    instance-of v0, p1, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    if-eqz v0, :cond_4

    .line 18
    check-cast p1, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;

    .line 19
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a:I

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/component/f2fmatch/proxy/F2fMatchContainer;->setGenderSelection(I)V

    :cond_4
    return-void
.end method

.method private d(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a:I

    return-void
.end method

.method public static e(Landroid/app/Activity;I)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->d(I)V

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->show()V

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0d011f

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    .line 7
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 8
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 2
    :sswitch_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "ovo_Prepare_gender_Female_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 3
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->k()Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp9/a;->A(Landroid/app/Activity;)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterRechargeDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterRechargeDialog;->setOnConfirmListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterRechargeDialog$a;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->c(I)V

    .line 9
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp9/a;->v(Landroid/app/Activity;)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;->setOnConfirmListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$e;

    if-eqz p1, :cond_9

    .line 13
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a:I

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$e;->onSelect(I)V

    goto/16 :goto_2

    .line 14
    :sswitch_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "ovo_Prepare_gender_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->c(I)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$e;

    if-eqz p1, :cond_4

    .line 17
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a:I

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$e;->onSelect(I)V

    .line 18
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    .line 19
    :sswitch_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "ovo_Prepare_gender_male_click"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    .line 20
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 21
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 22
    :cond_5
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->k()Z

    move-result p1

    if-nez p1, :cond_7

    .line 23
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp9/a;->A(Landroid/app/Activity;)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterRechargeDialog;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 24
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterRechargeDialog;->setOnConfirmListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterRechargeDialog$a;)V

    :cond_6
    return-void

    .line 25
    :cond_7
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->c(I)V

    .line 26
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp9/a;->v(Landroid/app/Activity;)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 27
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;->setOnConfirmListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;)V

    goto :goto_1

    .line 28
    :cond_8
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 29
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$e;

    if-eqz p1, :cond_9

    .line 30
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a:I

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$e;->onSelect(I)V

    goto :goto_2

    .line 31
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_9
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a012e -> :sswitch_3
        0x7f0a073e -> :sswitch_2
        0x7f0a081e -> :sswitch_1
        0x7f0a0e71 -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnSelectListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog$e;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->c(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->c(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterSexDialog;->c(I)V

    :goto_0
    return-void
.end method
