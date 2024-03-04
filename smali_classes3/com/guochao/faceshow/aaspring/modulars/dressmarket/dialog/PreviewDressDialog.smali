.class public Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/opensource/svgaplayer/SVGAImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View;

.field private e:Lcom/opensource/svgaplayer/SVGAImageView;

.field private f:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

.field private g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->U1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->V1(Landroid/view/View;)V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->Y1(Ljava/io/File;)V

    return-void
.end method

.method static synthetic S1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->e:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method private synthetic U1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method private synthetic V1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public static W1(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dressBean"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 5
    const-class p1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private X1(Z)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->e:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)V

    const/4 v2, 0x1

    const-string v3, "global_loading"

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->e:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private Y1(Ljava/io/File;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->h:Z

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->e:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 3
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->X1(Z)V

    .line 4
    new-instance v1, Lcom/opensource/svgaplayer/SVGAParser;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string p1, "entrance_car"

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$b;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)V

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d013a

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dressBean"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    :cond_0
    const v0, 0x7f0a0138

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo8/f;

    invoke-direct {v1, p0}, Lo8/f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0215

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lo8/g;

    invoke-direct {v1, p0}, Lo8/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a025b

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->d:Landroid/view/View;

    const v0, 0x7f0a08d0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->e:Lcom/opensource/svgaplayer/SVGAImageView;

    const v0, 0x7f0a0af8

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    const v0, 0x7f0a0dc5

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0abc

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a04bf

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->f:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressHead()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->f:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarStrokeWidth(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->f:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->setAvatarStrokeWidth(I)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->f:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    const/4 p1, 0x1

    .line 15
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->X1(Z)V

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    if-nez v1, :cond_2

    return-void

    .line 17
    :cond_2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getIsVip()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->c:Landroid/widget/ImageView;

    const v1, 0x7f0f009a

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getIsVip()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->c:Landroid/widget/ImageView;

    const v1, 0x7f0f0099

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->b:Landroid/widget/TextView;

    const/high16 v1, 0x430c0000    # 140.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 22
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->j()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArFileUrlV2()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getFileUrlV2()Ljava/lang/String;

    move-result-object p1

    .line 25
    :goto_2
    new-instance v1, Ljava/io/File;

    const-string v2, "Dress"

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/guochao/faceshow/utils/MD5Utils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v2

    invoke-virtual {v2}, Lq7/a;->j()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbMd5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 27
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArThumbMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/guochao/faceshow/utils/Md5;->getMd5ByFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 28
    :cond_6
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v2

    invoke-virtual {v2}, Lq7/a;->j()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getThumbMd5()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 29
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getThumbMd5()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/guochao/faceshow/utils/Md5;->getMd5ByFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 30
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v0, :cond_8

    goto :goto_3

    .line 31
    :cond_8
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->Y1(Ljava/io/File;)V

    goto :goto_4

    .line 32
    :cond_9
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->h(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$a;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;)V

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->a(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    :goto_4
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p1, 0x7f130197

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->createBottomDialog(I)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->h:Z

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getArFileUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/dialog/PreviewDressDialog;->g:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/DressResponse$DressBean;->getFileUrl()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Ljava/io/File;

    const-string v2, "Dress"

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getNXShowPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/guochao/faceshow/utils/MD5Utils;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method
