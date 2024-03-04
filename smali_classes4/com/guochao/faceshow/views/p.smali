.class public Lcom/guochao/faceshow/views/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/p$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/EditText;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private final f:Landroid/view/View;

.field private g:Lcom/guochao/faceshow/views/p$c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/views/p;->a:Landroid/view/View;

    const v0, 0x7f0a036d

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    const v0, 0x7f0a02a8

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/p;->f:Landroid/view/View;

    .line 5
    new-instance v1, Lcom/guochao/faceshow/views/o;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/o;-><init>(Lcom/guochao/faceshow/views/p;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/p;->h(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/views/p;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/p;->i(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/p;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/views/p;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/p;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/p;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/p;)Lcom/guochao/faceshow/views/p$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/p;->g:Lcom/guochao/faceshow/views/p$c;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/views/p;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/p;->o(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/views/p;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    return-object p0
.end method

.method private h(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    new-instance v0, Lcom/guochao/faceshow/views/p$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/p$a;-><init>(Lcom/guochao/faceshow/views/p;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    new-instance v0, Lcom/guochao/faceshow/views/p$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/p$b;-><init>(Lcom/guochao/faceshow/views/p;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private o(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/p;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/p;->c:Z

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/p;->c:Z

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    .line 6
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/views/p;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/p;->o(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->g:Lcom/guochao/faceshow/views/p$c;

    if-eqz p1, :cond_2

    .line 10
    invoke-interface {p1}, Lcom/guochao/faceshow/views/p$c;->b()V

    :cond_2
    :goto_0
    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/views/p;->g:Lcom/guochao/faceshow/views/p$c;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/p;->d:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/views/p;->g:Lcom/guochao/faceshow/views/p$c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/views/p$c;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public j(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/p;->c:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->d:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/views/p;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/p;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/p;->o(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public k(Lcom/guochao/faceshow/views/p$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/p;->g:Lcom/guochao/faceshow/views/p$c;

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/p;->e:Z

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/p;->c:Z

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/p;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
