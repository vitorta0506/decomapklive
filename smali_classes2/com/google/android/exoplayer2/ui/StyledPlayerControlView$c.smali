.class final Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/l2$d;
.implements Lcom/google/android/exoplayer2/ui/c0$a;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

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

.method public D(Lcom/google/android/exoplayer2/ui/c0;JZ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z

    if-nez p4, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/l2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/l2;

    move-result-object p4

    invoke-static {p1, p4, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/l2;J)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/x;->W()V

    return-void
.end method

.method public E(Lcom/google/android/exoplayer2/ui/c0;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/l0;->b0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/x;->V()V

    return-void
.end method

.method public synthetic F(Lcom/google/android/exoplayer2/i3;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n2;->B(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/i3;I)V

    return-void
.end method

.method public synthetic G(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->o(Lcom/google/android/exoplayer2/l2$d;I)V

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

.method public synthetic O()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/n2;->v(Lcom/google/android/exoplayer2/l2$d;)V

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

.method public synthetic W(Lcom/google/android/exoplayer2/n3;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->D(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/n3;)V

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

.method public f0(Lcom/google/android/exoplayer2/l2;Lcom/google/android/exoplayer2/l2$c;)V
    .locals 1

    const/4 p1, 0x2

    new-array v0, p1, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/l2$c;->b([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/l2$c;->b([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_1
    const/16 v0, 0x8

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/l2$c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->N(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_2
    const/16 v0, 0x9

    .line 7
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/l2$c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_3
    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/l2$c;->b([I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_4
    new-array v0, p1, [I

    .line 11
    fill-array-data v0, :array_3

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/l2$c;->b([I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_5
    const/16 v0, 0xc

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/l2$c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    .line 15
    :cond_6
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/l2$c;->a(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x5
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x9
        0xb
        0x0
        0x10
        0x11
        0xd
    .end array-data

    :array_3
    .array-data 4
        0xb
        0x0
    .end array-data
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

.method public synthetic j0(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/n2;->m(Lcom/google/android/exoplayer2/l2$d;ZI)V

    return-void
.end method

.method public synthetic k(Lx2/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->c(Lcom/google/android/exoplayer2/l2$d;Lx2/e;)V

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

.method public synthetic n(Lk3/y;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->E(Lcom/google/android/exoplayer2/l2$d;Lk3/y;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/l2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/x;->W()V

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->w()V

    goto/16 :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->j()V

    goto/16 :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_3

    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->getPlaybackState()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_b

    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->Q()V

    goto/16 :goto_0

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->R()V

    goto/16 :goto_0

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/l2;)V

    goto/16 :goto_0

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 15
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->getRepeatMode()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/util/d0;->a(II)I

    move-result p1

    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/l2;->setRepeatMode(I)V

    goto/16 :goto_0

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne v1, p1, :cond_7

    .line 18
    invoke-interface {v0}, Lcom/google/android/exoplayer2/l2;->O()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/l2;->B(Z)V

    goto :goto_0

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_8

    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/x;->V()V

    .line 21
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 22
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->z(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 23
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/x;->V()V

    .line 24
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->A(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 25
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_a

    .line 26
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/x;->V()V

    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->C(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 28
    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->D(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne v0, p1, :cond_b

    .line 29
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/x;->V()V

    .line 30
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->E(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/x;->W()V

    :cond_0
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

.method public r(Lcom/google/android/exoplayer2/ui/c0;J)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/exoplayer2/util/l0;->b0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic z(Lcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/n2;->u(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;I)V

    return-void
.end method
