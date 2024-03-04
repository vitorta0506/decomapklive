.class abstract Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;Lcom/google/android/exoplayer2/l2;Lv2/o0;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->c(Lcom/google/android/exoplayer2/l2;Lv2/o0;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Lcom/google/android/exoplayer2/l2;Lv2/o0;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->v()Lh3/z;

    move-result-object p4

    .line 2
    invoke-virtual {p4}, Lh3/z;->a()Lh3/z$a;

    move-result-object p4

    new-instance v0, Lh3/x;

    iget v1, p3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->b:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lh3/x;-><init>(Lv2/o0;Ljava/util/List;)V

    .line 4
    invoke-virtual {p4, v0}, Lh3/z$a;->G(Lh3/x;)Lh3/z$a;

    move-result-object p2

    iget-object p4, p3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a:Lcom/google/android/exoplayer2/n3$a;

    .line 5
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/n3$a;->d()I

    move-result p4

    const/4 v0, 0x0

    invoke-virtual {p2, p4, v0}, Lh3/z$a;->J(IZ)Lh3/z$a;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lh3/z$a;->A()Lh3/z;

    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/l2;->i(Lh3/z;)V

    .line 8
    iget-object p1, p3, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->c:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->g(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->I(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->a:Ljava/util/List;

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->a:Ljava/util/List;

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    .line 4
    iget-object v1, p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a:Lcom/google/android/exoplayer2/n3$a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n3$a;->b()Lv2/o0;

    move-result-object v1

    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->v()Lh3/z;

    move-result-object v3

    .line 6
    iget-object v3, v3, Lh3/z;->y:Lcom/google/common/collect/ImmutableMap;

    .line 7
    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->a:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v3, p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;->b:Landroid/view/View;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/google/android/exoplayer2/ui/j;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/google/android/exoplayer2/ui/j;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;Lcom/google/android/exoplayer2/l2;Lv2/o0;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method protected abstract e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;)V
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->b:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

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

.method protected abstract g(Ljava/lang/String;)V
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->f(Landroid/view/ViewGroup;I)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;

    move-result-object p1

    return-object p1
.end method
