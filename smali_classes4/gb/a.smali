.class Lgb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/a$c;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/Window;

.field private i:Z

.field private j:Lgb/a$c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lgb/a;)Lgb/a$c;
    .locals 0

    iget-object p0, p0, Lgb/a;->j:Lgb/a$c;

    return-object p0
.end method

.method static synthetic b(Lgb/a;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lgb/a;->a:Landroid/app/Dialog;

    return-object p0
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0454

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f1304c8

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lgb/a;->a:Landroid/app/Dialog;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 5
    iget-object p1, p0, Lgb/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lgb/a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lgb/a;->h:Landroid/view/Window;

    const p1, 0x7f0a0d74

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lgb/a;->b:Landroid/widget/TextView;

    const p1, 0x7f0a0d71

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lgb/a;->c:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0d72

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lgb/a;->d:Landroid/widget/TextView;

    const p1, 0x7f0a0d70

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lgb/a;->e:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0d6e

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lgb/a;->f:Landroid/widget/TextView;

    const p1, 0x7f0a0d6f

    .line 12
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lgb/a;->g:Landroid/widget/TextView;

    .line 13
    new-instance v0, Lgb/a$a;

    invoke-direct {v0, p0}, Lgb/a$a;-><init>(Lgb/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lgb/a;->f:Landroid/widget/TextView;

    new-instance v0, Lgb/a$b;

    invoke-direct {v0, p0}, Lgb/a$b;-><init>(Lgb/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lgb/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/a;->f:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/a;->g:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public j(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lgb/a;->i:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lgb/a;->f:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public k(Lgb/a$c;)V
    .locals 0

    iput-object p1, p0, Lgb/a;->j:Lgb/a$c;

    return-void
.end method

.method public l(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgb/a;->c:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lgb/a;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lgb/a;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lgb/a;->b:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lgb/a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lgb/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lgb/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->create()V

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    move-result-object v0

    iget-object v1, p0, Lgb/a;->a:Landroid/app/Dialog;

    iput-object v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->c:Landroid/app/Dialog;

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->g(Lcom/guochao/faceshow/aaspring/beans/LivePkInvite;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lgb/a;->h:Landroid/view/Window;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lgb/a;->h:Landroid/view/Window;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    :cond_1
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lgb/a;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lgb/a;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgb/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method
