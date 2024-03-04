.class public Lf8/i;
.super Lf8/a;
.source "SourceFile"


# instance fields
.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 0

    invoke-direct {p0, p1}, Lf8/a;-><init>(Landroid/view/ViewStub;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0b8e

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf8/i;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0b86

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lf8/i;->d:Landroid/widget/ImageView;

    return-void
.end method

.method public d(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-super {p0}, Lf8/a;->c()V

    .line 2
    iget-object v0, p0, Lf8/a;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lf8/i;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lf8/i;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lf8/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208bb

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
