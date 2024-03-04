.class public Lcom/guochao/faceshow/promotion/view/WebViewDialog;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ImageView;

.field d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/view/WindowManager$LayoutParams;

.field private m:Landroid/view/Window;

.field private n:Leb/b;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Landroid/app/Activity;

.field private u:Ljava/lang/String;

.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->j:I

    const/high16 v0, 0x41200000    # 10.0f

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->k:I

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/promotion/view/WebViewDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->S1()V

    return-void
.end method

.method private Q1()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "language"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v4, "\u0939\u093f\u0928\u094d\u0926\u0940"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "Italiano"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "Espa\u00f1ol"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v4, "\ud55c\uad6d\uc5b4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v4, "\u65e5\u672c\u8a9e"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string/jumbo v4, "zh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v4, "en"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string/jumbo v4, "zh-rHK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v4, "Deutsch"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_9
    const-string v4, "Portugu\u00eas"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_a
    const-string v4, "Fran\u00e7ais"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_b
    const-string/jumbo v4, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439 \u044f\u0437\u044b\u043a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x0

    :goto_0
    const-string v0, ""

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    new-instance v3, Ljava/util/Locale;

    const-string v4, "hi"

    invoke-direct {v3, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 7
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto/16 :goto_1

    .line 8
    :pswitch_1
    sget-object v0, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 9
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto/16 :goto_1

    .line 10
    :pswitch_2
    new-instance v3, Ljava/util/Locale;

    const-string v4, "es"

    invoke-direct {v3, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 11
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_1

    .line 12
    :pswitch_3
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 13
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_1

    .line 14
    :pswitch_4
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_1

    .line 16
    :pswitch_5
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 17
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_1

    .line 18
    :pswitch_6
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 19
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_1

    .line 20
    :pswitch_7
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_1

    .line 22
    :pswitch_8
    sget-object v0, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 23
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_1

    .line 24
    :pswitch_9
    new-instance v3, Ljava/util/Locale;

    const-string v4, "pt"

    invoke-direct {v3, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 25
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_1

    .line 26
    :pswitch_a
    sget-object v0, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 27
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    goto :goto_1

    .line 28
    :pswitch_b
    new-instance v3, Ljava/util/Locale;

    const-string v4, "ru"

    invoke-direct {v3, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 29
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 30
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63989a21 -> :sswitch_b
        -0x5de8af63 -> :sswitch_a
        -0x44e0ebd5 -> :sswitch_9
        -0x3fd796e8 -> :sswitch_8
        -0x2a010e2a -> :sswitch_7
        0xca9 -> :sswitch_6
        0xf2e -> :sswitch_5
        0x18b8997 -> :sswitch_4
        0x336b443 -> :sswitch_3
        0xca53eef -> :sswitch_2
        0x4331d88f -> :sswitch_1
        0x437ab8e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private S1()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->r:Ljava/lang/String;

    const-string v1, "129"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->r:Ljava/lang/String;

    const-string v1, "136"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->n:Leb/b;

    iget-object v2, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->a:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->p:Ljava/lang/String;

    iget-object v6, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->q:Ljava/lang/String;

    iget-object v7, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->r:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Leb/b;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    iget-object v1, v1, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?activityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->n:Leb/b;

    iget-object v3, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->a:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->s:Ljava/lang/String;

    iget-object v5, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->o:Ljava/lang/String;

    iget-object v6, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->p:Ljava/lang/String;

    iget-object v8, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->r:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Leb/b;->F(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public R1(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->u:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->Q1()V

    .line 3
    iput-object p4, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->o:Ljava/lang/String;

    .line 4
    iput-object p5, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->p:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->s:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->q:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->r:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->d:Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 9
    iput-boolean p9, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->v:Z

    const-string/jumbo p2, "web_url"

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected getDialogStyle()I
    .locals 1

    const v0, 0x7f1304b9

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0145

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0e3e

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0e3d

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0e3b

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a0e40

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->f:Landroid/view/View;

    const v0, 0x7f0a0e38

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->g:Landroid/view/View;

    const v0, 0x7f0a0e3f

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->e:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    .line 8
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 9
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/utils/ScreenTools;->getScreenHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double v1, v1, v3

    double-to-int v1, v1

    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/promotion/view/WebViewDialog$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/promotion/view/WebViewDialog$a;-><init>(Lcom/guochao/faceshow/promotion/view/WebViewDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->e:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/promotion/view/WebViewDialog$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/promotion/view/WebViewDialog$b;-><init>(Lcom/guochao/faceshow/promotion/view/WebViewDialog;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-boolean p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->v:Z

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->e:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0a0e41

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->u:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->getInstance(ILandroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->t:Landroid/app/Activity;

    .line 3
    new-instance v0, Leb/b;

    invoke-direct {v0, p1}, Leb/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->n:Leb/b;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p1, Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1304b9

    invoke-direct {p1, v0, v1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->m:Landroid/view/Window;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->i:I

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v3, v1, v4

    const/4 v4, 0x2

    aput v3, v1, v4

    const/4 v4, 0x3

    aput v3, v1, v4

    .line 4
    iget v3, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->k:I

    int-to-float v4, v3

    const/4 v5, 0x4

    aput v4, v1, v5

    int-to-float v4, v3

    const/4 v5, 0x5

    aput v4, v1, v5

    int-to-float v4, v3

    const/4 v5, 0x6

    aput v4, v1, v5

    int-to-float v3, v3

    const/4 v4, 0x7

    aput v3, v1, v4

    .line 5
    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/FaceImageUtils;->createDrawable(I[F)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->h:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->m:Landroid/view/Window;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->m:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->l:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 9
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x50

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 11
    iput v1, p0, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->mGravity:I

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->m:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 13
    :cond_0
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 14
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 15
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object p1
.end method
