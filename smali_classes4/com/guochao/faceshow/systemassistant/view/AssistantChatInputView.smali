.class public Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;
    }
.end annotation


# instance fields
.field private a:Landroid/view/KeyEvent;

.field private final b:I

.field private c:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;

.field public d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field m:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

.field private n:Lcom/guochao/faceshow/aaspring/utils/ChatView;

.field private o:Landroid/app/Activity;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/view/KeyEvent;

    const/4 p3, 0x0

    const/16 v0, 0x43

    invoke-direct {p2, p3, v0}, Landroid/view/KeyEvent;-><init>(II)V

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->a:Landroid/view/KeyEvent;

    const/16 p2, 0x64

    .line 5
    iput p2, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->b:I

    .line 6
    sget-object p2, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;->NONE:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;

    iput-object p2, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->c:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;

    .line 7
    iput-boolean p3, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->p:Z

    .line 8
    iput-boolean p3, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->q:Z

    .line 9
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->o:Landroid/app/Activity;

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->j()V

    .line 11
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->p(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)Lcom/guochao/faceshow/aaspring/utils/ChatView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->n:Lcom/guochao/faceshow/aaspring/utils/ChatView;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->p:Z

    return p1
.end method

.method private e()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3
    iput-boolean v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->q:Z

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$a;-><init>(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$b;-><init>(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private i()V
    .locals 5

    const/high16 v0, 0x41600000    # 14.0f

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x42540000    # 53.0f

    .line 3
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 4
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->h:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 8
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/high16 v2, 0x42c80000    # 100.0f

    .line 11
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v2

    invoke-virtual {v2}, Lq7/a;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, -0x3d740000    # -70.0f

    .line 14
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_0
    const/high16 v2, -0x3d900000    # -60.0f

    .line 15
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x420c0000    # 35.0f

    .line 17
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    .line 20
    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v4

    .line 21
    invoke-static {v1}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v1

    .line 22
    invoke-static {v3}, Lcom/guochao/faceshow/utils/ScreenTools;->get375STValue(F)I

    move-result v3

    .line 23
    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00dd

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a00c7

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->g:Landroid/widget/ImageView;

    const v0, 0x7f0a00e2

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00e0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00df

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->l:Landroid/view/View;

    const v0, 0x7f0a00e1

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->k:Landroid/widget/TextView;

    const v0, 0x7f0a00c8

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    const v0, 0x7f0a00cc

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a00c1

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->f:Landroid/widget/TextView;

    const v0, 0x7f0a00c2

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->h:Landroid/widget/RelativeLayout;

    .line 11
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->k:Landroid/widget/TextView;

    const v1, 0x7f1202f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/high16 v2, 0x40400000    # 3.0f

    .line 15
    invoke-static {v2}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v2

    .line 16
    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 17
    new-instance v0, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->m:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

    .line 18
    invoke-direct {p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->i()V

    .line 19
    invoke-direct {p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->h()V

    return-void
.end method

.method private l(Landroid/app/Activity;)Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private n()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->g:Landroid/widget/ImageView;

    const v1, 0x7f0f0013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->g:Landroid/widget/ImageView;

    const v1, 0x7f0f0015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->g(Landroid/widget/EditText;)V

    :goto_2
    return-void
.end method

.method private o(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->q:Z

    :cond_0
    return-void
.end method

.method private p(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->c:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$c;->a:[I

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->c:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v1, 0x10

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->o:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->g(Landroid/widget/EditText;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->o:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 7
    iget-boolean p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->p:Z

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->o(Landroid/widget/EditText;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTextString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->c:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;

    sget-object v1, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;->NONE:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->p(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;)V

    const/4 v0, 0x1

    return v0
.end method

.method public m(Ljava/util/List;Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/FAQTypesData;",
            ">;",
            "Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->m:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->e(Ljava/util/List;Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView$c;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->m:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->m:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->b()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->m:Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantFaqPopView;->f(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :sswitch_1
    sget-object p1, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;->NONE:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->p(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;)V

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->l(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->n:Lcom/guochao/faceshow/aaspring/utils/ChatView;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/utils/ChatView;->sendImage()V

    goto :goto_0

    .line 9
    :sswitch_2
    sget-object p1, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;->TEXT:Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->p(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;)V

    goto :goto_0

    .line 10
    :sswitch_3
    invoke-direct {p0}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->n()V

    goto :goto_0

    .line 11
    :sswitch_4
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->n:Lcom/guochao/faceshow/aaspring/utils/ChatView;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/utils/ChatView;->sendText()V

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00c1 -> :sswitch_4
        0x7f0a00c7 -> :sswitch_3
        0x7f0a00c8 -> :sswitch_2
        0x7f0a00cc -> :sswitch_1
        0x7f0a00e0 -> :sswitch_0
    .end sparse-switch
.end method

.method public setChatView(Lcom/guochao/faceshow/aaspring/utils/ChatView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->n:Lcom/guochao/faceshow/aaspring/utils/ChatView;

    return-void
.end method

.method public setInputMode(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->p(Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView$InputMode;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/view/AssistantChatInputView;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
