.class public Lcom/guochao/faceshow/views/wheelview/WheelView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:Landroid/graphics/drawable/GradientDrawable;

.field private i:Landroid/graphics/drawable/GradientDrawable;

.field private j:Z

.field private k:Lcom/guochao/faceshow/views/wheelview/a;

.field private l:Z

.field private m:I

.field n:Z

.field private o:Landroid/widget/LinearLayout;

.field private p:I

.field private q:Lmb/c;

.field private r:Llb/e;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llb/b;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llb/d;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Llb/c;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/lang/String;

.field w:Lcom/guochao/faceshow/views/wheelview/a$c;

.field private x:Landroid/database/DataSetObserver;

.field y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 38
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->a:[I

    const/4 v1, 0x0

    .line 39
    iput v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    .line 40
    iput v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->c:I

    .line 41
    iput v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->d:I

    const v0, 0x7f08053f

    .line 42
    iput v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->f:I

    const v0, 0x7f080540

    .line 43
    iput v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->g:I

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->j:Z

    .line 45
    iput-boolean v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->n:Z

    .line 46
    new-instance v0, Llb/e;

    invoke-direct {v0, p0}, Llb/e;-><init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->r:Llb/e;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->s:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->t:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->u:Ljava/util/List;

    const-string v0, ""

    .line 50
    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->v:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/guochao/faceshow/views/wheelview/WheelView$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/wheelview/WheelView$a;-><init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->w:Lcom/guochao/faceshow/views/wheelview/a$c;

    .line 52
    new-instance v0, Lcom/guochao/faceshow/views/wheelview/WheelView$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/wheelview/WheelView$b;-><init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->x:Landroid/database/DataSetObserver;

    .line 53
    iput v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->y:I

    .line 54
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->q(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xffffff
        0xffffff
        0xffffff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x3

    new-array v0, p2, [I

    .line 20
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->a:[I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    .line 22
    iput p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->c:I

    .line 23
    iput v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->d:I

    const p2, 0x7f08053f

    .line 24
    iput p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->f:I

    const p2, 0x7f080540

    .line 25
    iput p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->g:I

    const/4 p2, 0x1

    .line 26
    iput-boolean p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->j:Z

    .line 27
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->n:Z

    .line 28
    new-instance p2, Llb/e;

    invoke-direct {p2, p0}, Llb/e;-><init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->r:Llb/e;

    .line 29
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->s:Ljava/util/List;

    .line 30
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->t:Ljava/util/List;

    .line 31
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->u:Ljava/util/List;

    const-string p2, ""

    .line 32
    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->v:Ljava/lang/String;

    .line 33
    new-instance p2, Lcom/guochao/faceshow/views/wheelview/WheelView$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/views/wheelview/WheelView$a;-><init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->w:Lcom/guochao/faceshow/views/wheelview/a$c;

    .line 34
    new-instance p2, Lcom/guochao/faceshow/views/wheelview/WheelView$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/views/wheelview/WheelView$b;-><init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->x:Landroid/database/DataSetObserver;

    .line 35
    iput v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->y:I

    .line 36
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->q(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xffffff
        0xffffff
        0xffffff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    new-array p3, p2, [I

    .line 2
    fill-array-data p3, :array_0

    iput-object p3, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->a:[I

    const/4 p3, 0x0

    .line 3
    iput p3, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->c:I

    .line 5
    iput p3, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->d:I

    const p2, 0x7f08053f

    .line 6
    iput p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->f:I

    const p2, 0x7f080540

    .line 7
    iput p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->g:I

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->j:Z

    .line 9
    iput-boolean p3, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->n:Z

    .line 10
    new-instance p2, Llb/e;

    invoke-direct {p2, p0}, Llb/e;-><init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->r:Llb/e;

    .line 11
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->s:Ljava/util/List;

    .line 12
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->t:Ljava/util/List;

    .line 13
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->u:Ljava/util/List;

    const-string p2, ""

    .line 14
    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->v:Ljava/lang/String;

    .line 15
    new-instance p2, Lcom/guochao/faceshow/views/wheelview/WheelView$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/views/wheelview/WheelView$a;-><init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->w:Lcom/guochao/faceshow/views/wheelview/a$c;

    .line 16
    new-instance p2, Lcom/guochao/faceshow/views/wheelview/WheelView$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/views/wheelview/WheelView$b;-><init>(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    iput-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->x:Landroid/database/DataSetObserver;

    .line 17
    iput p3, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->y:I

    .line 18
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->q(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xffffff
        0xffffff
        0xffffff
    .end array-data
.end method

.method private A()Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemsRange()Llb/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget-object v4, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->r:Llb/e;

    iget v5, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    invoke-virtual {v4, v1, v5, v0}, Llb/e;->f(Landroid/widget/LinearLayout;ILlb/a;)I

    move-result v1

    .line 4
    iget v4, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    if-eq v4, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 5
    :goto_0
    iput v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    goto :goto_1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->j()V

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_4

    .line 7
    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    invoke-virtual {v0}, Llb/a;->c()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Llb/a;->b()I

    move-result v4

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 8
    :cond_4
    :goto_3
    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    invoke-virtual {v0}, Llb/a;->c()I

    move-result v5

    if-le v1, v5, :cond_6

    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    invoke-virtual {v0}, Llb/a;->d()I

    move-result v5

    if-gt v1, v5, :cond_6

    .line 9
    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    sub-int/2addr v1, v3

    :goto_4
    invoke-virtual {v0}, Llb/a;->c()I

    move-result v5

    if-lt v1, v5, :cond_7

    .line 10
    invoke-direct {p0, v1, v3}, Lcom/guochao/faceshow/views/wheelview/WheelView;->g(IZ)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 11
    :cond_5
    iput v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 12
    :cond_6
    invoke-virtual {v0}, Llb/a;->c()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    .line 13
    :cond_7
    :goto_5
    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    :goto_6
    invoke-virtual {v0}, Llb/a;->b()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 15
    iget v5, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5, v2}, Lcom/guochao/faceshow/views/wheelview/WheelView;->g(IZ)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 16
    :cond_9
    iput v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    return v4
.end method

.method private D()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->i(II)I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->v(II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/wheelview/WheelView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->l:Z

    return p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/wheelview/WheelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/wheelview/WheelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->k(I)V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/wheelview/WheelView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    return p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/views/wheelview/WheelView;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    return p1
.end method

.method static synthetic f(Lcom/guochao/faceshow/views/wheelview/WheelView;)Lcom/guochao/faceshow/views/wheelview/a;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->k:Lcom/guochao/faceshow/views/wheelview/a;

    return-object p0
.end method

.method private g(IZ)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->p(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private getItemHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->d:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->d:I

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->c:I

    div-int/2addr v0, v1

    return v0
.end method

.method private getItemsRange()Llb/a;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    const/4 v1, 0x1

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result v2

    mul-int v2, v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 4
    :cond_1
    iget v2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    if-eqz v2, :cond_3

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-double v3, v1

    int-to-double v1, v2

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    add-double/2addr v3, v1

    double-to-int v1, v3

    .line 7
    :cond_3
    new-instance v2, Llb/a;

    invoke-direct {v2, v0, v1}, Llb/a;-><init>(II)V

    return-object v2
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->r:Llb/e;

    iget v2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    new-instance v3, Llb/a;

    invoke-direct {v3}, Llb/a;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Llb/e;->f(Landroid/widget/LinearLayout;ILlb/a;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->j()V

    .line 4
    :goto_0
    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->c:I

    div-int/lit8 v0, v0, 0x2

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    add-int/2addr v1, v0

    :goto_1
    iget v2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    const/4 v2, 0x1

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/guochao/faceshow/views/wheelview/WheelView;->g(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iput v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private i(II)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->r()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 4
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x14

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 8
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    add-int/lit8 v0, p1, -0x14

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    return p1
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method private k(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result p1

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    div-int/2addr v0, p1

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    sub-int/2addr v1, v0

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    invoke-interface {v2}, Lmb/c;->b()I

    move-result v2

    .line 6
    iget v3, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    rem-int/2addr v3, p1

    .line 7
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, p1, 0x2

    const/4 v6, 0x0

    if-gt v4, v5, :cond_0

    const/4 v3, 0x0

    .line 8
    :cond_0
    iget-boolean v4, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->n:Z

    if-eqz v4, :cond_4

    if-lez v2, :cond_4

    if-lez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    if-gez v1, :cond_3

    add-int/2addr v1, v2

    goto :goto_0

    .line 9
    :cond_3
    rem-int/2addr v1, v2

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    .line 10
    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    if-lt v1, v2, :cond_6

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_6
    if-lez v1, :cond_7

    if-lez v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 12
    :cond_8
    :goto_1
    iget v2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    .line 13
    iget v3, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    if-eq v1, v3, :cond_9

    .line 14
    invoke-virtual {p0, v1, v6}, Lcom/guochao/faceshow/views/wheelview/WheelView;->C(IZ)V

    goto :goto_2

    .line 15
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    mul-int v0, v0, p1

    sub-int/2addr v2, v0

    .line 16
    iput v2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-le v2, p1, :cond_a

    .line 18
    iget p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    :cond_a
    return-void
.end method

.method private l(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->y:I

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0603d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060336

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private m(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 3
    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private n(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private o(Landroid/widget/LinearLayout;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->d:I

    .line 3
    :cond_0
    iget p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->d:I

    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->c:I

    mul-int v1, v1, p1

    mul-int/lit8 p1, p1, 0x0

    div-int/lit8 p1, p1, 0x32

    sub-int/2addr v1, p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private p(I)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lmb/c;->b()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    invoke-interface {v0}, Lmb/c;->b()I

    move-result v0

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->u(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->r:Llb/e;

    invoke-virtual {v0}, Llb/e;->d()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0, v1}, Lmb/c;->c(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 5
    :cond_2
    rem-int/2addr p1, v0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    iget-object v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->r:Llb/e;

    invoke-virtual {v1}, Llb/e;->e()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1, v2}, Lmb/c;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private q(Landroid/content/Context;)V
    .locals 2

    new-instance p1, Lcom/guochao/faceshow/views/wheelview/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->w:Lcom/guochao/faceshow/views/wheelview/a$c;

    invoke-direct {p1, v0, v1}, Lcom/guochao/faceshow/views/wheelview/a;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/wheelview/a$c;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->k:Lcom/guochao/faceshow/views/wheelview/a;

    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->e:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->h:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->a:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->h:Landroid/graphics/drawable/GradientDrawable;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->a:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->i:Landroid/graphics/drawable/GradientDrawable;

    .line 7
    :cond_2
    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->f:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private u(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmb/c;->b()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->n:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    .line 2
    invoke-interface {v0}, Lmb/c;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private v(II)V
    .locals 2

    add-int/lit8 p1, p1, -0x14

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method


# virtual methods
.method public B(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result v0

    mul-int p1, p1, v0

    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    sub-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->k:Lcom/guochao/faceshow/views/wheelview/a;

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/views/wheelview/a;->l(II)V

    return-void
.end method

.method public C(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmb/c;->b()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    invoke-interface {v0}, Lmb/c;->b()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 3
    :cond_1
    iget-boolean v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->n:Z

    if-eqz v1, :cond_7

    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 4
    :cond_2
    rem-int/2addr p1, v0

    .line 5
    :cond_3
    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    if-eq p1, v1, :cond_7

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    sub-int p2, p1, v1

    .line 6
    iget-boolean v3, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->n:Z

    if-eqz v3, :cond_5

    .line 7
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    .line 8
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_5

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    neg-int p1, v0

    move p2, p1

    .line 9
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v2}, Lcom/guochao/faceshow/views/wheelview/WheelView;->B(II)V

    goto :goto_2

    .line 10
    :cond_6
    iput v2, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    .line 11
    iput p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    .line 12
    invoke-virtual {p0, v1, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->w(II)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method

.method public addChangingListener(Llb/b;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClickingListener(Llb/c;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Llb/d;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    return v0
.end method

.method public getViewAdapter()Lmb/c;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->c:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmb/c;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->D()V

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->m(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->l(Landroid/graphics/Canvas;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->n(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    invoke-direct {p0, p4, p5}, Lcom/guochao/faceshow/views/wheelview/WheelView;->v(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->h()V

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->i(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->o(Landroid/widget/LinearLayout;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 8
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    .line 9
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getViewAdapter()Lmb/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->l:Z

    if-nez v0, :cond_4

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 8
    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->u(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->b:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->x(I)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 12
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->k:Lcom/guochao/faceshow/views/wheelview/a;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/wheelview/a;->k(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method public removeChangingListener(Llb/b;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->s:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeClickingListener(Llb/c;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Llb/d;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public s(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->r:Llb/e;

    invoke-virtual {p1}, Llb/e;->b()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->m:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->o:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->r:Llb/e;

    iget v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->p:I

    new-instance v2, Llb/a;

    invoke-direct {v2}, Llb/a;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Llb/e;->f(Landroid/widget/LinearLayout;ILlb/a;)I

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->C(IZ)V

    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->n:Z

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->s(Z)V

    return-void
.end method

.method public setDrawShadows(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->j:Z

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->k:Lcom/guochao/faceshow/views/wheelview/a;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/wheelview/a;->m(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->y:I

    return-void
.end method

.method public setViewAdapter(Lmb/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->x:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lmb/c;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->q:Lmb/c;

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->x:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lmb/c;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->s(Z)V

    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->c:I

    return-void
.end method

.method public setWheelBackground(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->f:I

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setWheelForeground(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->g:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->g:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->n:Z

    return v0
.end method

.method protected w(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llb/b;

    .line 2
    invoke-interface {v1, p0, p1, p2}, Llb/b;->a(Lcom/guochao/faceshow/views/wheelview/WheelView;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected x(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llb/c;

    .line 2
    invoke-interface {v1, p0, p1}, Llb/c;->a(Lcom/guochao/faceshow/views/wheelview/WheelView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llb/d;

    .line 2
    invoke-interface {v1, p0}, Llb/d;->a(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/wheelview/WheelView;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llb/d;

    .line 2
    invoke-interface {v1, p0}, Llb/d;->b(Lcom/guochao/faceshow/views/wheelview/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method
