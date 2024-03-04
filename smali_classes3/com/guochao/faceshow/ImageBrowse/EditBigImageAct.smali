.class public Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;
.super Lcom/guochao/faceshow/activity/PhotoDialogAct;
.source "SourceFile"


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field protected f:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

.field g:I

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/activity/PhotoDialogAct;-><init>()V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;)V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/activity/PhotoDialogAct;->e0()V

    return-void
.end method

.method private i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->d:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct$a;-><init>(Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->e:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct$b;-><init>(Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected k0()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/activity/PhotoDialogAct;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0049

    .line 2
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    const p1, 0x7f0a030d

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->d:Landroid/view/View;

    const p1, 0x7f0a030e

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->e:Landroid/view/View;

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "image_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image_width"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->g:I

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "image_height"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->h:I

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 10
    :goto_0
    iget v1, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->g:I

    iget v2, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->h:I

    invoke-static {p1, v1, v2}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->a2(Ljava/lang/String;II)Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->f:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    .line 11
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->d2(Z)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f0a030c

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->f:Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 16
    invoke-direct {p0}, Lcom/guochao/faceshow/ImageBrowse/EditBigImageAct;->i0()V

    return-void
.end method
