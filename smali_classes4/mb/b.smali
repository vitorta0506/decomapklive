.class public abstract Lmb/b;
.super Lmb/a;
.source "SourceFile"


# static fields
.field private static k:I = 0x18

.field private static l:I = 0x10


# instance fields
.field private b:I

.field private c:I

.field protected d:Landroid/content/Context;

.field protected e:Landroid/view/LayoutInflater;

.field protected f:I

.field protected g:I

.field protected h:I

.field private i:I

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmb/a;-><init>()V

    const v0, -0xefeff0

    .line 2
    iput v0, p0, Lmb/b;->b:I

    const/16 v0, 0x18

    .line 3
    iput v0, p0, Lmb/b;->c:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lmb/b;->i:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmb/b;->j:Ljava/util/ArrayList;

    .line 6
    iput-object p1, p0, Lmb/b;->d:Landroid/content/Context;

    .line 7
    iput p2, p0, Lmb/b;->f:I

    .line 8
    iput p3, p0, Lmb/b;->g:I

    .line 9
    iput p4, p0, Lmb/b;->i:I

    .line 10
    sput p5, Lmb/b;->k:I

    .line 11
    sput p6, Lmb/b;->l:I

    const-string p2, "layout_inflater"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lmb/b;->e:Landroid/view/LayoutInflater;

    return-void
.end method

.method private g(Landroid/view/View;I)Landroid/widget/TextView;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/widget/TextView;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p2, "AbstractWheelAdapter"

    const-string v0, "You must supply a resource ID for a TextView"

    .line 4
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "AbstractWheelAdapter requires the resource ID to be a TextView"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private h(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lmb/b;->e:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lmb/b;->d:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_5

    .line 1
    invoke-interface {p0}, Lmb/c;->b()I

    move-result v0

    if-ge p1, v0, :cond_5

    if-nez p2, :cond_0

    .line 2
    iget p2, p0, Lmb/b;->f:I

    invoke-direct {p0, p2, p3}, Lmb/b;->h(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    :cond_0
    iget p3, p0, Lmb/b;->g:I

    invoke-direct {p0, p2, p3}, Lmb/b;->g(Landroid/view/View;I)Landroid/widget/TextView;

    move-result-object p3

    .line 4
    iget-object v0, p0, Lmb/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lmb/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_4

    .line 6
    invoke-virtual {p0, p1}, Lmb/b;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    .line 7
    :cond_2
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget v0, p0, Lmb/b;->i:I

    if-ne p1, v0, :cond_3

    .line 9
    sget p1, Lmb/b;->k:I

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 10
    :cond_3
    sget p1, Lmb/b;->l:I

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    :goto_0
    iget p1, p0, Lmb/b;->f:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 12
    invoke-virtual {p0, p3}, Lmb/b;->d(Landroid/widget/TextView;)V

    :cond_4
    return-object p2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget p1, p0, Lmb/b;->h:I

    invoke-direct {p0, p1, p2}, Lmb/b;->h(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    :cond_0
    iget p2, p0, Lmb/b;->h:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 3
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lmb/b;->d(Landroid/widget/TextView;)V

    :cond_1
    return-object p1
.end method

.method protected d(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    iget v0, p0, Lmb/b;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 3
    iget v0, p0, Lmb/b;->c:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 5
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method protected abstract e(I)Ljava/lang/CharSequence;
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmb/b;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i(I)V
    .locals 0

    iput p1, p0, Lmb/b;->g:I

    return-void
.end method
