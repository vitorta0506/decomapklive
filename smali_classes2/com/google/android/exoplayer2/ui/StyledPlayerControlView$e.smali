.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[F

.field private c:I

.field final synthetic d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->a:[Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->b:[F

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->c(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic c(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->c:I

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->b:[F

    aget p1, v0, p1

    invoke-static {p2, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->H(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;F)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->I(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->c:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->a:[Ljava/lang/String;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->a:Landroid/widget/TextView;

    aget-object v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->c:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 7
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->b:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/google/android/exoplayer2/ui/g;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplayer2/ui/g;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_sub_settings_list_item:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public f(F)V
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 1
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->b:[F

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 2
    aget v3, v3, v0

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v4, v3, v2

    if-gez v4, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iput v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->c:I

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->e(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;

    move-result-object p1

    return-object p1
.end method
