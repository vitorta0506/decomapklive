.class final Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/l2$d;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;
.implements Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/i3$b;

.field private b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/exoplayer2/i3$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/i3$b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->a:Lcom/google/android/exoplayer2/i3$b;

    return-void
.end method


# virtual methods
.method public synthetic A(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->p(Lcom/google/android/exoplayer2/l2$d;I)V

    return-void
.end method

.method public synthetic B(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->i(Lcom/google/android/exoplayer2/l2$d;Z)V

    return-void
.end method

.method public synthetic C(Lcom/google/android/exoplayer2/l2$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->a(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/l2$b;)V

    return-void
.end method

.method public D(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/StyledPlayerView$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->h(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/StyledPlayerView$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView$c;->a(Z)V

    :cond_0
    return-void
.end method

.method public synthetic F(Lcom/google/android/exoplayer2/i3;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n2;->B(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/i3;I)V

    return-void
.end method

.method public G(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->m(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->n(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public synthetic I(Lcom/google/android/exoplayer2/o;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->d(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/o;)V

    return-void
.end method

.method public synthetic K(Lcom/google/android/exoplayer2/x1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->k(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/x1;)V

    return-void
.end method

.method public synthetic L(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->y(Lcom/google/android/exoplayer2/l2$d;Z)V

    return-void
.end method

.method public synthetic N(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n2;->e(Lcom/google/android/exoplayer2/l2$d;IZ)V

    return-void
.end method

.method public O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public synthetic R(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n2;->A(Lcom/google/android/exoplayer2/l2$d;II)V

    return-void
.end method

.method public synthetic S(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->r(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic T(Lh3/z;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->C(Lcom/google/android/exoplayer2/l2$d;Lh3/z;)V

    return-void
.end method

.method public synthetic U(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->t(Lcom/google/android/exoplayer2/l2$d;I)V

    return-void
.end method

.method public W(Lcom/google/android/exoplayer2/n3;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/l2;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/l2;

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->t()Lcom/google/android/exoplayer2/i3;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/i3;->u()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->m()Lcom/google/android/exoplayer2/n3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/n3;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->E()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->a:Lcom/google/android/exoplayer2/i3$b;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/i3;->k(ILcom/google/android/exoplayer2/i3$b;Z)Lcom/google/android/exoplayer2/i3$b;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/i3$b;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/i3;->f(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->a:Lcom/google/android/exoplayer2/i3$b;

    .line 10
    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/i3;->j(ILcom/google/android/exoplayer2/i3$b;)Lcom/google/android/exoplayer2/i3$b;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/i3$b;->c:I

    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->M()I

    move-result p1

    if-ne p1, v0, :cond_2

    return-void

    .line 12
    :cond_2
    iput-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->b:Ljava/lang/Object;

    .line 13
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->k(Lcom/google/android/exoplayer2/ui/StyledPlayerView;Z)V

    return-void
.end method

.method public synthetic X(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->g(Lcom/google/android/exoplayer2/l2$d;Z)V

    return-void
.end method

.method public synthetic Y()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/n2;->x(Lcom/google/android/exoplayer2/l2$d;)V

    return-void
.end method

.method public synthetic Z(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->q(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public synthetic a(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->z(Lcom/google/android/exoplayer2/l2$d;Z)V

    return-void
.end method

.method public synthetic f0(Lcom/google/android/exoplayer2/l2;Lcom/google/android/exoplayer2/l2$c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n2;->f(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/l2;Lcom/google/android/exoplayer2/l2$c;)V

    return-void
.end method

.method public synthetic g(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->l(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public synthetic g0(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n2;->s(Lcom/google/android/exoplayer2/l2$d;ZI)V

    return-void
.end method

.method public synthetic h0(Lcom/google/android/exoplayer2/s1;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n2;->j(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/s1;I)V

    return-void
.end method

.method public j0(ZI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->l(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->n(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public k(Lx2/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->a(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/SubtitleView;

    move-result-object v0

    iget-object p1, p1, Lx2/e;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/SubtitleView;->setCues(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public synthetic l(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->b(Lcom/google/android/exoplayer2/l2$d;Ljava/util/List;)V

    return-void
.end method

.method public synthetic m0(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->h(Lcom/google/android/exoplayer2/l2$d;Z)V

    return-void
.end method

.method public n(Lk3/y;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->b(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    check-cast p1, Landroid/view/TextureView;

    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->c(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->d(Landroid/view/TextureView;I)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->w(Lcom/google/android/exoplayer2/l2$d;I)V

    return-void
.end method

.method public synthetic q(Lcom/google/android/exoplayer2/k2;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->n(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/k2;)V

    return-void
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/StyledPlayerView$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Lcom/google/android/exoplayer2/ui/StyledPlayerView$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView$b;->a(I)V

    :cond_0
    return-void
.end method

.method public z(Lcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->o(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->p(Lcom/google/android/exoplayer2/ui/StyledPlayerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerView$a;->c:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->w()V

    :cond_0
    return-void
.end method
