.class public Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$c;,
        Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$b;
    }
.end annotation


# instance fields
.field protected final mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

.field protected final mFragment:Landroidx/fragment/app/Fragment;

.field private mHandler:Landroid/os/Handler;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mLTR:Z

.field private mMVPHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/danmu/DanmuView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mHashMap:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mMVPHashMap:Ljava/util/HashMap;

    .line 5
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mFragment:Landroidx/fragment/app/Fragment;

    .line 6
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    .line 7
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->j()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mLTR:Z

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->setFormatStr(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;Lcom/waynejo/androidndkgif/GifDecoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->release(Lcom/waynejo/androidndkgif/GifDecoder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mMVPHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method private getPlaceHolder()Ljava/lang/CharSequence;
    .locals 5

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\u6211"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x1

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v1, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private release(Lcom/waynejo/androidndkgif/GifDecoder;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/waynejo/androidndkgif/GifDecoder;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/waynejo/androidndkgif/GifDecoder;->b(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setFormatStr(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, ""

    .line 2
    :cond_0
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/core/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->getPlaceHolder()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->getPlaceHolder()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addDamus(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/danmu/b;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mLTR:Z

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/danmu/b;->i(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->d(Lcom/guochao/faceshow/aaspring/danmu/b;)V

    return-void
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mLTR:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->onCreateDanmuProvider()Lv7/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->setDanmuProvider(Lv7/b;)V

    return-void
.end method

.method public onCreateDanmuProvider()Lv7/b;
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;)V

    return-object v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->h()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->j()V

    return-void
.end method

.method public setOnDanmuClickListener(Lcom/guochao/faceshow/aaspring/danmu/c$a;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->setOnDanmuClickListener(Lcom/guochao/faceshow/aaspring/danmu/c$a;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->mDanmuView:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i()V

    return-void
.end method
