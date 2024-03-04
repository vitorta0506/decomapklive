.class public Lcom/guochao/faceshow/views/n;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/n$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:Lcom/guochao/faceshow/views/n$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/n$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/views/n;->j:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/guochao/faceshow/views/n;->k:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/guochao/faceshow/views/n;->l:Lcom/guochao/faceshow/views/n$b;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/n;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/n;->i:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/n;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/n;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/n;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/n;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/n;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/views/n;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/n;->h:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/views/n;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/n;->j:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/views/n;)Lcom/guochao/faceshow/views/n$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/n;->l:Lcom/guochao/faceshow/views/n$b;

    return-object p0
.end method

.method private l()V
    .locals 2

    const v0, 0x7f0a0255

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/n;->a:Landroid/widget/TextView;

    const v0, 0x7f0a022d

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/n;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0351

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/n;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0352

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/n;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0353

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/n;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0354

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/n;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0355

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/n;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0356

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/n;->h:Landroid/widget/TextView;

    const v0, 0x7f0a0860

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/FontUtils;->setFontForView(Landroid/view/View;I)V

    const v0, 0x7f0a0357

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/guochao/faceshow/views/n;->i:Landroid/widget/EditText;

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->i:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->openSoftKeyBoard(Landroid/widget/EditText;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/views/n;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/views/n$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/n$a;-><init>(Lcom/guochao/faceshow/views/n;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/n;->j()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/guochao/faceshow/views/n;->i:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method varargs k(I[Landroid/widget/TextView;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, p1, -0x1

    if-le v0, v1, :cond_0

    aget-object v1, p2, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/n;->l:Lcom/guochao/faceshow/views/n$b;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, p0, v0}, Lcom/guochao/faceshow/views/n$b;->onClose(Landroid/app/Dialog;Z)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/n;->j:Landroid/content/Context;

    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->i:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoard(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/n;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d013b

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/views/n;->l()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/n;->j()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/n;->i:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->openSoftKeyBoard(Landroid/widget/EditText;)V

    return-void
.end method
