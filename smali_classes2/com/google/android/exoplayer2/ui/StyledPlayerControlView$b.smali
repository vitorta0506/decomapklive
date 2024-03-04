.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;
.super Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->k(Landroid/view/View;)V

    return-void
.end method

.method private i(Lh3/z;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    iget-object v2, v2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a:Lcom/google/android/exoplayer2/n3$a;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/n3$a;->b()Lv2/o0;

    move-result-object v2

    .line 3
    iget-object v3, p1, Lh3/z;->y:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic k(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/l2;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/l2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->v()Lh3/z;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/l0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/l2;

    .line 5
    invoke-virtual {p1}, Lh3/z;->a()Lh3/z$a;

    move-result-object p1

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1}, Lh3/z$a;->B(I)Lh3/z$a;

    move-result-object p1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v1, v2}, Lh3/z$a;->J(IZ)Lh3/z$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lh3/z$a;->A()Lh3/z;

    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/l2;->i(Lh3/z;)V

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 11
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->c(ILjava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->I(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->a:Landroid/widget/TextView;

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/l2;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->v()Lh3/z;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->i(Lh3/z;)Z

    move-result v0

    .line 4
    iget-object v1, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/google/android/exoplayer2/ui/f;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ui/f;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->c(ILjava/lang/String;)V

    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->a:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/l2;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->v()Lh3/z;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_none:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->c(ILjava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->i(Lh3/z;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 9
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_auto:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->c(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    move-result-object p1

    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->c(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
