.class Lcom/guochao/faceshow/systemassistant/adapter/b;
.super Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;


# instance fields
.field private m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

.field private n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

.field private o:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic h(Lcom/guochao/faceshow/systemassistant/adapter/b;)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->o:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/systemassistant/adapter/b;)Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/systemassistant/adapter/b;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/b;->n(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    return-void
.end method

.method private k(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p1, 0x1

    .line 2
    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/EditTextUtils;->getLinkedText(Ljava/lang/String;Z)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private m(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->f(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V

    return-void
.end method

.method private n(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    const v2, 0x7f1208e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->o:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->translate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/b;->m(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    const v1, 0x7f1208ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->o:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->translate:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/systemassistant/adapter/b;->k(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->k:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/b;->k(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->o:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    .line 3
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->o:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object p2, p2, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->translate:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/systemassistant/adapter/b;->k(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->o:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->translate:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/systemassistant/adapter/b;->k(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/systemassistant/adapter/b;->k(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    const/high16 v0, 0x41500000    # 13.0f

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060375

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result p2

    const/high16 v0, 0x43140000    # 148.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    sub-int/2addr p2, v0

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    new-instance v1, Lcom/guochao/faceshow/systemassistant/adapter/b$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/b$a;-><init>(Lcom/guochao/faceshow/systemassistant/adapter/b;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17
    iget-boolean v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->isSelf:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v2, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->o:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iget-object v0, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->translate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v2, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1208e9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v2, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1208ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/guochao/faceshow/systemassistant/adapter/b$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/systemassistant/adapter/b$b;-><init>(Lcom/guochao/faceshow/systemassistant/adapter/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    new-instance v2, Lcom/guochao/faceshow/systemassistant/adapter/b$c;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/systemassistant/adapter/b$c;-><init>(Lcom/guochao/faceshow/systemassistant/adapter/b;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    new-instance v2, Lcom/guochao/faceshow/systemassistant/adapter/b$d;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/b$d;-><init>(Lcom/guochao/faceshow/systemassistant/adapter/b;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :cond_4
    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/text/TextPaint;Ljava/lang/String;)I

    move-result v1

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v0, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v0

    add-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public l(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    .line 2
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3
    iget-object v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Text:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/guochao/faceshow/systemassistant/adapter/b;->k(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x41500000    # 13.0f

    .line 4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenWidth()I

    move-result v0

    const/high16 v1, 0x43140000    # 148.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v1

    sub-int/2addr v0, v1

    .line 7
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 8
    new-instance v0, Lcom/guochao/faceshow/systemassistant/adapter/b$e;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/b$e;-><init>(Lcom/guochao/faceshow/systemassistant/adapter/b;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v0, Lcom/guochao/faceshow/systemassistant/adapter/b$f;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/b$f;-><init>(Lcom/guochao/faceshow/systemassistant/adapter/b;Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->o:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iput-object v0, v1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->translate:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->n:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/systemassistant/adapter/b;->k(Landroid/widget/TextView;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/b;->m:Lcom/guochao/faceshow/aaspring/views/ControlClickSpanTextView;

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
