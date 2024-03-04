.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->a1(Lcom/guochao/faceshow/aaspring/views/doodle/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Lcom/guochao/faceshow/aaspring/views/doodle/h;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/views/doodle/h;Ljava/lang/String;II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setEditMode(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/doodle/k;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/k;-><init>()V

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v3

    .line 7
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->i(F)V

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->j(Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->m()F

    move-result v3

    .line 10
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->h(F)V

    .line 11
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->g(Landroid/graphics/Rect;)V

    .line 12
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 14
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/views/doodle/k;->f(Landroid/graphics/PointF;)V

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->V(Lcom/guochao/faceshow/aaspring/views/doodle/k;)V

    .line 16
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->a:Lcom/guochao/faceshow/aaspring/views/doodle/h;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->U(Z)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->hideSoftKeyboard()V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->Z0(Z)V

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 21
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/doodle/h;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object v2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->E0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v4, v0, v1

    new-instance v5, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    invoke-direct {v5, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(I)V

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p3

    invoke-interface {p3}, Lla/a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float v7, p3

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p3

    invoke-interface {p3}, Lla/a;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float v8, p3

    move-object v1, p1

    move-object v3, p2

    move v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/aaspring/views/doodle/h;-><init>(Lla/a;Ljava/lang/String;FLla/b;IFF)V

    .line 22
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p2

    invoke-interface {p2, p1}, Lla/a;->d(Lla/c;)V

    .line 23
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->G0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/c;->p(Lla/f;)V

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->W(Ljava/lang/String;)V

    .line 25
    new-instance p2, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;

    invoke-direct {p2, p3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleColor;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->setColor(Lla/b;)V

    .line 26
    invoke-virtual {p1, p4}, Lcom/guochao/faceshow/aaspring/views/doodle/h;->S(I)V

    .line 27
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    .line 28
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->v0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lla/a;

    move-result-object p1

    invoke-interface {p1}, Lla/a;->c()V

    .line 29
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getItemCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 30
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    const p2, 0x7f080177

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    const p2, 0x7f080176

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public hide()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->setEditMode(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f01000d

    const v2, 0x7f01004d

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/DoodleEditFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->Z0(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->hideSoftKeyboard()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;)Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$f;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->ivTextRecall:Landroid/widget/ImageView;

    const v1, 0x7f080176

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
