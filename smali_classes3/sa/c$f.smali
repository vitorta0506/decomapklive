.class Lsa/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c;->y(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/gift/data/AnimFlag;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lsa/c;


# direct methods
.method constructor <init>(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lsa/c$f;->c:Lsa/c;

    iput-object p2, p0, Lsa/c$f;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iput-object p3, p0, Lsa/c$f;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lsa/c$f;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    const/4 v0, 0x0

    iput v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->c:I

    .line 2
    iget-object p1, p0, Lsa/c$f;->c:Lsa/c;

    invoke-static {p1}, Lsa/c;->l(Lsa/c;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lsa/c$f;->b:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lsa/c$f;->c:Lsa/c;

    invoke-static {p1}, Lsa/c;->c(Lsa/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lsa/c$f;->c:Lsa/c;

    invoke-static {p1}, Lsa/c;->c(Lsa/c;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object p1, p0, Lsa/c$f;->c:Lsa/c;

    invoke-static {p1}, Lsa/c;->q(Lsa/c;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lsa/c$f;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    const/4 v0, 0x1

    iput v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->c:I

    return-void
.end method
