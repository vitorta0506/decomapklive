.class public Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;,
        Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Landroid/text/TextWatcher;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;-><init>(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->c:Landroid/text/TextWatcher;

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    sget-object p1, Lcom/guochao/faceshow/aaspring/views/b;->a:Lcom/guochao/faceshow/aaspring/views/b;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;-><init>(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->c:Landroid/text/TextWatcher;

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    sget-object p1, Lcom/guochao/faceshow/aaspring/views/a;->a:Lcom/guochao/faceshow/aaspring/views/a;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->t(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->s(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->e:Z

    return p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->e:Z

    return p1
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->n()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->w()V

    return-void
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->f:Z

    return p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->f:Z

    return p1
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->i:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->p()V

    return-void
.end method

.method static synthetic k(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic l(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->b:Z

    return p0
.end method

.method static synthetic m(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->d:Z

    return p1
.end method

.method private n()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    if-eqz v1, :cond_1

    .line 4
    array-length v4, v1

    if-lez v4, :cond_1

    .line 5
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 6
    invoke-interface {v0, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private o(ILjava/lang/String;Landroid/text/Editable;)V
    .locals 11

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;

    const/4 v5, 0x0

    invoke-interface {p3, v5, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;

    .line 3
    array-length v4, v3

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v4, :cond_3

    aget-object v7, v3, v5

    .line 4
    invoke-interface {p3, v7}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 5
    invoke-interface {p3, v7}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v10

    if-ne v8, v2, :cond_2

    if-ne v9, v10, :cond_1

    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p3, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v6}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;-><init>(Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;)V

    sub-int/2addr v9, v0

    const/16 p2, 0x21

    .line 10
    invoke-interface {p3, p1, v8, v9, p2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x40

    if-eq v0, v1, :cond_4

    const/16 v0, 0x23

    if-ne v0, v1, :cond_5

    .line 11
    :cond_4
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;-><init>(Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$a;)V

    .line 12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x12

    invoke-interface {p3, v0, v2, p1, p2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    return-void
.end method

.method private p()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 3
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 4
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;

    .line 5
    :goto_0
    array-length v4, v3

    if-ge v5, v4, :cond_1

    .line 6
    aget-object v4, v3, v5

    .line 7
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 8
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-le v1, v6, :cond_0

    if-gt v2, v7, :cond_0

    .line 9
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 10
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 11
    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 12
    invoke-interface {v0, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->e:Z

    return-void
.end method

.method private q(I[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private r(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->addInvisibleCharBeforeWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic s(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic t(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private w()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@|#| "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_6

    .line 5
    aget-object v5, v1, v4

    const/16 v6, 0x200b

    .line 6
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-direct {p0, v4, v1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->q(I[Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 8
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-le v6, v7, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :cond_0
    invoke-interface {v0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    .line 9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_1

    goto :goto_3

    .line 11
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 14
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 16
    :cond_3
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 18
    invoke-direct {p0, v6, v5, v0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->o(ILjava/lang/String;Landroid/text/Editable;)V

    :goto_2
    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 20
    invoke-direct {p0, v6, v5, v0}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->o(ILjava/lang/String;Landroid/text/Editable;)V

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method protected onSelectionChanged(II)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$AtPeopleSpan;

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 5
    aget-object v5, v1, v2

    .line 6
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 7
    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/4 v7, 0x1

    if-le p1, v6, :cond_0

    if-ge p2, v5, :cond_0

    .line 8
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->g:I

    if-ltz v5, :cond_0

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->h:I

    if-ltz v6, :cond_0

    .line 9
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 10
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->h:I

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 11
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v0, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 12
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->h:I

    .line 13
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->g:I

    :cond_2
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1

    const v0, 0x1020022

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->f:Z

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->a:Landroid/app/Activity;

    return-void
.end method

.method public setIgnoreTopic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->b:Z

    return-void
.end method

.method public setOnTextChangedListener(Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->i:Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText$b;

    return-void
.end method

.method public u(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x4d

    const-string v3, " "

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v4

    const-string v5, "key1"

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    .line 2
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    if-nez v5, :cond_0

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x4e

    if-ne p1, v4, :cond_5

    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_5

    const-string p2, "topics"

    .line 5
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 6
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_5

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    const-string v1, "#"

    if-ge v0, p3, :cond_3

    .line 8
    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->d:Z

    if-eqz p3, :cond_2

    .line 9
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v5, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_3

    .line 11
    :cond_3
    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->d:Z

    if-eqz p3, :cond_4

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v5, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_5
    if-eq p1, v2, :cond_6

    if-ne p1, v4, :cond_7

    .line 14
    :cond_6
    invoke-static {p0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->openSoftKeyBoard(Landroid/widget/EditText;)V

    :cond_7
    return-void
.end method

.method public v()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->d:Z

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/AtTopicUgcEditText;->a:Landroid/app/Activity;

    const/16 v2, 0x4e

    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/SearchAttachTopicActivity;->r0(Landroid/app/Activity;ZI)V

    return-void
.end method
