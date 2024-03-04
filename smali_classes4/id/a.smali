.class public Lid/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lkd/a;

.field private b:Ljd/b;

.field private c:Ljd/c;

.field private d:Ljd/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lkd/a;

    invoke-direct {v0}, Lkd/a;-><init>()V

    iput-object v0, p0, Lid/a;->a:Lkd/a;

    .line 3
    new-instance v1, Ljd/b;

    invoke-direct {v1, v0}, Ljd/b;-><init>(Lkd/a;)V

    iput-object v1, p0, Lid/a;->b:Ljd/b;

    .line 4
    new-instance v0, Ljd/c;

    invoke-direct {v0}, Ljd/c;-><init>()V

    iput-object v0, p0, Lid/a;->c:Ljd/c;

    .line 5
    new-instance v0, Ljd/a;

    iget-object v1, p0, Lid/a;->a:Lkd/a;

    invoke-direct {v0, v1}, Ljd/a;-><init>(Lkd/a;)V

    iput-object v0, p0, Lid/a;->d:Ljd/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lid/a;->b:Ljd/b;

    invoke-virtual {v0, p1}, Ljd/b;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public b()Lkd/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lid/a;->a:Lkd/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkd/a;

    invoke-direct {v0}, Lkd/a;-><init>()V

    iput-object v0, p0, Lid/a;->a:Lkd/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lid/a;->a:Lkd/a;

    return-object v0
.end method

.method public c(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lid/a;->d:Ljd/a;

    invoke-virtual {v0, p1, p2}, Ljd/a;->c(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public d(II)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lid/a;->c:Ljd/c;

    iget-object v1, p0, Lid/a;->a:Lkd/a;

    invoke-virtual {v0, v1, p1, p2}, Ljd/c;->a(Lkd/a;II)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljd/b$b;)V
    .locals 1
    .param p1    # Ljd/b$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lid/a;->b:Ljd/b;

    invoke-virtual {v0, p1}, Ljd/b;->e(Ljd/b$b;)V

    return-void
.end method

.method public f(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lid/a;->b:Ljd/b;

    invoke-virtual {v0, p1}, Ljd/b;->f(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public g(Lfd/a;)V
    .locals 1
    .param p1    # Lfd/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lid/a;->b:Ljd/b;

    invoke-virtual {v0, p1}, Ljd/b;->g(Lfd/a;)V

    return-void
.end method
