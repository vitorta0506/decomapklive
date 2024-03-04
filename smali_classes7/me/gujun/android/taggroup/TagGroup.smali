.class public Lme/gujun/android/taggroup/TagGroup;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/gujun/android/taggroup/TagGroup$f;,
        Lme/gujun/android/taggroup/TagGroup$b;,
        Lme/gujun/android/taggroup/TagGroup$SavedState;,
        Lme/gujun/android/taggroup/TagGroup$c;,
        Lme/gujun/android/taggroup/TagGroup$e;,
        Lme/gujun/android/taggroup/TagGroup$d;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Lme/gujun/android/taggroup/TagGroup$d;

.field private L:Lme/gujun/android/taggroup/TagGroup$e;

.field private M:Lme/gujun/android/taggroup/TagGroup$b;

.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:F

.field private final m:F

.field private final n:F

.field private final o:F

.field private final p:F

.field private final q:F

.field private r:Z

.field private s:Ljava/lang/CharSequence;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lme/gujun/android/taggroup/TagGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lme/gujun/android/taggroup/R$attr;->tagGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lme/gujun/android/taggroup/TagGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v1, p0

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x49

    const/16 v2, 0xc1

    const/16 v3, 0x20

    .line 4
    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->a:I

    .line 5
    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    iput v5, v1, Lme/gujun/android/taggroup/TagGroup;->b:I

    const/4 v6, -0x1

    .line 6
    iput v6, v1, Lme/gujun/android/taggroup/TagGroup;->c:I

    const/16 v7, 0xaa

    .line 7
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    iput v7, v1, Lme/gujun/android/taggroup/TagGroup;->d:I

    const/16 v8, 0x80

    const/4 v9, 0x0

    .line 8
    invoke-static {v8, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    iput v8, v1, Lme/gujun/android/taggroup/TagGroup;->e:I

    const/16 v10, 0xde

    .line 9
    invoke-static {v10, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    iput v10, v1, Lme/gujun/android/taggroup/TagGroup;->f:I

    .line 10
    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    iput v11, v1, Lme/gujun/android/taggroup/TagGroup;->g:I

    .line 11
    iput v6, v1, Lme/gujun/android/taggroup/TagGroup;->h:I

    .line 12
    iput v6, v1, Lme/gujun/android/taggroup/TagGroup;->i:I

    .line 13
    invoke-static {v0, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->j:I

    const/16 v2, 0xed

    .line 14
    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, v1, Lme/gujun/android/taggroup/TagGroup;->k:I

    .line 15
    new-instance v3, Lme/gujun/android/taggroup/TagGroup$b;

    invoke-direct {v3, v1}, Lme/gujun/android/taggroup/TagGroup$b;-><init>(Lme/gujun/android/taggroup/TagGroup;)V

    iput-object v3, v1, Lme/gujun/android/taggroup/TagGroup;->M:Lme/gujun/android/taggroup/TagGroup$b;

    const/high16 v3, 0x3f000000    # 0.5f

    .line 16
    invoke-virtual {v1, v3}, Lme/gujun/android/taggroup/TagGroup;->x(F)F

    move-result v3

    iput v3, v1, Lme/gujun/android/taggroup/TagGroup;->l:F

    const/high16 v12, 0x41500000    # 13.0f

    .line 17
    invoke-virtual {v1, v12}, Lme/gujun/android/taggroup/TagGroup;->z(F)F

    move-result v12

    iput v12, v1, Lme/gujun/android/taggroup/TagGroup;->m:F

    const/high16 v13, 0x41000000    # 8.0f

    .line 18
    invoke-virtual {v1, v13}, Lme/gujun/android/taggroup/TagGroup;->x(F)F

    move-result v13

    iput v13, v1, Lme/gujun/android/taggroup/TagGroup;->n:F

    const/high16 v14, 0x40800000    # 4.0f

    .line 19
    invoke-virtual {v1, v14}, Lme/gujun/android/taggroup/TagGroup;->x(F)F

    move-result v14

    iput v14, v1, Lme/gujun/android/taggroup/TagGroup;->o:F

    const/high16 v15, 0x41400000    # 12.0f

    .line 20
    invoke-virtual {v1, v15}, Lme/gujun/android/taggroup/TagGroup;->x(F)F

    move-result v15

    iput v15, v1, Lme/gujun/android/taggroup/TagGroup;->p:F

    const/high16 v6, 0x40400000    # 3.0f

    .line 21
    invoke-virtual {v1, v6}, Lme/gujun/android/taggroup/TagGroup;->x(F)F

    move-result v6

    iput v6, v1, Lme/gujun/android/taggroup/TagGroup;->q:F

    .line 22
    sget-object v9, Lme/gujun/android/taggroup/R$styleable;->TagGroup:[I

    move/from16 v16, v6

    sget v6, Lme/gujun/android/taggroup/R$style;->TagGroup:I

    move/from16 v19, v13

    move/from16 v18, v14

    move/from16 v17, v15

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    move/from16 v13, p3

    invoke-virtual {v15, v14, v9, v13, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 23
    :try_start_0
    sget v9, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_isAppendMode:I

    const/4 v13, 0x0

    invoke-virtual {v6, v9, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v1, Lme/gujun/android/taggroup/TagGroup;->r:Z

    .line 24
    sget v9, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_inputHint:I

    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v1, Lme/gujun/android/taggroup/TagGroup;->s:Ljava/lang/CharSequence;

    .line 25
    sget v9, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_borderColor:I

    invoke-virtual {v6, v9, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->t:I

    .line 26
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_textColor:I

    invoke-virtual {v6, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->u:I

    .line 27
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_backgroundColor:I

    const/4 v5, -0x1

    invoke-virtual {v6, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->v:I

    .line 28
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_dashBorderColor:I

    invoke-virtual {v6, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->w:I

    .line 29
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_inputHintColor:I

    invoke-virtual {v6, v4, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->x:I

    .line 30
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_inputTextColor:I

    invoke-virtual {v6, v4, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->y:I

    .line 31
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_checkedBorderColor:I

    invoke-virtual {v6, v4, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->z:I

    .line 32
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_checkedTextColor:I

    const/4 v5, -0x1

    invoke-virtual {v6, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->A:I

    .line 33
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_checkedMarkerColor:I

    invoke-virtual {v6, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, v1, Lme/gujun/android/taggroup/TagGroup;->B:I

    .line 34
    sget v4, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_checkedBackgroundColor:I

    invoke-virtual {v6, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->C:I

    .line 35
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_pressedBackgroundColor:I

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->D:I

    .line 36
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_borderStrokeWidth:I

    invoke-virtual {v6, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->E:F

    .line 37
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_textSize:I

    invoke-virtual {v6, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->F:F

    .line 38
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_horizontalSpacing:I

    move/from16 v2, v19

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->G:I

    .line 39
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_verticalSpacing:I

    move/from16 v2, v18

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->H:I

    .line 40
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_horizontalPadding:I

    move/from16 v2, v17

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->I:I

    .line 41
    sget v0, Lme/gujun/android/taggroup/R$styleable;->TagGroup_atg_verticalPadding:I

    move/from16 v2, v16

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup;->J:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    iget-boolean v0, v1, Lme/gujun/android/taggroup/TagGroup;->r:Z

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual/range {p0 .. p0}, Lme/gujun/android/taggroup/TagGroup;->t()V

    .line 45
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$a;

    invoke-direct {v0, v1}, Lme/gujun/android/taggroup/TagGroup$a;-><init>(Lme/gujun/android/taggroup/TagGroup;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 46
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic a(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$d;
    .locals 0

    iget-object p0, p0, Lme/gujun/android/taggroup/TagGroup;->K:Lme/gujun/android/taggroup/TagGroup$d;

    return-object p0
.end method

.method static synthetic b(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->w:I

    return p0
.end method

.method static synthetic c(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->v:I

    return p0
.end method

.method static synthetic d(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->x:I

    return p0
.end method

.method static synthetic e(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->y:I

    return p0
.end method

.method static synthetic f(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->z:I

    return p0
.end method

.method static synthetic g(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->C:I

    return p0
.end method

.method static synthetic h(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->A:I

    return p0
.end method

.method static synthetic i(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->t:I

    return p0
.end method

.method static synthetic j(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->u:I

    return p0
.end method

.method static synthetic k(Lme/gujun/android/taggroup/TagGroup;)Z
    .locals 0

    iget-boolean p0, p0, Lme/gujun/android/taggroup/TagGroup;->r:Z

    return p0
.end method

.method static synthetic l(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->D:I

    return p0
.end method

.method static synthetic m(Lme/gujun/android/taggroup/TagGroup;)Lme/gujun/android/taggroup/TagGroup$e;
    .locals 0

    iget-object p0, p0, Lme/gujun/android/taggroup/TagGroup;->L:Lme/gujun/android/taggroup/TagGroup$e;

    return-object p0
.end method

.method static synthetic n(Lme/gujun/android/taggroup/TagGroup;)F
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->E:F

    return p0
.end method

.method static synthetic o(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->B:I

    return p0
.end method

.method static synthetic p(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->I:I

    return p0
.end method

.method static synthetic q(Lme/gujun/android/taggroup/TagGroup;)I
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->J:I

    return p0
.end method

.method static synthetic r(Lme/gujun/android/taggroup/TagGroup;)F
    .locals 0

    iget p0, p0, Lme/gujun/android/taggroup/TagGroup;->F:F

    return p0
.end method

.method static synthetic s(Lme/gujun/android/taggroup/TagGroup;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lme/gujun/android/taggroup/TagGroup;->s:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lme/gujun/android/taggroup/TagGroup$f;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lme/gujun/android/taggroup/TagGroup$f;->c()V

    .line 4
    iget-object v1, p0, Lme/gujun/android/taggroup/TagGroup;->K:Lme/gujun/android/taggroup/TagGroup$d;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lme/gujun/android/taggroup/TagGroup$d;->a(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->t()V

    :cond_1
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lme/gujun/android/taggroup/TagGroup$c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lme/gujun/android/taggroup/TagGroup$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getCheckedTag()Lme/gujun/android/taggroup/TagGroup$f;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTagIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->y(I)Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCheckedTagIndex()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lme/gujun/android/taggroup/TagGroup;->y(I)Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lme/gujun/android/taggroup/TagGroup$f;->b(Lme/gujun/android/taggroup/TagGroup$f;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected getInputTag()Lme/gujun/android/taggroup/TagGroup$f;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->y(I)Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lme/gujun/android/taggroup/TagGroup$f;->a(Lme/gujun/android/taggroup/TagGroup$f;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getInputTagText()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLastNormalTagView()Lme/gujun/android/taggroup/TagGroup$f;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lme/gujun/android/taggroup/TagGroup;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->y(I)Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    return-object v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lme/gujun/android/taggroup/TagGroup;->y(I)Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v3

    .line 4
    invoke-static {v3}, Lme/gujun/android/taggroup/TagGroup$f;->a(Lme/gujun/android/taggroup/TagGroup$f;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 5
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p4, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 p5, 0x0

    move v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge p5, p3, :cond_2

    .line 6
    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    add-int v5, v1, v3

    if-le v5, p4, :cond_0

    .line 10
    iget v1, p0, Lme/gujun/android/taggroup/TagGroup;->H:I

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    move v1, p1

    move v0, v4

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    add-int v5, v1, v3

    add-int/2addr v4, p2

    .line 12
    invoke-virtual {v2, v1, p2, v5, v4}, Landroid/view/View;->layout(IIII)V

    .line 13
    iget v2, p0, Lme/gujun/android/taggroup/TagGroup;->G:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 9
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 10
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v11, 0x8

    if-eq v8, v11, :cond_1

    add-int/2addr v7, v9

    if-le v7, v2, :cond_0

    .line 11
    iget v7, p0, Lme/gujun/android/taggroup/TagGroup;->H:I

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 12
    :cond_0
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v9, v7

    .line 13
    :goto_1
    iget v5, p0, Lme/gujun/android/taggroup/TagGroup;->G:I

    add-int/2addr v9, v5

    move v7, v9

    move v5, v10

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v4, v5

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr v4, p1

    if-nez v6, :cond_3

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr v7, p1

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    const/high16 p1, 0x40000000    # 2.0f

    if-ne v0, p1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v7

    :goto_3
    if-ne v1, p1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    .line 16
    :goto_4
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lme/gujun/android/taggroup/TagGroup$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lme/gujun/android/taggroup/TagGroup$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p1, Lme/gujun/android/taggroup/TagGroup$SavedState;->b:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->setTags([Ljava/lang/String;)V

    .line 6
    iget v0, p1, Lme/gujun/android/taggroup/TagGroup$SavedState;->c:I

    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->y(I)Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lme/gujun/android/taggroup/TagGroup$f;->f(Z)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    iget-object p1, p1, Lme/gujun/android/taggroup/TagGroup$SavedState;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lme/gujun/android/taggroup/TagGroup$SavedState;

    invoke-direct {v1, v0}, Lme/gujun/android/taggroup/TagGroup$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lme/gujun/android/taggroup/TagGroup$SavedState;->b:[Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getCheckedTagIndex()I

    move-result v0

    iput v0, v1, Lme/gujun/android/taggroup/TagGroup$SavedState;->c:I

    .line 5
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lme/gujun/android/taggroup/TagGroup$SavedState;->d:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method public setOnTagChangeListener(Lme/gujun/android/taggroup/TagGroup$d;)V
    .locals 0

    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup;->K:Lme/gujun/android/taggroup/TagGroup$d;

    return-void
.end method

.method public setOnTagClickListener(Lme/gujun/android/taggroup/TagGroup$e;)V
    .locals 0

    iput-object p1, p0, Lme/gujun/android/taggroup/TagGroup;->L:Lme/gujun/android/taggroup/TagGroup$e;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lme/gujun/android/taggroup/TagGroup;->setTags([Ljava/lang/String;)V

    return-void
.end method

.method public varargs setTags([Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    invoke-virtual {p0, v2}, Lme/gujun/android/taggroup/TagGroup;->v(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p0, Lme/gujun/android/taggroup/TagGroup;->r:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->t()V

    :cond_1
    return-void
.end method

.method protected t()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/gujun/android/taggroup/TagGroup;->u(Ljava/lang/String;)V

    return-void
.end method

.method protected u(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lme/gujun/android/taggroup/TagGroup;->getInputTag()Lme/gujun/android/taggroup/TagGroup$f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$f;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, p1}, Lme/gujun/android/taggroup/TagGroup$f;-><init>(Lme/gujun/android/taggroup/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup;->M:Lme/gujun/android/taggroup/TagGroup$b;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already has a INPUT tag in group."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected v(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    new-instance v0, Lme/gujun/android/taggroup/TagGroup$f;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lme/gujun/android/taggroup/TagGroup$f;-><init>(Lme/gujun/android/taggroup/TagGroup;Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lme/gujun/android/taggroup/TagGroup;->M:Lme/gujun/android/taggroup/TagGroup$b;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected w(Lme/gujun/android/taggroup/TagGroup$f;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lme/gujun/android/taggroup/TagGroup;->K:Lme/gujun/android/taggroup/TagGroup$d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lme/gujun/android/taggroup/TagGroup$d;->b(Lme/gujun/android/taggroup/TagGroup;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public x(F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method protected y(I)Lme/gujun/android/taggroup/TagGroup$f;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lme/gujun/android/taggroup/TagGroup$f;

    return-object p1
.end method

.method public z(F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method
