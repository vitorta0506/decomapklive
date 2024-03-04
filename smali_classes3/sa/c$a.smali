.class Lsa/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsa/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lsa/c;


# direct methods
.method constructor <init>(Lsa/c;)V
    .locals 0

    iput-object p1, p0, Lsa/c$a;->a:Lsa/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->a(Lsa/c;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->b(Lsa/c;)Z

    move-result v0

    const-wide/16 v1, 0x5dc

    const/16 v3, 0x32

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->a(Lsa/c;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v5, -0x3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lsa/c$a$a;

    invoke-direct {v3, p0}, Lsa/c$a$a;-><init>(Lsa/c$a;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->a(Lsa/c;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v1, -0x14

    iget-object v2, p0, Lsa/c$a;->a:Lsa/c;

    iget-object v2, v2, Lsa/c;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->a(Lsa/c;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lsa/c$a$b;

    invoke-direct {v3, p0}, Lsa/c$a$b;-><init>(Lsa/c$a;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->a(Lsa/c;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x14

    iget-object v2, p0, Lsa/c$a;->a:Lsa/c;

    iget-object v2, v2, Lsa/c;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    .line 9
    :goto_0
    iget-object v0, p0, Lsa/c$a;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->k(Lsa/c;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
