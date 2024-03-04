.class public Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/guochao/faceshow/roomutil/widget/NumberProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Landroid/view/View$OnClickListener;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->g:Z

    return-void
.end method

.method public static P1(Ljava/lang/String;)Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_title"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public Q1(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->g:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public R1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->c:Lcom/guochao/faceshow/roomutil/widget/NumberProgressBar;

    if-nez v0, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->e:I

    return-void

    :cond_0
    int-to-long v1, p1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/roomutil/widget/NumberProgressBar;->setProgress(J)V

    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->c:Lcom/guochao/faceshow/roomutil/widget/NumberProgressBar;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/roomutil/widget/NumberProgressBar;->setProgress(J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13013d

    const v0, 0x7f130141

    .line 2
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p2, 0x7f0d02ee

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->a:Landroid/view/View;

    const p2, 0x7f0a0605

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->d:Landroid/widget/TextView;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "key_title"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->a:Landroid/view/View;

    const p2, 0x7f0a0603

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->b:Landroid/widget/ImageView;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->a:Landroid/view/View;

    const p2, 0x7f0a0604

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/roomutil/widget/NumberProgressBar;

    iput-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->c:Lcom/guochao/faceshow/roomutil/widget/NumberProgressBar;

    const-wide/16 p2, 0x64

    .line 9
    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/roomutil/widget/NumberProgressBar;->setMax(J)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->c:Lcom/guochao/faceshow/roomutil/widget/NumberProgressBar;

    iget p2, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->e:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/roomutil/widget/NumberProgressBar;->setProgress(J)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->b:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-boolean p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->g:Z

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->b:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->b:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->a:Landroid/view/View;

    return-object p1
.end method

.method public setOnClickStopListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->f:Landroid/view/View$OnClickListener;

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/fragment/VideoWorkProgressFragment;->f:Landroid/view/View$OnClickListener;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    :try_start_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
