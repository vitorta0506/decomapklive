.class public Ly0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "y0.b"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private final f:Landroid/view/ViewGroup$LayoutParams;

.field private g:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ly0/b;->c:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ly0/b;->g:I

    .line 4
    iput-object p1, p0, Ly0/b;->a:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Ly0/b;->f:Landroid/view/ViewGroup$LayoutParams;

    .line 6
    iput-object p1, p0, Ly0/b;->d:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Ly0/b;->h:I

    return-void
.end method

.method private b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Ly0/b;->e:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ly0/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ly0/b;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Ly0/b;->i:Ljava/lang/String;

    const-string v2, "the source view have not attach to any view"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5
    iget-object v2, p0, Ly0/b;->a:Landroid/view/View;

    iget-object v3, p0, Ly0/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 6
    iput v1, p0, Ly0/b;->g:I

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ly0/b;->b:Landroid/view/View;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly0/b;->d:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_1
    invoke-direct {p0}, Ly0/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iput-object p1, p0, Ly0/b;->b:Landroid/view/View;

    .line 6
    iget-object p1, p0, Ly0/b;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Ly0/b;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Ly0/b;->b:Landroid/view/View;

    iget v0, p0, Ly0/b;->h:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 8
    iget-object p1, p0, Ly0/b;->e:Landroid/view/ViewGroup;

    iget-object v0, p0, Ly0/b;->b:Landroid/view/View;

    iget v1, p0, Ly0/b;->g:I

    iget-object v2, p0, Ly0/b;->f:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Ly0/b;->b:Landroid/view/View;

    iput-object p1, p0, Ly0/b;->d:Landroid/view/View;

    :cond_2
    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly0/b;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ly0/b;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Ly0/b;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Ly0/b;->a:Landroid/view/View;

    iget v2, p0, Ly0/b;->g:I

    iget-object v3, p0, Ly0/b;->f:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Ly0/b;->a:Landroid/view/View;

    iput-object v0, p0, Ly0/b;->d:Landroid/view/View;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ly0/b;->b:Landroid/view/View;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Ly0/b;->c:I

    :cond_0
    return-void
.end method
