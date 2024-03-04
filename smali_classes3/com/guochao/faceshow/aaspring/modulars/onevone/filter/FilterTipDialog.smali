.class public Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;

.field content:Landroid/widget/TextView;
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

.method public static b(Landroid/app/Activity;)Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0d0120

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, -0x1

    .line 7
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    const v2, 0x3ecccccd    # 0.4f

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x500

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v2, -0x80000000

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;->content:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12032a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array p1, p1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v4

    invoke-virtual {v4}, Lp9/a;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a020d

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a023f

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a0819

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->s()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;->onConfirm()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;->onConfirm()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOnConfirmListener(Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/onevone/filter/FilterTipDialog$a;

    return-void
.end method
