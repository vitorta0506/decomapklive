.class public abstract Ls0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls0/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls0/k<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final f:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field


# instance fields
.field private final a:Ls0/d$a;

.field protected final b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/bumptech/glide/R$id;->glide_custom_view_target_tag:I

    sput v0, Ls0/d;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lv0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Ls0/d;->b:Landroid/view/View;

    .line 3
    new-instance v0, Ls0/d$a;

    invoke-direct {v0, p1}, Ls0/d$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Ls0/d;->a:Ls0/d$a;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Ls0/d;->b:Landroid/view/View;

    sget v1, Ls0/d;->f:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/d;->c:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ls0/d;->e:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Ls0/d;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ls0/d;->e:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls0/d;->c:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Ls0/d;->e:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Ls0/d;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls0/d;->e:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private f(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Ls0/d;->b:Landroid/view/View;

    sget v1, Ls0/d;->f:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected abstract d(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected e(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final getRequest()Lcom/bumptech/glide/request/e;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Ls0/d;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/bumptech/glide/request/e;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/bumptech/glide/request/e;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not pass non-R.id ids to setTag(id)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSize(Ls0/j;)V
    .locals 1
    .param p1    # Ls0/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ls0/d;->a:Ls0/d$a;

    invoke-virtual {v0, p1}, Ls0/d$a;->d(Ls0/j;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ls0/d;->a:Ls0/d$a;

    invoke-virtual {v0}, Ls0/d$a;->b()V

    .line 2
    invoke-virtual {p0, p1}, Ls0/d;->d(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-boolean p1, p0, Ls0/d;->d:Z

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Ls0/d;->c()V

    :cond_0
    return-void
.end method

.method public final onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ls0/d;->b()V

    .line 2
    invoke-virtual {p0, p1}, Ls0/d;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public final removeCallback(Ls0/j;)V
    .locals 1
    .param p1    # Ls0/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ls0/d;->a:Ls0/d$a;

    invoke-virtual {v0, p1}, Ls0/d$a;->k(Ls0/j;)V

    return-void
.end method

.method public final setRequest(Lcom/bumptech/glide/request/e;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Ls0/d;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls0/d;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
