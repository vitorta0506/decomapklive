.class public Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$d;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

.field atPerson:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$d;

.field btnConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llGuide:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llTip:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field someOneLay:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field svgaImageView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translateBtn:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field translateLoading:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvContent:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNickName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;)Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    return-object p0
.end method

.method private Q1()V
    .locals 5

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;)V

    const-string v3, "live_room_click"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method private R1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getTranslateContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getTranslateContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateLoading:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateLoading:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;

    invoke-direct {v3, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->f(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/translate/a$c;)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0131

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->clear(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->e(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v2, "KEY_LIVE_IM_TRANSLATION_TIPS"

    invoke-virtual {p1, v2}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->Q1()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->llGuide:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lja/a;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->llGuide:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->someOneLay:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateBtn:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->atPerson:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/d;->b(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object p1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->e(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->someOneLay:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateBtn:Landroid/widget/ImageView;

    const v0, 0x7f0800f2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->atPerson:Landroid/widget/ImageView;

    const v0, 0x7f0f01af

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->btnConfirm:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->someOneLay:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvNickName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvContent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 23
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvContent:Landroid/widget/TextView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
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

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    return-object p1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->llTip:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceCast"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->R1()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->translateBtn:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    :cond_3
    return-void

    .line 12
    :sswitch_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    goto :goto_1

    .line 13
    :sswitch_2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getIsBindMobile()I

    move-result p1

    if-nez p1, :cond_4

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/d;->e(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    return-void

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$d;

    if-eqz p1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, ""

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$d;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->a:Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->dismiss()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a00e4 -> :sswitch_2
        0x7f0a0186 -> :sswitch_1
        0x7f0a0597 -> :sswitch_1
        0x7f0a06d4 -> :sswitch_0
        0x7f0a0beb -> :sswitch_0
    .end sparse-switch
.end method

.method public setOnTranslateListener(Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$d;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog;->b:Lcom/guochao/faceshow/aaspring/modulars/translate/LiveTranslateDialog$d;

    return-void
.end method
