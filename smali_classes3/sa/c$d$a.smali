.class Lsa/c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c$d;->onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsa/c$d;


# direct methods
.method constructor <init>(Lsa/c$d;)V
    .locals 0

    iput-object p1, p0, Lsa/c$d$a;->a:Lsa/c$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v1, v0, Lsa/c$d;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    const/4 v2, 0x1

    iput v2, v1, Lcom/guochao/faceshow/gift/data/AnimFlag;->t:I

    .line 2
    iget-object v0, v0, Lsa/c$d;->c:Lsa/c;

    invoke-static {v0}, Lsa/c;->b(Lsa/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v0, v0, Lsa/c$d;->c:Lsa/c;

    invoke-static {v0}, Lsa/c;->a(Lsa/c;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v2, -0x3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v0, v0, Lsa/c$d;->c:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v2, v2, Lsa/c$d;->c:Lsa/c;

    invoke-static {v2}, Lsa/c;->j(Lsa/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v0, v0, Lsa/c$d;->c:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v2, v2, Lsa/c$d;->c:Lsa/c;

    invoke-static {v2}, Lsa/c;->f(Lsa/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v0, v0, Lsa/c$d;->c:Lsa/c;

    invoke-static {v0}, Lsa/c;->l(Lsa/c;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lsa/c;->m(Lsa/c;Landroid/view/ViewGroup;Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v0, v0, Lsa/c$d;->c:Lsa/c;

    invoke-static {v0}, Lsa/c;->a(Lsa/c;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v0, v0, Lsa/c$d;->c:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v2, v2, Lsa/c$d;->c:Lsa/c;

    invoke-static {v2}, Lsa/c;->j(Lsa/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v0, v0, Lsa/c$d;->c:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v2, v2, Lsa/c$d;->c:Lsa/c;

    invoke-static {v2}, Lsa/c;->f(Lsa/c;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lsa/c$d$a;->a:Lsa/c$d;

    iget-object v0, v0, Lsa/c$d;->c:Lsa/c;

    invoke-static {v0}, Lsa/c;->l(Lsa/c;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lsa/c;->m(Lsa/c;Landroid/view/ViewGroup;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRepeat()V
    .locals 0

    return-void
.end method

.method public onStep(ID)V
    .locals 0

    return-void
.end method
