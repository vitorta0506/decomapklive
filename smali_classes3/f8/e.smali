.class public Lf8/e;
.super Lf8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf8/e$b;
    }
.end annotation


# instance fields
.field private d:Landroid/widget/EditText;

.field private e:Lf8/e$b;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 0

    invoke-direct {p0, p1}, Lf8/a;-><init>(Landroid/view/ViewStub;)V

    return-void
.end method

.method public static synthetic d(Lf8/e;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lf8/e;->h(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lf8/e;)Lf8/e$b;
    .locals 0

    iget-object p0, p0, Lf8/e;->e:Lf8/e$b;

    return-object p0
.end method

.method static synthetic f(Lf8/e;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lf8/e;->d:Landroid/widget/EditText;

    return-object p0
.end method

.method private synthetic h(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lf8/e;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lf8/e;->d:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 5
    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f0f054f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lf8/e;->d:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 7
    check-cast p1, Landroid/widget/ImageView;

    const v1, 0x7f0f0550

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lf8/e;->d:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a036c

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lf8/e;->d:Landroid/widget/EditText;

    .line 2
    new-instance v1, Lf8/e$a;

    invoke-direct {v1, p0}, Lf8/e$a;-><init>(Lf8/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a05ca

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance v0, Lf8/d;

    invoke-direct {v0, p0}, Lf8/d;-><init>(Lf8/e;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf8/e;->d:Landroid/widget/EditText;

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

.method public setOnTextChangeListener(Lf8/e$b;)V
    .locals 0

    iput-object p1, p0, Lf8/e;->e:Lf8/e$b;

    return-void
.end method
