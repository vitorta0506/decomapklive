.class public Lcom/guochao/faceshow/views/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

.field private d:Landroid/view/Window;

.field private e:Landroid/content/Context;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/m;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/m;->f:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/views/m;->e:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d03ba

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a08d0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    iput-object v1, p0, Lcom/guochao/faceshow/views/m;->c:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    const v1, 0x7f0a08d2

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/guochao/faceshow/views/m;->b:Landroid/widget/TextView;

    .line 6
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f1304c8

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/guochao/faceshow/views/m;->a:Landroid/app/Dialog;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {v1, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/views/m;->a:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const p1, 0x7f0a01af

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Lcom/guochao/faceshow/views/m$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/m$a;-><init>(Lcom/guochao/faceshow/views/m;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/m;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/m;->d:Landroid/view/Window;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->c:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->a:Landroid/app/Dialog;

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

.method public f(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p2, p0, Lcom/guochao/faceshow/views/m;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/guochao/faceshow/views/m;->c:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->c:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->setProgress(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->d:Landroid/view/Window;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->d:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 5
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/views/m;->d:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->d:Landroid/view/Window;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const-string v1, "0%"

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/views/m;->c:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;->setProgress(I)V

    return-void
.end method
