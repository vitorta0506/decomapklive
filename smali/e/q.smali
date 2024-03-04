.class public Le/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m;
.implements Lf/a$b;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/airbnb/lottie/f;

.field private final e:Lf/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "*",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Le/b;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lj/k;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Le/q;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Le/b;

    invoke-direct {v0}, Le/b;-><init>()V

    iput-object v0, p0, Le/q;->g:Le/b;

    .line 4
    invoke-virtual {p3}, Lj/k;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/q;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p3}, Lj/k;->d()Z

    move-result v0

    iput-boolean v0, p0, Le/q;->c:Z

    .line 6
    iput-object p1, p0, Le/q;->d:Lcom/airbnb/lottie/f;

    .line 7
    invoke-virtual {p3}, Lj/k;->c()Li/h;

    move-result-object p1

    invoke-virtual {p1}, Li/h;->a()Lf/a;

    move-result-object p1

    iput-object p1, p0, Le/q;->e:Lf/a;

    .line 8
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    .line 9
    invoke-virtual {p1, p0}, Lf/a;->a(Lf/a$b;)V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/q;->f:Z

    .line 2
    iget-object v0, p0, Le/q;->d:Lcom/airbnb/lottie/f;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Le/q;->c()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/c;",
            ">;",
            "Ljava/util/List<",
            "Le/c;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/c;

    .line 3
    instance-of v1, v0, Le/s;

    if-eqz v1, :cond_0

    check-cast v0, Le/s;

    .line 4
    invoke-virtual {v0}, Le/s;->i()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Le/q;->g:Le/b;

    invoke-virtual {v1, v0}, Le/b;->a(Le/s;)V

    .line 6
    invoke-virtual {v0, p0}, Le/s;->c(Lf/a$b;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 1
    iget-boolean v0, p0, Le/q;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/q;->a:Landroid/graphics/Path;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/q;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-boolean v0, p0, Le/q;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, Le/q;->f:Z

    .line 6
    iget-object v0, p0, Le/q;->a:Landroid/graphics/Path;

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, Le/q;->a:Landroid/graphics/Path;

    iget-object v2, p0, Le/q;->e:Lf/a;

    invoke-virtual {v2}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 8
    iget-object v0, p0, Le/q;->a:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 9
    iget-object v0, p0, Le/q;->g:Le/b;

    iget-object v2, p0, Le/q;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Le/b;->b(Landroid/graphics/Path;)V

    .line 10
    iput-boolean v1, p0, Le/q;->f:Z

    .line 11
    iget-object v0, p0, Le/q;->a:Landroid/graphics/Path;

    return-object v0
.end method
