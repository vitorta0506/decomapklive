.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/ImageView;

.field final synthetic d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget p1, Lcom/google/android/exoplayer2/util/l0;->a:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    :cond_0
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_main_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:Landroid/widget/TextView;

    .line 6
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_sub_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->b:Landroid/widget/TextView;

    .line 7
    sget p1, Lcom/google/android/exoplayer2/ui/R$id;->exo_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->c:Landroid/widget/ImageView;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/ui/h;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ui/h;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->g(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;->d:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->G(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;I)V

    return-void
.end method
