.class Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc8/a$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/InvaliteWebActivity;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->k0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->k0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    const v2, 0x7f120522

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/beans/AdsBean;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->k0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->k0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    const v1, 0x7f12094e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lp9/a;->B(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->k0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->k0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    const v1, 0x7f12094e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->k0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->k0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    const v2, 0x7f12098b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->l0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f08054d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/InvaliteWebActivity$b;->a:Lcom/guochao/faceshow/activity/InvaliteWebActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/InvaliteWebActivity;->l0(Lcom/guochao/faceshow/activity/InvaliteWebActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_2
    :goto_0
    return-void
.end method
