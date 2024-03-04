.class public Ls8/b;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls8/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/CharSequence;

.field private i:Ls8/b$a;

.field private j:Landroid/text/SpannableStringBuilder;

.field private k:Ljava/lang/CharSequence;

.field private l:I

.field private m:I

.field private n:Landroid/view/WindowManager$LayoutParams;

.field private o:Landroid/view/Window;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILs8/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Ls8/b;->l:I

    .line 4
    iput p2, p0, Ls8/b;->m:I

    .line 5
    iput-object p1, p0, Ls8/b;->g:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Ls8/b;->i:Ls8/b$a;

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Ls8/b;->o:Landroid/view/Window;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ls8/b$a;)V
    .locals 1

    const v0, 0x7f1304b9

    .line 1
    invoke-direct {p0, p1, v0, p2}, Ls8/b;-><init>(Landroid/content/Context;ILs8/b$a;)V

    return-void
.end method

.method private a()V
    .locals 3

    const v0, 0x7f0a0231

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ls8/b;->a:Landroid/view/ViewGroup;

    const v0, 0x7f0a0233

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls8/b;->b:Landroid/widget/TextView;

    const v0, 0x7f0a022e

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ls8/b;->c:Landroid/widget/EditText;

    const v0, 0x7f0a0232

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls8/b;->d:Landroid/widget/TextView;

    const v0, 0x7f0a022d

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls8/b;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0234

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ls8/b;->f:Landroid/view/View;

    .line 7
    iget-object v0, p0, Ls8/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Ls8/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget v0, p0, Ls8/b;->l:I

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Ls8/b;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :cond_0
    iget v0, p0, Ls8/b;->m:I

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Ls8/b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Ls8/b;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Ls8/b;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Ls8/b;->b:Landroid/widget/TextView;

    iget-object v2, p0, Ls8/b;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Ls8/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :goto_0
    iget-object v0, p0, Ls8/b;->j:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Ls8/b;->d:Landroid/widget/TextView;

    iget-object v2, p0, Ls8/b;->j:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_3
    iget-object v0, p0, Ls8/b;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Ls8/b;->e:Landroid/widget/TextView;

    iget-object v2, p0, Ls8/b;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_4
    iget-boolean v0, p0, Ls8/b;->q:Z

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Ls8/b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Ls8/b;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/CharSequence;)Ls8/b;
    .locals 0

    iput-object p1, p0, Ls8/b;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a022d

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a0232

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Ls8/b;->i:Ls8/b$a;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Ls8/b;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ls8/b$a;->onConfirm(Landroid/app/Dialog;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Ls8/b;->i:Ls8/b$a;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, p0, v0}, Ls8/b$a;->onClick(Landroid/app/Dialog;Z)V

    .line 8
    :cond_4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0111

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    iget-object p1, p0, Ls8/b;->o:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Ls8/b;->o:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Ls8/b;->n:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    .line 5
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 6
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Ls8/b;->o:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    :cond_0
    iget-boolean p1, p0, Ls8/b;->p:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    invoke-direct {p0}, Ls8/b;->a()V

    .line 10
    iget-object p1, p0, Ls8/b;->i:Ls8/b$a;

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1, p0}, Ls8/b$a;->onCreate(Ls8/b;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls8/b;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Ls8/b;->g:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 4
    check-cast v0, Landroid/app/Activity;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 6
    :cond_3
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
