.class public Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TargetViewHolder"
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/ImageView;

.field private e:I

.field final synthetic f:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->f:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->a:Landroid/view/ViewGroup;

    .line 4
    sget p1, Lcom/linecorp/linesdk/R$id;->textView:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->b:Landroid/widget/TextView;

    .line 5
    sget p1, Lcom/linecorp/linesdk/R$id;->imageView:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->d:Landroid/widget/ImageView;

    .line 6
    sget p1, Lcom/linecorp/linesdk/R$id;->checkBox:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->c:Landroid/widget/CheckBox;

    .line 7
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/linecorp/linesdk/R$color;->text_highlight:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->e:I

    return-void
.end method

.method public static synthetic c(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->f(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;Landroid/view/View;)V

    return-void
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 4
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->e:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v0
.end method

.method private synthetic f(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->c()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    .line 2
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->f(Ljava/lang/Boolean;)V

    .line 4
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    invoke-interface {p2, p1, p3}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;->a(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Z)V

    return-void
.end method


# virtual methods
.method public d(Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->a:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->c()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->c()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->f:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;

    invoke-static {v2}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;->a(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->a:Landroid/view/ViewGroup;

    new-instance v1, Luc/b;

    invoke-direct {v1, p0, p1, p2}, Luc/b;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;Lcom/linecorp/linesdk/dialog/internal/TargetUser;Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->e()Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    move-result-object p2

    sget-object v0, Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;->FRIEND:Lcom/linecorp/linesdk/dialog/internal/TargetUser$Type;

    if-ne p2, v0, :cond_0

    sget p2, Lcom/linecorp/linesdk/R$drawable;->friend_thumbnail:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/linecorp/linesdk/R$drawable;->group_thumbnail:I

    .line 6
    :goto_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {p1}, Lcom/linecorp/linesdk/dialog/internal/TargetUser;->b()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->j(Landroid/net/Uri;)Lcom/squareup/picasso/t;

    move-result-object p1

    .line 7
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/t;->i(I)Lcom/squareup/picasso/t;

    move-result-object p1

    iget-object p2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$TargetViewHolder;->d:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p1, p2}, Lcom/squareup/picasso/t;->f(Landroid/widget/ImageView;)V

    return-void
.end method
