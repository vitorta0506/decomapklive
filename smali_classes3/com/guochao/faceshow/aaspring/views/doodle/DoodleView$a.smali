.class Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->a:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->e(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->f(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lla/c;

    .line 7
    invoke-interface {v3, v1}, Lla/c;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->o(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lma/b;->e(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->q(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lcom/guochao/faceshow/aaspring/views/doodle/j;

    move-result-object v0

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    new-instance v3, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a$a;-><init>(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;)V

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/guochao/faceshow/aaspring/views/doodle/j;->b(Ljava/lang/Boolean;Lla/a;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
