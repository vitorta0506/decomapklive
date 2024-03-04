.class public Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/opensource/svgaplayer/SVGAParser;

.field private b:I

.field private c:I

.field flContent:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llGuid:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field svgGuid:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static P1(Landroidx/fragment/app/FragmentManager;II)Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "start"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "top"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    const-class p1, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d040b

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->llGuid:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->c:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->b:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->llGuid:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->a:Lcom/opensource/svgaplayer/SVGAParser;

    if-nez p1, :cond_0

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->a:Lcom/opensource/svgaplayer/SVGAParser;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;)V

    const/4 v2, 0x1

    const-string v3, "dating_square_guide"

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    :cond_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "start"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->b:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "top"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;->c:I

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->setParamsHeight(I)V

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

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/views/GuideDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object p1
.end method

.method public onViewClicked()V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getCurrentUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KEY_DATING_SQUARE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module_notification"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void
.end method
