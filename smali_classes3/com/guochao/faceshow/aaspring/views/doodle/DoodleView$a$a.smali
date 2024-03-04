.class Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->p(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Z)Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->e(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->f(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a$a;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$a;->b:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->c()V

    return-void
.end method
