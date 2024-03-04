.class public Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/EditText;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->setInsertionDisabled(Landroid/widget/EditText;)V

    return-void
.end method

.method public static convertNormalNumberToArabicNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->NUMBERS:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public static disableEditTextLongClick(Landroid/widget/EditText;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils$2;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils$3;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getLinkedText(Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Landroidx/core/util/PatternsCompat;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v1, p0, v2, v3, p1}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->setLink(Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static setEditTextInputSpace(Landroid/widget/EditText;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils$4;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils$4;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method private static setInsertionDisabled(Landroid/widget/EditText;)V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mEditor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "android.widget.Editor"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mInsertionControllerEnabled"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "mSelectionControllerEnabled"

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 10
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static setLink(Landroid/text/SpannableStringBuilder;Ljava/lang/String;IIZ)V
    .locals 2

    const-string v0, "#6365FF"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;

    invoke-direct {v1, p1, v0, p4}, Lcom/guochao/faceshow/aaspring/utils/LinkClickSpan;-><init>(Ljava/lang/String;IZ)V

    const/16 p1, 0x21

    invoke-virtual {p0, v1, p2, p3, p1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static setLinkText(Ljava/lang/String;Landroid/widget/TextView;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->getLinkedText(Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
