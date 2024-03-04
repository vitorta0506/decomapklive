.class public Lcom/guochao/faceshow/views/c;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/c$f;,
        Lcom/guochao/faceshow/views/c$e;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/guochao/faceshow/views/wheelview/WheelView;

.field private c:Lcom/guochao/faceshow/views/wheelview/WheelView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/guochao/faceshow/views/c$e;

.field private i:Lcom/guochao/faceshow/views/c$e;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/guochao/faceshow/views/c$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->g:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->k:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->l:Ljava/lang/String;

    const/16 v0, 0x18

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/views/c;->m:I

    const/16 v0, 0xe

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/views/c;->n:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/c;->o:Z

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/views/c;->a:Landroid/content/Context;

    const v0, 0x7f0d0135

    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0e7f

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/views/wheelview/WheelView;

    iput-object v1, p0, Lcom/guochao/faceshow/views/c;->b:Lcom/guochao/faceshow/views/wheelview/WheelView;

    const v1, 0x7f0a0e7e

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/views/wheelview/WheelView;

    iput-object v1, p0, Lcom/guochao/faceshow/views/c;->c:Lcom/guochao/faceshow/views/wheelview/WheelView;

    const v1, 0x7f0a0191

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/guochao/faceshow/views/c;->d:Landroid/widget/TextView;

    const v1, 0x7f0a0190

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/guochao/faceshow/views/c;->e:Landroid/widget/TextView;

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 19
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x50000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/c;->o:Z

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->o()V

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->q()V

    .line 26
    new-instance v0, Lcom/guochao/faceshow/views/c$e;

    iget-object v4, p0, Lcom/guochao/faceshow/views/c;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/guochao/faceshow/views/c;->k:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/views/c;->u(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lcom/guochao/faceshow/views/c;->m:I

    iget v7, p0, Lcom/guochao/faceshow/views/c;->n:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/views/c$e;-><init>(Lcom/guochao/faceshow/views/c;Landroid/content/Context;Ljava/util/ArrayList;III)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->h:Lcom/guochao/faceshow/views/c$e;

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->b:Lcom/guochao/faceshow/views/wheelview/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setVisibleItems(I)V

    .line 28
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->b:Lcom/guochao/faceshow/views/wheelview/WheelView;

    iget-object v2, p0, Lcom/guochao/faceshow/views/c;->h:Lcom/guochao/faceshow/views/c$e;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setViewAdapter(Lmb/c;)V

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->b:Lcom/guochao/faceshow/views/wheelview/WheelView;

    iget-object v2, p0, Lcom/guochao/faceshow/views/c;->k:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/views/c;->u(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/views/c;->p(I)V

    .line 31
    new-instance v0, Lcom/guochao/faceshow/views/c$e;

    iget-object v5, p0, Lcom/guochao/faceshow/views/c;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/guochao/faceshow/views/c;->l:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/views/c;->s(Ljava/lang/String;)I

    move-result v6

    iget v7, p0, Lcom/guochao/faceshow/views/c;->m:I

    iget v8, p0, Lcom/guochao/faceshow/views/c;->n:I

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/guochao/faceshow/views/c$e;-><init>(Lcom/guochao/faceshow/views/c;Landroid/content/Context;Ljava/util/ArrayList;III)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->i:Lcom/guochao/faceshow/views/c$e;

    .line 32
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->c:Lcom/guochao/faceshow/views/wheelview/WheelView;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setVisibleItems(I)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->c:Lcom/guochao/faceshow/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/guochao/faceshow/views/c;->i:Lcom/guochao/faceshow/views/c$e;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setViewAdapter(Lmb/c;)V

    .line 34
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->c:Lcom/guochao/faceshow/views/wheelview/WheelView;

    iget-object v1, p0, Lcom/guochao/faceshow/views/c;->l:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/views/c;->s(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->setCurrentItem(I)V

    .line 35
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->b:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v1, Lcom/guochao/faceshow/views/c$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/views/c$a;-><init>(Lcom/guochao/faceshow/views/c;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/wheelview/WheelView;->addChangingListener(Llb/b;)V

    .line 36
    iget-object p1, p0, Lcom/guochao/faceshow/views/c;->b:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v0, Lcom/guochao/faceshow/views/c$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/c$b;-><init>(Lcom/guochao/faceshow/views/c;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->addScrollingListener(Llb/d;)V

    .line 37
    iget-object p1, p0, Lcom/guochao/faceshow/views/c;->c:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v0, Lcom/guochao/faceshow/views/c$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/c$c;-><init>(Lcom/guochao/faceshow/views/c;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->addChangingListener(Llb/b;)V

    .line 38
    iget-object p1, p0, Lcom/guochao/faceshow/views/c;->c:Lcom/guochao/faceshow/views/wheelview/WheelView;

    new-instance v0, Lcom/guochao/faceshow/views/c$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/c$d;-><init>(Lcom/guochao/faceshow/views/c;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/views/wheelview/WheelView;->addScrollingListener(Llb/d;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/c$e;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/c;->h:Lcom/guochao/faceshow/views/c$e;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/c;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/c;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/c;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/guochao/faceshow/views/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/c;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/c$e;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/c;->i:Lcom/guochao/faceshow/views/c$e;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/views/c;Lcom/guochao/faceshow/views/c$e;)Lcom/guochao/faceshow/views/c$e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/c;->i:Lcom/guochao/faceshow/views/c$e;

    return-object p1
.end method

.method static synthetic h(Lcom/guochao/faceshow/views/c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/c;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic i(Lcom/guochao/faceshow/views/c;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/c;->m:I

    return p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/views/c;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/c;->n:I

    return p0
.end method

.method static synthetic k(Lcom/guochao/faceshow/views/c;)Lcom/guochao/faceshow/views/wheelview/WheelView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/c;->c:Lcom/guochao/faceshow/views/wheelview/WheelView;

    return-object p0
.end method

.method static synthetic l(Lcom/guochao/faceshow/views/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/c;->q:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/views/c;->r(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1"

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->l:Ljava/lang/String;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/c;->r:Lcom/guochao/faceshow/views/c$f;

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/views/c;->q:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/views/c$f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public p(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/c;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    if-gt v1, p1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/views/c;->g:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/16 v1, 0x79e

    if-le v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/c;->f:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->p:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->q:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/c;->o:Z

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/views/c;->k:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/guochao/faceshow/views/c;->l:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->n()Ljava/lang/String;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/c;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "12"

    .line 8
    iput-object p1, p0, Lcom/guochao/faceshow/views/c;->j:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public s(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/views/c;->j:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setBirthdayListener(Lcom/guochao/faceshow/views/c$f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/c;->r:Lcom/guochao/faceshow/views/c$f;

    return-void
.end method

.method public t(Ljava/lang/String;Lcom/guochao/faceshow/views/c$e;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lmb/b;->f()Ljava/util/ArrayList;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget v3, p0, Lcom/guochao/faceshow/views/c;->m:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 7
    :cond_0
    iget v3, p0, Lcom/guochao/faceshow/views/c;->n:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public u(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "12"

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->j:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/c;->j:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/c;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x79e

    if-le v0, v2, :cond_2

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return v1
.end method
