.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:I

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->d:I

    return p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->b:Z

    return p0
.end method


# virtual methods
.method public c(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "font/DIN_Alternate_Bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->d:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->a:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->b:Z

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->e:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;->a(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, "0"

    .line 3
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->a:Z

    const v1, 0x7f06009c

    if-nez v0, :cond_2

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060099

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0263

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;Landroid/view/View;)V

    .line 2
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/PollNumberLayout$MyAdapter;->c(Landroid/widget/TextView;I)V

    return-object p2
.end method
