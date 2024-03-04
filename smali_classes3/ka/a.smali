.class public Lka/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lka/a$d;,
        Lka/a$e;
    }
.end annotation


# instance fields
.field a:Landroidx/fragment/app/Fragment;

.field b:Landroidx/fragment/app/FragmentActivity;

.field c:Lka/a$e;

.field d:[Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field i:Lte/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lka/a;)I
    .locals 0

    iget p0, p0, Lka/a;->g:I

    return p0
.end method

.method static synthetic b(Lka/a;)V
    .locals 0

    invoke-direct {p0}, Lka/a;->i()V

    return-void
.end method

.method static synthetic c(Lka/a;)I
    .locals 0

    iget p0, p0, Lka/a;->h:I

    return p0
.end method

.method static synthetic d(Lka/a;)V
    .locals 0

    invoke-direct {p0}, Lka/a;->j()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lka/a;->a:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    iget-object v1, p0, Lka/a;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lka/a;->b:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/tbruyelle/rxpermissions2/a;

    iget-object v1, p0, Lka/a;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lka/a;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lka/a$a;

    invoke-direct {v1, p0}, Lka/a$a;-><init>(Lka/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    :cond_2
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lka/a;->a:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lka/a;->b:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v1, Lcom/guochao/faceshow/views/e;

    new-instance v2, Lka/a$c;

    invoke-direct {v2, p0, v0}, Lka/a$c;-><init>(Lka/a;Landroid/content/Context;)V

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 5
    iget v2, p0, Lka/a;->e:I

    if-lez v2, :cond_3

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    goto :goto_1

    :cond_3
    const v2, 0x7f120761

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 8
    :goto_1
    iget v2, p0, Lka/a;->f:I

    if-lez v2, :cond_4

    .line 9
    iget v2, p0, Lka/a;->e:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    goto :goto_2

    :cond_4
    const v2, 0x7f1206d9

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 11
    :goto_2
    iget v2, p0, Lka/a;->g:I

    if-lez v2, :cond_5

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 13
    :cond_5
    invoke-virtual {v1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lka/a;->a:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lka/a;->b:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v1, Lcom/guochao/faceshow/views/e;

    new-instance v2, Lka/a$b;

    invoke-direct {v2, p0}, Lka/a$b;-><init>(Lka/a;)V

    invoke-direct {v1, v0, v2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 5
    iget v2, p0, Lka/a;->e:I

    if-lez v2, :cond_3

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    goto :goto_1

    :cond_3
    const v2, 0x7f120761

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 8
    :goto_1
    iget v2, p0, Lka/a;->f:I

    if-lez v2, :cond_4

    .line 9
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    goto :goto_2

    :cond_4
    const v2, 0x7f1206d9

    .line 10
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 11
    :goto_2
    iget v2, p0, Lka/a;->h:I

    if-lez v2, :cond_5

    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 13
    :cond_5
    invoke-virtual {v1}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method


# virtual methods
.method public e(Lka/a$e;)Lka/a;
    .locals 0

    iput-object p1, p0, Lka/a;->c:Lka/a$e;

    return-object p0
.end method

.method public varargs f([Ljava/lang/String;)Lka/a;
    .locals 0

    iput-object p1, p0, Lka/a;->d:[Ljava/lang/String;

    return-object p0
.end method

.method public g(I)Lka/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iput p1, p0, Lka/a;->e:I

    return-object p0
.end method

.method public k()Lka/a;
    .locals 0

    invoke-direct {p0}, Lka/a;->h()V

    return-object p0
.end method

.method public l(I)Lka/a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iput p1, p0, Lka/a;->g:I

    return-object p0
.end method

.method public m(Landroidx/fragment/app/FragmentActivity;)Lka/a;
    .locals 0

    iput-object p1, p0, Lka/a;->b:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method
