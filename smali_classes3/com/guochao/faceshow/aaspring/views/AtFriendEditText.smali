.class public Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$a;,
        Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$b;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$b;

.field private b:Z

.field c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->getMaxLength()I

    move-result v2

    if-le v0, v2, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v2, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$a;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, p2}, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5
    new-instance p2, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {p2, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v0, p2, v1, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/2addr v1, p1

    :goto_1
    const-string v3, " "

    invoke-interface {p2, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public b(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x4d

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p2

    if-lez p2, :cond_0

    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->c:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->c:Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    if-lez p2, :cond_0

    add-int/lit8 p3, p2, -0x1

    const-string v0, ""

    .line 5
    invoke-interface {p1, p3, p2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_0
    return-void
.end method

.method public getMaxLength()I
    .locals 12

    const v0, 0x7fffffff

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 3
    instance-of v6, v5, Landroid/text/InputFilter$LengthFilter;

    if-eqz v6, :cond_0

    .line 4
    check-cast v5, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v5}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v0

    return v0

    .line 5
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "android.text.InputFilter$LengthFilter"

    .line 6
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 8
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    const-string v10, "mMax"

    .line 9
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    .line 10
    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 11
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/16 v0, 0x4d

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->a:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$b;->a(Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0x43

    if-ne p1, v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 5
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 6
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    const-class v4, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$a;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3, v4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$a;

    .line 7
    :goto_0
    array-length v4, v3

    if-ge v5, v4, :cond_2

    .line 8
    aget-object v4, v3, v5

    .line 9
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 10
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    if-le v1, v6, :cond_1

    if-gt v2, v7, :cond_1

    .line 11
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    .line 12
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    .line 13
    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 14
    invoke-interface {v0, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    const-class v2, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$a;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$a;

    const/4 v2, 0x0

    .line 4
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 5
    aget-object v4, v1, v3

    .line 6
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 7
    invoke-interface {v0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-le p1, v5, :cond_0

    if-ge p2, v4, :cond_0

    .line 8
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->d:I

    if-ltz v4, :cond_0

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->e:I

    if-ltz v5, :cond_0

    .line 9
    invoke-static {v0, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 10
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->e:I

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->d:I

    :cond_2
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->b:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->a:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$b;

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->c:Z

    .line 3
    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$b;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->b:Z

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1

    const v0, 0x1020022

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->b:Z

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

.method public setOnKeyAtDownListener(Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AtFriendEditText;->a:Lcom/guochao/faceshow/aaspring/views/AtFriendEditText$b;

    return-void
.end method
