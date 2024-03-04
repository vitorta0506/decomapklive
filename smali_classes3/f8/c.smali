.class public Lf8/c;
.super Lf8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/c$d;
    }
.end annotation


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/EditText;

.field private h:Lf8/c$d;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 0

    invoke-direct {p0, p1}, Lf8/a;-><init>(Landroid/view/ViewStub;)V

    return-void
.end method

.method public static synthetic d(Lf8/c;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lf8/c;->k(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lf8/c;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lf8/c;->g:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic f(Lf8/c;)Lf8/c$d;
    .locals 0

    iget-object p0, p0, Lf8/c;->h:Lf8/c$d;

    return-object p0
.end method

.method static synthetic g(Lf8/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lf8/c;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h(Lf8/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lf8/c;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lf8/c;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lf8/c;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method private synthetic k(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/c;->l()V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "tokens/userout/sendLogoutCodeByEmail"

    invoke-direct {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    new-instance v0, Lf8/c$b;

    invoke-direct {v0, p0, p1}, Lf8/c$b;-><init>(Lf8/c;Landroid/view/View;)V

    .line 3
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    invoke-static {}, Le8/a;->c()Le8/a;

    move-result-object v0

    invoke-virtual {v0}, Le8/a;->g()V

    .line 2
    iget-object v0, p0, Lf8/c;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lf8/c;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a036b

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->email:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->setEncryptionEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0360

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lf8/c;->g:Landroid/widget/EditText;

    .line 5
    new-instance v1, Lf8/c$a;

    invoke-direct {v1, p0}, Lf8/c$a;-><init>(Lf8/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a09ca

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf8/c;->d:Landroid/view/View;

    const v0, 0x7f0a09cb

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf8/c;->e:Landroid/view/View;

    const v0, 0x7f0a0c5e

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lf8/c;->f:Landroid/widget/TextView;

    .line 9
    invoke-static {}, Le8/a;->c()Le8/a;

    move-result-object v0

    invoke-virtual {v0}, Le8/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lf8/c;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lf8/c;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :cond_0
    iget-object v0, p0, Lf8/c;->d:Landroid/view/View;

    new-instance v1, Lf8/b;

    invoke-direct {v1, p0, p1}, Lf8/b;-><init>(Lf8/c;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-static {}, Le8/a;->c()Le8/a;

    move-result-object p1

    invoke-virtual {p1}, Le8/a;->d()V

    .line 14
    invoke-static {}, Le8/a;->c()Le8/a;

    move-result-object p1

    new-instance v0, Lf8/c$c;

    invoke-direct {v0, p0}, Lf8/c$c;-><init>(Lf8/c;)V

    invoke-virtual {p1, v0}, Le8/a;->setOnTimerChangeListener(Le8/b$b;)V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf8/c;->g:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setOnNextEnableListener(Lf8/c$d;)V
    .locals 0

    iput-object p1, p0, Lf8/c;->h:Lf8/c$d;

    return-void
.end method
