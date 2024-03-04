.class public Lcom/guochao/faceshow/views/e;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/e$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:Z

.field private k:Lcom/guochao/faceshow/views/e$a;

.field private l:Landroid/text/SpannableStringBuilder;

.field private m:Ljava/lang/CharSequence;

.field private n:I

.field private o:I

.field private p:Landroid/view/WindowManager$LayoutParams;

.field private q:Landroid/view/Window;

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/guochao/faceshow/views/e$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/views/e;->n:I

    .line 5
    iput p2, p0, Lcom/guochao/faceshow/views/e;->o:I

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/views/e;->g:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lcom/guochao/faceshow/views/e;->k:Lcom/guochao/faceshow/views/e$a;

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/e;->q:Landroid/view/Window;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Lcom/guochao/faceshow/views/e$a;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/guochao/faceshow/views/e;->n:I

    .line 18
    iput p2, p0, Lcom/guochao/faceshow/views/e;->o:I

    .line 19
    iput-object p1, p0, Lcom/guochao/faceshow/views/e;->g:Landroid/content/Context;

    .line 20
    iput-object p3, p0, Lcom/guochao/faceshow/views/e;->i:Ljava/lang/CharSequence;

    .line 21
    iput-object p4, p0, Lcom/guochao/faceshow/views/e;->k:Lcom/guochao/faceshow/views/e$a;

    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/e;->q:Landroid/view/Window;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V
    .locals 1

    const v0, 0x7f1304b9

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;ILcom/guochao/faceshow/views/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/guochao/faceshow/views/e$a;)V
    .locals 1

    const v0, 0x7f1304b9

    .line 9
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/guochao/faceshow/views/e;->n:I

    .line 11
    iput v0, p0, Lcom/guochao/faceshow/views/e;->o:I

    .line 12
    iput-object p1, p0, Lcom/guochao/faceshow/views/e;->g:Landroid/content/Context;

    .line 13
    iput-object p3, p0, Lcom/guochao/faceshow/views/e;->k:Lcom/guochao/faceshow/views/e$a;

    .line 14
    iput-boolean p2, p0, Lcom/guochao/faceshow/views/e;->r:Z

    .line 15
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/e;->q:Landroid/view/Window;

    return-void
.end method

.method private a()V
    .locals 4

    const v0, 0x7f0a0231

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/guochao/faceshow/views/e;->a:Landroid/view/ViewGroup;

    const v0, 0x7f0a0233

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/e;->b:Landroid/widget/TextView;

    const v0, 0x7f0a022e

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/e;->c:Landroid/widget/TextView;

    const v0, 0x7f0a0232

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/e;->d:Landroid/widget/TextView;

    const v0, 0x7f0a022d

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/views/e;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0234

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/e;->f:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget v0, p0, Lcom/guochao/faceshow/views/e;->n:I

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/views/e;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/views/e;->o:I

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/views/e;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/views/e;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->i:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/guochao/faceshow/views/e;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->c:Landroid/widget/TextView;

    .line 22
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->l:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/views/e;->l:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->m:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/views/e;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_6
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/e;->s:Z

    if-eqz v0, :cond_7

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/e;->h:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/views/e;->n:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/e;->j:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    iget-object v0, v0, Lp9/a;->e:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Lcom/guochao/faceshow/views/e;->g:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/e;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->q:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/e;->m:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/views/e;->s:Z

    return-void
.end method

.method public k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;
    .locals 1

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/e;->l:Landroid/text/SpannableStringBuilder;

    .line 2
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object p0
.end method

.method public l()Lcom/guochao/faceshow/views/e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/views/e;->j:Z

    return-object p0
.end method

.method public m(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/views/e;->o:I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7fffffff

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a022d

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a0232

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/e;->k:Lcom/guochao/faceshow/views/e$a;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 4
    invoke-interface {p1, p0, v0}, Lcom/guochao/faceshow/views/e$a;->onClick(Landroid/app/Dialog;Z)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/e;->dismiss()V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/views/e;->k:Lcom/guochao/faceshow/views/e$a;

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, p0, v0}, Lcom/guochao/faceshow/views/e$a;->onClick(Landroid/app/Dialog;Z)V

    .line 8
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/e;->dismiss()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d011a

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/e;->q:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/e;->q:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/e;->p:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    .line 5
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 6
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->q:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/views/e;->r:Z

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/views/e;->a()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/views/e;->k:Lcom/guochao/faceshow/views/e$a;

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1, p0}, Lcom/guochao/faceshow/views/e$a;->onCreate(Lcom/guochao/faceshow/views/e;)V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/e;->g:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 4
    check-cast v0, Landroid/app/Activity;

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 6
    :cond_3
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/e;->j:Z

    if-eqz v0, :cond_5

    .line 7
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/e;->g:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lp9/a;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    iget-object v0, v0, Lp9/a;->e:Landroidx/collection/ArrayMap;

    iget-object v1, p0, Lcom/guochao/faceshow/views/e;->g:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_5
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
