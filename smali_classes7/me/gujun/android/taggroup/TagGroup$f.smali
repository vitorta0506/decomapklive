.class Lme/gujun/android/taggroup/TagGroup$f;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/gujun/android/taggroup/TagGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/gujun/android/taggroup/TagGroup$f$e;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/RectF;

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/RectF;

.field private j:Landroid/graphics/RectF;

.field private k:Landroid/graphics/RectF;

.field private l:Landroid/graphics/Rect;

.field private m:Landroid/graphics/Path;

.field private n:Landroid/graphics/PathEffect;

.field final synthetic o:Lme/gujun/android/taggroup/TagGroup;


# direct methods
.method public constructor <init>(Lme/gujun/android/taggroup/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lme/gujun/android/taggroup/TagGroup$f;->b:Z

    .line 4
    iput-boolean p2, p0, Lme/gujun/android/taggroup/TagGroup$f;->c:Z

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->d:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->f:Landroid/graphics/Paint;

    .line 8
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->g:Landroid/graphics/RectF;

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->h:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->i:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->j:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->k:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->l:Landroid/graphics/Rect;

    .line 14
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    .line 15
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->n:Landroid/graphics/PathEffect;

    .line 16
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->d:Landroid/graphics/Paint;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->n(Lme/gujun/android/taggroup/TagGroup;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->f:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->f:Landroid/graphics/Paint;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->f:Landroid/graphics/Paint;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->o(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->p(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->q(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v3

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->p(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v4

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->q(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v5

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$c;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Lme/gujun/android/taggroup/TagGroup$c;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 25
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->r(Lme/gujun/android/taggroup/TagGroup;)F

    move-result p4

    invoke-virtual {p0, p2, p4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    iput p3, p0, Lme/gujun/android/taggroup/TagGroup$f;->a:I

    .line 28
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->k(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result p4

    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setClickable(Z)V

    if-ne p3, v2, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 29
    :goto_0
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setFocusable(Z)V

    if-ne p3, v2, :cond_1

    const/4 p2, 0x1

    .line 30
    :cond_1
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const/4 p2, 0x0

    if-ne p3, v2, :cond_2

    .line 31
    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->s(Lme/gujun/android/taggroup/TagGroup;)Ljava/lang/CharSequence;

    move-result-object p4

    goto :goto_1

    :cond_2
    move-object p4, p2

    :goto_1
    invoke-virtual {p0, p4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    if-ne p3, v2, :cond_3

    .line 32
    invoke-static {}, Landroid/text/method/ArrowKeyMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    :cond_3
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 33
    new-instance p2, Lme/gujun/android/taggroup/TagGroup$f$a;

    invoke-direct {p2, p0, p1, p3}, Lme/gujun/android/taggroup/TagGroup$f$a;-><init>(Lme/gujun/android/taggroup/TagGroup$f;Lme/gujun/android/taggroup/TagGroup;I)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-ne p3, v2, :cond_4

    .line 34
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 35
    new-instance p2, Lme/gujun/android/taggroup/TagGroup$f$b;

    invoke-direct {p2, p0, p1}, Lme/gujun/android/taggroup/TagGroup$f$b;-><init>(Lme/gujun/android/taggroup/TagGroup$f;Lme/gujun/android/taggroup/TagGroup;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 36
    new-instance p2, Lme/gujun/android/taggroup/TagGroup$f$c;

    invoke-direct {p2, p0, p1}, Lme/gujun/android/taggroup/TagGroup$f$c;-><init>(Lme/gujun/android/taggroup/TagGroup$f;Lme/gujun/android/taggroup/TagGroup;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 37
    new-instance p2, Lme/gujun/android/taggroup/TagGroup$f$d;

    invoke-direct {p2, p0, p1}, Lme/gujun/android/taggroup/TagGroup$f$d;-><init>(Lme/gujun/android/taggroup/TagGroup$f;Lme/gujun/android/taggroup/TagGroup;)V

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 38
    :cond_4
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$f;->d()V

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method static synthetic a(Lme/gujun/android/taggroup/TagGroup$f;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup$f;->a:I

    return p0
.end method

.method static synthetic b(Lme/gujun/android/taggroup/TagGroup$f;)Z
    .locals 0

    iget-boolean p0, p0, Lme/gujun/android/taggroup/TagGroup$f;->b:Z

    return p0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->k(Lme/gujun/android/taggroup/TagGroup;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->b(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->n:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 5
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->c(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->d(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 7
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->e(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->d:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 9
    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->b:Z

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->f(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->g(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->h(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->i(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->c(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->j(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->i(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->c(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->j(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :goto_0
    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->c:Z

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->l(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->a:I

    .line 6
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$f;->d()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public e()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup$f;->b:Z

    .line 2
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->p(Lme/gujun/android/taggroup/TagGroup;)I

    move-result p1

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    .line 3
    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->q(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v0

    iget-boolean v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    .line 4
    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->p(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    .line 5
    invoke-static {v1}, Lme/gujun/android/taggroup/TagGroup;->p(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    .line 6
    invoke-static {v2}, Lme/gujun/android/taggroup/TagGroup;->q(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v2

    .line 7
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$f;->d()V

    return-void
.end method

.method protected getDefaultEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    new-instance v0, Lme/gujun/android/taggroup/TagGroup$f$e;

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lme/gujun/android/taggroup/TagGroup$f$e;-><init>(Lme/gujun/android/taggroup/TagGroup$f;Landroid/view/inputmethod/InputConnection;Z)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->g:Landroid/graphics/RectF;

    iget-object v5, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 2
    iget-object v7, p0, Lme/gujun/android/taggroup/TagGroup$f;->g:Landroid/graphics/RectF;

    iget-object v11, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    const/high16 v8, -0x3c790000    # -270.0f

    const/high16 v9, 0x42b40000    # 90.0f

    const/4 v10, 0x1

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 3
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->h:Landroid/graphics/RectF;

    iget-object v5, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 4
    iget-object v7, p0, Lme/gujun/android/taggroup/TagGroup$f;->h:Landroid/graphics/RectF;

    iget-object v11, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->i:Landroid/graphics/RectF;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 7
    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->b:Z

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x42340000    # 45.0f

    .line 9
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->k:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lme/gujun/android/taggroup/TagGroup$f;->k:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 10
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->k:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->k:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 11
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->f:Landroid/graphics/Paint;

    move-object v1, p1

    .line 12
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->k:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->k:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 14
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->k:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->f:Landroid/graphics/Paint;

    .line 15
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 17
    :cond_0
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 18
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p3}, Lme/gujun/android/taggroup/TagGroup;->n(Lme/gujun/android/taggroup/TagGroup;)F

    move-result p3

    float-to-int p3, p3

    .line 3
    iget-object p4, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p4}, Lme/gujun/android/taggroup/TagGroup;->n(Lme/gujun/android/taggroup/TagGroup;)F

    move-result p4

    float-to-int p4, p4

    add-int/2addr p1, p3

    int-to-float p1, p1

    .line 4
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup;->n(Lme/gujun/android/taggroup/TagGroup;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    add-int v0, p4, p2

    int-to-float v0, v0

    .line 5
    iget-object v2, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v2}, Lme/gujun/android/taggroup/TagGroup;->n(Lme/gujun/android/taggroup/TagGroup;)F

    move-result v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    sub-int v2, v0, p4

    .line 6
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$f;->g:Landroid/graphics/RectF;

    int-to-float v4, p3

    int-to-float v5, p4

    add-int v6, p3, v2

    int-to-float v6, v6

    add-int v7, p4, v2

    int-to-float v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$f;->h:Landroid/graphics/RectF;

    sub-int v6, p1, v2

    int-to-float v6, v6

    int-to-float v8, p1

    invoke-virtual {v3, v6, v5, v8, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 9
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->g:Landroid/graphics/RectF;

    const/high16 v7, -0x3ccc0000    # -180.0f

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v3, v6, v7, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 10
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->g:Landroid/graphics/RectF;

    const/high16 v7, -0x3c790000    # -270.0f

    invoke-virtual {v3, v6, v7, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 11
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->h:Landroid/graphics/RectF;

    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v6, v7, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 12
    iget-object v3, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->h:Landroid/graphics/RectF;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v9}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    int-to-float v3, v2

    div-float v1, v3, v1

    float-to-int v1, v1

    .line 13
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    add-int/2addr p3, v1

    int-to-float p3, p3

    invoke-virtual {v6, p3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 14
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    sub-int v7, p1, v1

    int-to-float v7, v7

    invoke-virtual {v6, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    int-to-float v9, v0

    invoke-virtual {v6, p3, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 16
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    add-int v10, p4, v1

    int-to-float v10, v10

    invoke-virtual {v6, v4, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 18
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    sub-int v1, v0, v1

    int-to-float v1, v1

    invoke-virtual {v6, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 19
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    invoke-virtual {v6, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 20
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->m:Landroid/graphics/Path;

    invoke-virtual {v6, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    iget-object v6, p0, Lme/gujun/android/taggroup/TagGroup$f;->i:Landroid/graphics/RectF;

    invoke-virtual {v6, v4, v10, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->j:Landroid/graphics/RectF;

    invoke-virtual {v1, p3, v5, v7, v9}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float p2, p2

    const/high16 p3, 0x40200000    # 2.5f

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 23
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup$f;->k:Landroid/graphics/RectF;

    sub-int v4, p1, p2

    iget-object v5, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {v5}, Lme/gujun/android/taggroup/TagGroup;->p(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr p4, v2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p4, p2

    int-to-float p4, p4

    iget-object v5, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    .line 24
    invoke-static {v5}, Lme/gujun/android/taggroup/TagGroup;->p(Lme/gujun/android/taggroup/TagGroup;)I

    move-result v5

    sub-int/2addr p1, v5

    add-int/lit8 p1, p1, 0x3

    int-to-float p1, p1

    sub-int/2addr v0, v2

    add-int/2addr v0, p2

    int-to-float p2, v0

    .line 25
    invoke-virtual {v1, v4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 26
    iget-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup$f;->b:Z

    if-eqz p1, :cond_0

    .line 27
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    invoke-static {p1}, Lme/gujun/android/taggroup/TagGroup;->p(Lme/gujun/android/taggroup/TagGroup;)I

    move-result p1

    iget-object p2, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    .line 28
    invoke-static {p2}, Lme/gujun/android/taggroup/TagGroup;->q(Lme/gujun/android/taggroup/TagGroup;)I

    move-result p2

    iget-object p4, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    .line 29
    invoke-static {p4}, Lme/gujun/android/taggroup/TagGroup;->p(Lme/gujun/android/taggroup/TagGroup;)I

    move-result p4

    int-to-float p4, p4

    div-float/2addr v3, p3

    add-float/2addr p4, v3

    const/high16 p3, 0x40400000    # 3.0f

    add-float/2addr p4, p3

    float-to-int p3, p4

    iget-object p4, p0, Lme/gujun/android/taggroup/TagGroup$f;->o:Lme/gujun/android/taggroup/TagGroup;

    .line 30
    invoke-static {p4}, Lme/gujun/android/taggroup/TagGroup;->q(Lme/gujun/android/taggroup/TagGroup;)I

    move-result p4

    .line 31
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->l:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    iput-boolean v3, p0, Lme/gujun/android/taggroup/TagGroup$f;->c:Z

    .line 6
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$f;->d()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 8
    :cond_2
    iput-boolean v3, p0, Lme/gujun/android/taggroup/TagGroup$f;->c:Z

    .line 9
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$f;->d()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup$f;->l:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 12
    iput-boolean v2, p0, Lme/gujun/android/taggroup/TagGroup$f;->c:Z

    .line 13
    invoke-direct {p0}, Lme/gujun/android/taggroup/TagGroup$f;->d()V

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 15
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
