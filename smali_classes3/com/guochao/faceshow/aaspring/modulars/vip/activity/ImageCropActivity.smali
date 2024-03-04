.class public Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:I

.field mPhotoView:Lcom/guochao/faceshow/aaspring/views/ImageCropView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    const/16 v0, 0x12c

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->a:I

    return-void
.end method

.method public static d0(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "file"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "size"

    .line 3
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "uri"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected b0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "size"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->a:I

    .line 3
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 7
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->mPhotoView:Lcom/guochao/faceshow/aaspring/views/ImageCropView;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/GifImageView;->setGifDrawable(Ljava/io/File;)V

    const/high16 p1, 0x3f800000    # 1.0f

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    int-to-float v0, v0

    mul-float v0, v0, p1

    int-to-float v2, v1

    div-float/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    div-float/2addr p1, v0

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->mPhotoView:Lcom/guochao/faceshow/aaspring/views/ImageCropView;

    const v2, 0x3f99999a    # 1.2f

    mul-float v2, v2, p1

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float v3, v3, p1

    invoke-virtual {v0, p1, v2, v3}, Lcom/github/chrisbanes/photoview/PhotoView;->e(FFF)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->mPhotoView:Lcom/guochao/faceshow/aaspring/views/ImageCropView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$d;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;F)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 11
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->c:I

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0061

    return v0
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f120a15

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    const v0, 0x7f12069a

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 8
    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$c;

    invoke-direct {v2, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 9
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/vip/activity/ImageCropActivity;->b0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method
