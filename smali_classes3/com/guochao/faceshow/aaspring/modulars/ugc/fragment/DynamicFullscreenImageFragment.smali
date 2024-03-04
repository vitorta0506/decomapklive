.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/BaseZoomHelper$Zoomable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$j;
    }
.end annotation


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

.field b:Lh1/f;

.field private c:I

.field private d:Z

.field private e:Lcom/guochao/faceshow/views/Love;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field h:F

.field i:Ls0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/c<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field j:Z

.field k:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;

.field l:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

.field mDownloadDialogProgressView:Lcom/guochao/faceshow/aaspring/views/DownloadDialogProgressView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgressView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTextViewProgress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->h:F

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->i:Ls0/c;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->j:Z

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->Y1()V

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->b2()Z

    move-result p0

    return p0
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->c:I

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->c2()Z

    move-result p0

    return p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->d:Z

    return p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)Lcom/guochao/faceshow/views/Love;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->e:Lcom/guochao/faceshow/views/Love;

    return-object p0
.end method

.method static synthetic W1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->e2(I)V

    return-void
.end method

.method private Y1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->b2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-gtz v2, :cond_0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;

    const/4 v2, 0x0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->c:I

    invoke-interface {v1, v2, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;->onScaled(ZFI)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->c2()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->c:I

    invoke-interface {v1, v2, v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;->onScaled(ZFI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static Z1(Ljava/lang/String;III)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "width"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "height"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "position"

    .line 5
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static a2(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/DynamicFile;ZI)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "userId"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "data"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "local"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "position"

    .line 5
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;-><init>()V

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private b2()Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->l:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c2()Z
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-virtual {v2, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->a(Landroid/graphics/Matrix;)V

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    aget v0, v1, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    aput v0, v3, v2

    const/4 v0, 0x5

    aget v0, v1, v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aput v0, v3, v1

    aget v0, v3, v1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private e2(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d2(Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->l:Lcom/guochao/faceshow/aaspring/views/FullScreenScrollToExitViewV2;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d017d

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/Love;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/views/Love;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->e:Lcom/guochao/faceshow/views/Love;

    .line 2
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->e:Lcom/guochao/faceshow/views/Love;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-static {p1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object p1

    invoke-virtual {p1}, Lic/d;->D()Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    invoke-virtual {v0}, Lic/d;->D()Lic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileSmallUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/c;->B1(Ljava/lang/String;)Lic/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lic/c;->P1(Lcom/bumptech/glide/g;)Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lic/c;->B1(Ljava/lang/String;)Lic/c;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->i:Ls0/c;

    .line 7
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    goto/16 :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$j;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)V

    invoke-static {p1, v0}, Lic/e;->a(Ljava/lang/String;Lic/f;)V

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)V

    .line 11
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-static {v1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lic/d;->I(Landroid/net/Uri;)Lic/c;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-static {v2}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lic/d;->I(Landroid/net/Uri;)Lic/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lic/c;->P1(Lcom/bumptech/glide/g;)Lic/c;

    move-result-object v1

    .line 14
    invoke-virtual {v1, p1}, Lic/c;->i1(Lcom/bumptech/glide/request/g;)Lic/c;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-static {v1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-static {v2}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileSmallUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lic/c;->P1(Lcom/bumptech/glide/g;)Lic/c;

    move-result-object v1

    .line 17
    invoke-virtual {v1, p1}, Lic/c;->i1(Lcom/bumptech/glide/request/g;)Lic/c;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    .line 19
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getAttacher()Lh1/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)V

    invoke-virtual {p1, v0}, Lh1/k;->setOnSingleFlingListener(Lh1/h;)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    invoke-virtual {p1}, Lcom/github/chrisbanes/photoview/PhotoView;->getAttacher()Lh1/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$e;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)V

    invoke-virtual {p1, v0}, Lh1/k;->setOnViewDragListener(Lh1/i;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$f;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)V

    invoke-virtual {p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnScaleChangeListener(Lh1/g;)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)V

    invoke-virtual {p1, v0}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->f:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setFileUrl(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setWidth(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->setHeight(I)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->g:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->c:I

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "local"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->d:Z

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->a:Lcom/guochao/faceshow/aaspring/beans/DynamicFile;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicFile;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lic/e;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public save(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->j:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/tbruyelle/rxpermissions2/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/a;->p([Ljava/lang/String;)Lio/reactivex/k;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method

.method public scaled()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->mImageView:Lcom/guochao/faceshow/aaspring/views/GifImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/chrisbanes/photoview/PhotoView;->getScale()F

    move-result v0

    const v1, 0x3f80a3d7    # 1.005f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->c2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setOnPhotoTapListener(Lh1/f;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->b:Lh1/f;

    return-void
.end method

.method public setOnScaleListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/DynamicFullscreenImageFragment;->k:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/l;

    return-void
.end method
