.class Lsa/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c;->C(Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/gift/data/AnimFlag;

.field final synthetic b:Lcom/opensource/svgaplayer/SVGAImageView;

.field final synthetic c:Lsa/c;


# direct methods
.method constructor <init>(Lsa/c;Lcom/guochao/faceshow/gift/data/AnimFlag;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    iput-object p1, p0, Lsa/c$c;->c:Lsa/c;

    iput-object p2, p0, Lsa/c$c;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iput-object p3, p0, Lsa/c$c;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lsa/c$c;->a:Lcom/guochao/faceshow/gift/data/AnimFlag;

    iget-boolean v0, p1, Lcom/guochao/faceshow/gift/data/AnimFlag;->s:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsa/c$c;->c:Lsa/c;

    iget-object v1, p0, Lsa/c$c;->b:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-static {v0, v1, p1}, Lsa/c;->h(Lsa/c;Lcom/opensource/svgaplayer/SVGAImageView;Lcom/guochao/faceshow/gift/data/AnimFlag;)V

    .line 3
    :cond_0
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/16 v0, 0xbb8

    const/16 v1, 0x3e8

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lsa/c$c;->c:Lsa/c;

    invoke-static {p1}, Lsa/c;->a(Lsa/c;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v2, -0x3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lsa/c$c;->c:Lsa/c;

    invoke-static {p1, v0}, Lsa/c;->e(Lsa/c;I)I

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lsa/c$c;->c:Lsa/c;

    invoke-static {p1, v1}, Lsa/c;->e(Lsa/c;I)I

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lsa/c$c;->c:Lsa/c;

    invoke-static {p1}, Lsa/c;->a(Lsa/c;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lsa/c$c;->c:Lsa/c;

    invoke-static {p1, v0}, Lsa/c;->e(Lsa/c;I)I

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lsa/c$c;->c:Lsa/c;

    invoke-static {p1, v1}, Lsa/c;->e(Lsa/c;I)I

    .line 10
    :goto_0
    iget-object p1, p0, Lsa/c$c;->c:Lsa/c;

    invoke-static {p1}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lsa/c$c;->c:Lsa/c;

    invoke-static {v0}, Lsa/c;->f(Lsa/c;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lsa/c$c;->c:Lsa/c;

    invoke-static {v1}, Lsa/c;->d(Lsa/c;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
