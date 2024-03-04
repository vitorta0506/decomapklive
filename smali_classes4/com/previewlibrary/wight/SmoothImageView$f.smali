.class Lcom/previewlibrary/wight/SmoothImageView$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/previewlibrary/wight/SmoothImageView;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/previewlibrary/wight/SmoothImageView;


# direct methods
.method constructor <init>(Lcom/previewlibrary/wight/SmoothImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$f;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$f;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {p1}, Lcom/previewlibrary/wight/SmoothImageView;->e(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$f;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {p1}, Lcom/previewlibrary/wight/SmoothImageView;->e(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$j;

    move-result-object p1

    iget-object v0, p0, Lcom/previewlibrary/wight/SmoothImageView$f;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {v0}, Lcom/previewlibrary/wight/SmoothImageView;->f(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$Status;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/previewlibrary/wight/SmoothImageView$j;->a(Lcom/previewlibrary/wight/SmoothImageView$Status;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$f;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-static {p1}, Lcom/previewlibrary/wight/SmoothImageView;->f(Lcom/previewlibrary/wight/SmoothImageView;)Lcom/previewlibrary/wight/SmoothImageView$Status;

    move-result-object p1

    sget-object v0, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_IN:Lcom/previewlibrary/wight/SmoothImageView$Status;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$f;->a:Lcom/previewlibrary/wight/SmoothImageView;

    sget-object v0, Lcom/previewlibrary/wight/SmoothImageView$Status;->STATE_NORMAL:Lcom/previewlibrary/wight/SmoothImageView$Status;

    invoke-static {p1, v0}, Lcom/previewlibrary/wight/SmoothImageView;->g(Lcom/previewlibrary/wight/SmoothImageView;Lcom/previewlibrary/wight/SmoothImageView$Status;)Lcom/previewlibrary/wight/SmoothImageView$Status;

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$f;->a:Lcom/previewlibrary/wight/SmoothImageView;

    sget v0, Lcom/previewlibrary/R$id;->item_image_key:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$f;->a:Lcom/previewlibrary/wight/SmoothImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$f;->a:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-virtual {p1, v1}, Luk/co/senab2/photoview2/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void
.end method
