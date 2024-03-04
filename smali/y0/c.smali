.class public Ly0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly0/c$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "y0.c"


# instance fields
.field private final a:Ly0/b;

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ly0/c$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ly0/c$b;->a(Ly0/c$b;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ly0/c;->b:Landroid/view/View;

    .line 4
    invoke-static {p1}, Ly0/c$b;->b(Ly0/c$b;)I

    move-result v0

    iput v0, p0, Ly0/c;->c:I

    .line 5
    invoke-static {p1}, Ly0/c$b;->c(Ly0/c$b;)Z

    move-result v0

    iput-boolean v0, p0, Ly0/c;->e:Z

    .line 6
    invoke-static {p1}, Ly0/c$b;->d(Ly0/c$b;)I

    move-result v0

    iput v0, p0, Ly0/c;->f:I

    .line 7
    invoke-static {p1}, Ly0/c$b;->e(Ly0/c$b;)I

    move-result v0

    iput v0, p0, Ly0/c;->g:I

    .line 8
    invoke-static {p1}, Ly0/c$b;->f(Ly0/c$b;)I

    move-result v0

    iput v0, p0, Ly0/c;->d:I

    .line 9
    new-instance v0, Ly0/b;

    invoke-static {p1}, Ly0/c$b;->a(Ly0/c$b;)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Ly0/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Ly0/c;->a:Ly0/b;

    return-void
.end method

.method synthetic constructor <init>(Ly0/c$b;Ly0/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ly0/c;-><init>(Ly0/c$b;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Lio/supercharge/shimmerlayout/ShimmerLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Ly0/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/ethanhua/skeleton/R$layout;->layout_shimmer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lio/supercharge/shimmerlayout/ShimmerLayout;

    .line 2
    iget v0, p0, Ly0/c;->d:I

    invoke-virtual {p1, v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerColor(I)V

    .line 3
    iget v0, p0, Ly0/c;->g:I

    invoke-virtual {p1, v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAngle(I)V

    .line 4
    iget v0, p0, Ly0/c;->f:I

    invoke-virtual {p1, v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->setShimmerAnimationDuration(I)V

    .line 5
    iget-object v0, p0, Ly0/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Ly0/c;->c:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    new-instance v0, Ly0/c$a;

    invoke-direct {v0, p0, p1}, Ly0/c$a;-><init>(Ly0/c;Lio/supercharge/shimmerlayout/ShimmerLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 10
    invoke-virtual {p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->n()V

    return-object p1
.end method

.method private b()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Ly0/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ly0/c;->h:Ljava/lang/String;

    const-string v1, "the source view have not attach to any view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    iget-boolean v1, p0, Ly0/c;->e:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Ly0/c;->a(Landroid/view/ViewGroup;)Lio/supercharge/shimmerlayout/ShimmerLayout;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    iget-object v1, p0, Ly0/c;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Ly0/c;->c:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/c;->a:Ly0/b;

    invoke-virtual {v0}, Ly0/b;->a()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lio/supercharge/shimmerlayout/ShimmerLayout;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ly0/c;->a:Ly0/b;

    invoke-virtual {v0}, Ly0/b;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {v0}, Lio/supercharge/shimmerlayout/ShimmerLayout;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Ly0/c;->a:Ly0/b;

    invoke-virtual {v0}, Ly0/b;->d()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ly0/c;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ly0/c;->a:Ly0/b;

    invoke-virtual {v1, v0}, Ly0/b;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method
