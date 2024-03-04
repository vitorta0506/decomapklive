.class Lsa/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsa/c;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroid/view/ViewGroup;)V
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

    iput-object p1, p0, Lsa/c$e;->a:Lsa/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lsa/c;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/gift/data/AnimFlag;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/guochao/faceshow/gift/data/AnimFlag;->k:Ljava/lang/Runnable;

    .line 3
    iget-object v0, p0, Lsa/c$e;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->p(Lsa/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lsa/c$e;->a:Lsa/c;

    invoke-static {v0}, Lsa/c;->p(Lsa/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lsa/c$e$a;

    invoke-direct {v0, p0}, Lsa/c$e$a;-><init>(Lsa/c$e;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
