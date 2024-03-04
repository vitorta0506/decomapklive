.class public Ls8/c;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls8/c$c;
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

.field private i:Ljava/lang/CharSequence;

.field private j:Ls8/c$c;

.field private k:Landroid/text/SpannableStringBuilder;

.field private l:Ljava/lang/CharSequence;

.field private m:I

.field private n:I

.field private o:Landroid/view/WindowManager$LayoutParams;

.field private p:Landroid/view/Window;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILs8/c$c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Ls8/c;->m:I

    .line 4
    iput p2, p0, Ls8/c;->n:I

    .line 5
    iput-object p1, p0, Ls8/c;->g:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Ls8/c;->j:Ls8/c$c;

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Ls8/c;->p:Landroid/view/Window;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ls8/c$c;)V
    .locals 1

    const v0, 0x7f1304b9

    .line 1
    invoke-direct {p0, p1, v0, p2}, Ls8/c;-><init>(Landroid/content/Context;ILs8/c$c;)V

    return-void
.end method

.method static synthetic a(Ls8/c;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Ls8/c;->c:Landroid/widget/EditText;

    return-object p0
.end method

.method private c()V
    .locals 3

    const v0, 0x7f0a0231

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ls8/c;->a:Landroid/view/ViewGroup;

    const v0, 0x7f0a0233

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls8/c;->b:Landroid/widget/TextView;

    const v0, 0x7f0a022e

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ls8/c;->c:Landroid/widget/EditText;

    const v0, 0x7f0a0232

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls8/c;->d:Landroid/widget/TextView;

    const v0, 0x7f0a022d

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ls8/c;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0234

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ls8/c;->f:Landroid/view/View;

    const v0, 0x7f0a0203

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8
    new-instance v1, Ls8/c$a;

    invoke-direct {v1, p0}, Ls8/c$a;-><init>(Ls8/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v1, p0, Ls8/c;->c:Landroid/widget/EditText;

    new-instance v2, Ls8/c$b;

    invoke-direct {v2, p0, v0}, Ls8/c$b;-><init>(Ls8/c;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iget-object v0, p0, Ls8/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Ls8/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget v0, p0, Ls8/c;->m:I

    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Ls8/c;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14
    :cond_0
    iget v0, p0, Ls8/c;->n:I

    if-eqz v0, :cond_1

    .line 15
    iget-object v1, p0, Ls8/c;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    :cond_1
    iget-object v0, p0, Ls8/c;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Ls8/c;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Ls8/c;->b:Landroid/widget/TextView;

    iget-object v2, p0, Ls8/c;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object v0, p0, Ls8/c;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :goto_0
    iget-object v0, p0, Ls8/c;->i:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    iget-object v0, p0, Ls8/c;->c:Landroid/widget/EditText;

    iget-object v2, p0, Ls8/c;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Ls8/c;->c:Landroid/widget/EditText;

    iget-object v2, p0, Ls8/c;->i:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 23
    :cond_3
    iget-object v0, p0, Ls8/c;->k:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    iget-object v0, p0, Ls8/c;->d:Landroid/widget/TextView;

    iget-object v2, p0, Ls8/c;->k:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    :cond_4
    iget-object v0, p0, Ls8/c;->l:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 26
    iget-object v0, p0, Ls8/c;->e:Landroid/widget/TextView;

    iget-object v2, p0, Ls8/c;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_5
    iget-boolean v0, p0, Ls8/c;->r:Z

    if-eqz v0, :cond_6

    .line 28
    iget-object v0, p0, Ls8/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Ls8/c;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public b()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Ls8/c;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public d(Ljava/lang/CharSequence;)Ls8/c;
    .locals 0

    iput-object p1, p0, Ls8/c;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Ls8/c;
    .locals 0

    iput-object p1, p0, Ls8/c;->i:Ljava/lang/CharSequence;

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
    iget-object p1, p0, Ls8/c;->j:Ls8/c$c;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Ls8/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ls8/c$c;->onConfirm(Landroid/app/Dialog;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Ls8/c;->j:Ls8/c$c;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, p0, v0}, Ls8/c$c;->onClick(Landroid/app/Dialog;Z)V

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

    const p1, 0x7f0d013f

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    iget-object p1, p0, Ls8/c;->p:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Ls8/c;->p:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Ls8/c;->o:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    .line 5
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 6
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Ls8/c;->p:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    :cond_0
    iget-boolean p1, p0, Ls8/c;->q:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    invoke-direct {p0}, Ls8/c;->c()V

    .line 10
    iget-object p1, p0, Ls8/c;->j:Ls8/c$c;

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1, p0}, Ls8/c$c;->onCreate(Ls8/c;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls8/c;->g:Landroid/content/Context;

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
    iget-object v0, p0, Ls8/c;->g:Landroid/content/Context;

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
