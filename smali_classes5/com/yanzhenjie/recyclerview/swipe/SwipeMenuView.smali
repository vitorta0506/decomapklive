.class public Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field private b:Lbg/g;

.field private c:Lbg/f;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private b(Lbg/e;)Landroid/widget/ImageView;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Lbg/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private d(Lbg/e;)Landroid/widget/TextView;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Lbg/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 4
    invoke-virtual {p1}, Lbg/e;->f()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x2

    int-to-float v1, v1

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lbg/e;->h()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lbg/e;->e()I

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 10
    :cond_2
    invoke-virtual {p1}, Lbg/e;->g()Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method

.method public c(Lbg/c;Lbg/g;Lbg/f;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->b:Lbg/g;

    .line 3
    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->c:Lbg/f;

    .line 4
    iput p4, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->d:I

    .line 5
    invoke-virtual {p1}, Lbg/c;->a()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbg/e;

    .line 8
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p3}, Lbg/e;->j()I

    move-result v0

    invoke-virtual {p3}, Lbg/e;->b()I

    move-result v1

    invoke-direct {p4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    invoke-virtual {p3}, Lbg/e;->i()I

    move-result v0

    int-to-float v0, v0

    iput v0, p4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 10
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v1, 0x11

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-virtual {p3}, Lbg/e;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {v0, p4}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 18
    new-instance p4, Lcom/yanzhenjie/recyclerview/swipe/c;

    iget v1, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->d:I

    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->b:Lbg/g;

    invoke-direct {p4, v1, p2, v2, v0}, Lcom/yanzhenjie/recyclerview/swipe/c;-><init>(IILbg/g;Landroid/view/View;)V

    .line 19
    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p3}, Lbg/e;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    invoke-direct {p0, p3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->b(Lbg/e;)Landroid/widget/ImageView;

    move-result-object v1

    .line 22
    iput-object v1, p4, Lcom/yanzhenjie/recyclerview/swipe/c;->g:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 24
    :cond_0
    invoke-virtual {p3}, Lbg/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    invoke-direct {p0, p3}, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->d(Lbg/e;)Landroid/widget/TextView;

    move-result-object p3

    .line 26
    iput-object p3, p4, Lcom/yanzhenjie/recyclerview/swipe/c;->f:Landroid/widget/TextView;

    .line 27
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->c:Lbg/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->b:Lbg/g;

    invoke-interface {v0}, Lbg/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yanzhenjie/recyclerview/swipe/c;

    .line 3
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p1, Lcom/yanzhenjie/recyclerview/swipe/c;->e:I

    .line 4
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/SwipeMenuView;->c:Lbg/f;

    invoke-interface {v0, p1}, Lbg/f;->a(Lcom/yanzhenjie/recyclerview/swipe/c;)V

    :cond_0
    return-void
.end method
