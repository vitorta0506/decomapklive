.class public abstract Lu/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field private b:Ls/a;

.field private c:Lcom/beloo/widget/chipslayoutmanager/d;

.field private d:Lt/n;

.field private e:Lw/n;

.field private f:Lx/e;

.field private g:Lv/h;

.field private h:Landroid/graphics/Rect;

.field private i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lu/j;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lt/p;

.field private k:Lt/q;

.field private l:Lu/b;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lu/a$a;->i:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic a(Lu/a$a;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
    .locals 0

    iget-object p0, p0, Lu/a$a;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-object p0
.end method

.method static synthetic b(Lu/a$a;)Ls/a;
    .locals 0

    iget-object p0, p0, Lu/a$a;->b:Ls/a;

    return-object p0
.end method

.method static synthetic c(Lu/a$a;)Lt/q;
    .locals 0

    iget-object p0, p0, Lu/a$a;->k:Lt/q;

    return-object p0
.end method

.method static synthetic d(Lu/a$a;)Lu/b;
    .locals 0

    iget-object p0, p0, Lu/a$a;->l:Lu/b;

    return-object p0
.end method

.method static synthetic e(Lu/a$a;)Lcom/beloo/widget/chipslayoutmanager/d;
    .locals 0

    iget-object p0, p0, Lu/a$a;->c:Lcom/beloo/widget/chipslayoutmanager/d;

    return-object p0
.end method

.method static synthetic f(Lu/a$a;)Lt/n;
    .locals 0

    iget-object p0, p0, Lu/a$a;->d:Lt/n;

    return-object p0
.end method

.method static synthetic g(Lu/a$a;)Lw/n;
    .locals 0

    iget-object p0, p0, Lu/a$a;->e:Lw/n;

    return-object p0
.end method

.method static synthetic h(Lu/a$a;)Lx/e;
    .locals 0

    iget-object p0, p0, Lu/a$a;->f:Lx/e;

    return-object p0
.end method

.method static synthetic i(Lu/a$a;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lu/a$a;->h:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic j(Lu/a$a;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lu/a$a;->i:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic k(Lu/a$a;)Lv/h;
    .locals 0

    iget-object p0, p0, Lu/a$a;->g:Lv/h;

    return-object p0
.end method

.method static synthetic l(Lu/a$a;)Lt/p;
    .locals 0

    iget-object p0, p0, Lu/a$a;->j:Lt/p;

    return-object p0
.end method


# virtual methods
.method final m(Ljava/util/List;)Lu/a$a;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu/j;",
            ">;)",
            "Lu/a$a;"
        }
    .end annotation

    iget-object v0, p0, Lu/a$a;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method final n(Lv/h;)Lu/a$a;
    .locals 1
    .param p1    # Lv/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "breaker shouldn\'t be null"

    .line 1
    invoke-static {p1, v0}, Ly/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lu/a$a;->g:Lv/h;

    return-object p0
.end method

.method public final o()Lu/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/a$a;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    if-eqz v0, :cond_a

    .line 2
    iget-object v0, p0, Lu/a$a;->g:Lv/h;

    if-eqz v0, :cond_9

    .line 3
    iget-object v0, p0, Lu/a$a;->c:Lcom/beloo/widget/chipslayoutmanager/d;

    if-eqz v0, :cond_8

    .line 4
    iget-object v0, p0, Lu/a$a;->b:Ls/a;

    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Lu/a$a;->k:Lt/q;

    if-eqz v0, :cond_6

    .line 6
    iget-object v0, p0, Lu/a$a;->h:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    .line 7
    iget-object v0, p0, Lu/a$a;->e:Lw/n;

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lu/a$a;->f:Lx/e;

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lu/a$a;->j:Lt/p;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lu/a$a;->d:Lt/n;

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lu/a$a;->l:Lu/b;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lu/a$a;->s()Lu/a;

    move-result-object v0

    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "positionIterator can\'t be null, call #positionIterator()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "childGravityResolver can\'t be null, call #childGravityResolver()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "gravityModifiersFactory can\'t be null, call #gravityModifiersFactory()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "placer can\'t be null, call #placer()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "finishingCriteria can\'t be null, call #finishingCriteria()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "offsetRect can\'t be null, call #offsetRect()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "rowStrategy can\'t be null, call #rowStrategy()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cacheStorage can\'t be null, call #cacheStorage()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "border can\'t be null, call #border()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "breaker can\'t be null, call #breaker()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "layoutManager can\'t be null, call #layoutManager()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final p(Ls/a;)Lu/a$a;
    .locals 0
    .param p1    # Ls/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lu/a$a;->b:Ls/a;

    return-object p0
.end method

.method final q(Lcom/beloo/widget/chipslayoutmanager/d;)Lu/a$a;
    .locals 0
    .param p1    # Lcom/beloo/widget/chipslayoutmanager/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lu/a$a;->c:Lcom/beloo/widget/chipslayoutmanager/d;

    return-object p0
.end method

.method final r(Lt/n;)Lu/a$a;
    .locals 0
    .param p1    # Lt/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lu/a$a;->d:Lt/n;

    return-object p0
.end method

.method protected abstract s()Lu/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method final t(Lw/n;)Lu/a$a;
    .locals 0
    .param p1    # Lw/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lu/a$a;->e:Lw/n;

    return-object p0
.end method

.method final u(Lt/p;)Lu/a$a;
    .locals 0
    .param p1    # Lt/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lu/a$a;->j:Lt/p;

    return-object p0
.end method

.method public final v(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lu/a$a;
    .locals 0
    .param p1    # Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lu/a$a;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-object p0
.end method

.method public w(Landroid/graphics/Rect;)Lu/a$a;
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lu/a$a;->h:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final x(Lx/e;)Lu/a$a;
    .locals 0
    .param p1    # Lx/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lu/a$a;->f:Lx/e;

    return-object p0
.end method

.method public y(Lu/b;)Lu/a$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lu/a$a;->l:Lu/b;

    return-object p0
.end method

.method z(Lt/q;)Lu/a$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lu/a$a;->k:Lt/q;

    return-object p0
.end method
