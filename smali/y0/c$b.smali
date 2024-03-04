.class public Ly0/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:Z

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly0/c$b;->c:Z

    const/16 v0, 0x3e8

    .line 3
    iput v0, p0, Ly0/c$b;->e:I

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Ly0/c$b;->f:I

    .line 5
    iput-object p1, p0, Ly0/c$b;->a:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/ethanhua/skeleton/R$color;->shimmer_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Ly0/c$b;->d:I

    return-void
.end method

.method static synthetic a(Ly0/c$b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ly0/c$b;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Ly0/c$b;)I
    .locals 0

    iget p0, p0, Ly0/c$b;->b:I

    return p0
.end method

.method static synthetic c(Ly0/c$b;)Z
    .locals 0

    iget-boolean p0, p0, Ly0/c$b;->c:Z

    return p0
.end method

.method static synthetic d(Ly0/c$b;)I
    .locals 0

    iget p0, p0, Ly0/c$b;->e:I

    return p0
.end method

.method static synthetic e(Ly0/c$b;)I
    .locals 0

    iget p0, p0, Ly0/c$b;->f:I

    return p0
.end method

.method static synthetic f(Ly0/c$b;)I
    .locals 0

    iget p0, p0, Ly0/c$b;->d:I

    return p0
.end method


# virtual methods
.method public g(I)Ly0/c$b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    iput p1, p0, Ly0/c$b;->b:I

    return-object p0
.end method

.method public h(Z)Ly0/c$b;
    .locals 0

    iput-boolean p1, p0, Ly0/c$b;->c:Z

    return-object p0
.end method

.method public i()Ly0/c;
    .locals 2

    .line 1
    new-instance v0, Ly0/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ly0/c;-><init>(Ly0/c$b;Ly0/c$a;)V

    .line 2
    invoke-virtual {v0}, Ly0/c;->d()V

    return-object v0
.end method
