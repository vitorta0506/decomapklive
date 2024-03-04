.class Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/l2$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->e(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public F(Lcom/google/android/exoplayer2/i3;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->c:Lcom/google/android/exoplayer2/q;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/l2;->getDuration()J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mTextViewDuration:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

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

.method public m0(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mImageViewPlayBtn:Landroid/widget/ImageView;

    const v0, 0x7f0f0298

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mImageViewPlayCenter:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mImageViewPlayBtn:Landroid/widget/ImageView;

    const v0, 0x7f0f02cb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a$a;->a:Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;->f(Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity$a;)Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;

    move-result-object p1

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackVideoPreviewActivity;->mImageViewPlayCenter:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic n(Lk3/y;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/n2;->E(Lcom/google/android/exoplayer2/l2$d;Lk3/y;)V

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

.method public synthetic z(Lcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/n2;->u(Lcom/google/android/exoplayer2/l2$d;Lcom/google/android/exoplayer2/l2$e;Lcom/google/android/exoplayer2/l2$e;I)V

    return-void
.end method
