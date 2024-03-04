.class public Ljb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/view/Window;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0460

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f1304c8

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Ljb/b;->a:Landroid/app/Dialog;

    .line 4
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Ljb/b;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    iget-object p1, p0, Ljb/b;->a:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object p1, p0, Ljb/b;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Ljb/b;->b:Landroid/view/Window;

    const p1, 0x7f0a0d8b

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljb/b;->c:Landroid/widget/TextView;

    const p1, 0x7f0a0d8a

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljb/b;->d:Landroid/widget/TextView;

    .line 10
    iget-object p1, p0, Ljb/b;->c:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1209c1

    invoke-virtual {v0, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/b;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ljb/b;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/b;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/b;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljb/b;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LV."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljb/b;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3
    :cond_0
    iget-object v0, p0, Ljb/b;->b:Landroid/view/Window;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Ljb/b;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    iget-object v1, p0, Ljb/b;->b:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    iget-object v0, p0, Ljb/b;->b:Landroid/view/Window;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljb/b;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method
