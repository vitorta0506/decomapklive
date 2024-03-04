.class public abstract Lf8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/view/ViewStub;

.field protected b:Landroid/view/View;

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf8/a;->a:Landroid/view/ViewStub;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;)V
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lf8/a;->c:Z

    return v0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf8/a;->c:Z

    .line 2
    iget-object v0, p0, Lf8/a;->a:Landroid/view/ViewStub;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lf8/a;->b:Landroid/view/View;

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lf8/a;->b:Landroid/view/View;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lf8/a;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lf8/a;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lf8/a;->a(Landroid/view/View;)V

    return-void
.end method
