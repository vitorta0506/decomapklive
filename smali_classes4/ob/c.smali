.class public abstract Lob/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpb/b;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:F

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1030004

    .line 2
    iput v0, p0, Lob/c;->i:I

    const/16 v0, 0x7d0

    .line 3
    iput v0, p0, Lob/c;->j:I

    const/16 v0, 0xdac

    .line 4
    iput v0, p0, Lob/c;->k:I

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/View;)Landroid/widget/TextView;
    .locals 0

    invoke-static {p0, p1}, Lpb/a;->a(Lpb/b;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lob/c;->i:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lob/c;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lob/c;->c:I

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lob/c;->g:F

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lob/c;->k:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lob/c;->j:I

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lob/c;->h:F

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lob/c;->a:Landroid/view/View;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lob/c;->e:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lob/c;->f:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lob/c;->d:I

    return-void
.end method

.method public setGravity(III)V
    .locals 0

    .line 1
    iput p1, p0, Lob/c;->c:I

    .line 2
    iput p2, p0, Lob/c;->e:I

    .line 3
    iput p3, p0, Lob/c;->f:I

    return-void
.end method

.method public setMargin(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lob/c;->g:F

    .line 2
    iput p2, p0, Lob/c;->h:F

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lob/c;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lob/c;->a:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lob/c;->b:Landroid/widget/TextView;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lob/c;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lob/c;->b:Landroid/widget/TextView;

    return-void
.end method
