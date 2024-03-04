.class public Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;->c:I

    return p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d019a

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "clickUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;->c:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;->d:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 10
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 11
    :goto_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/ImageAdsFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected loadData()V
    .locals 0

    return-void
.end method
