.class public Lcom/guochao/faceshow/activity/ImagePreviewActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/activity/ImagePreviewActivity;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->a:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/activity/ImagePreviewActivity;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->b:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private e0(J)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x400

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "B"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v5, p1, v3

    if-gez v5, :cond_1

    .line 3
    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_1
    div-long/2addr p1, v1

    div-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g0()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 6
    :goto_0
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v3, :cond_1

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v4, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 8
    :cond_1
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int v5, v3, v4

    const/4 v6, 0x3

    div-int/2addr v5, v6

    int-to-long v7, v5

    if-le v3, v4, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    mul-int v9, v5, v4

    .line 10
    div-int/2addr v9, v3

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v9

    mul-int v5, v3, v9

    .line 12
    div-int/2addr v5, v4

    :goto_1
    if-gt v4, v9, :cond_4

    if-le v3, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v12, 0x1

    goto :goto_4

    .line 13
    :cond_4
    :goto_2
    div-int/lit8 v10, v4, 0x2

    .line 14
    div-int/lit8 v11, v3, 0x2

    const/4 v12, 0x1

    .line 15
    :goto_3
    div-int v13, v10, v12

    if-le v13, v9, :cond_5

    div-int v13, v11, v12

    if-le v13, v5, :cond_5

    mul-int/lit8 v12, v12, 0x2

    goto :goto_3

    .line 16
    :cond_5
    :goto_4
    iget-object v10, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->b:Landroid/widget/CheckBox;

    if-eqz v10, :cond_6

    .line 17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f120175

    invoke-virtual {p0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v7, v8}, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->e0(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :cond_6
    :try_start_1
    iput v12, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v7, 0x0

    .line 19
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    int-to-float v5, v5

    .line 20
    div-int/2addr v3, v12

    int-to-float v3, v3

    div-float/2addr v5, v3

    int-to-float v3, v9

    .line 21
    div-int/2addr v4, v12

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 22
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    invoke-virtual {v12, v5, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->a:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 26
    new-instance v2, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v2, v0}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v3, "Orientation"

    .line 27
    invoke-virtual {v2, v3, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_8

    const/4 v2, 0x6

    if-eq v1, v2, :cond_7

    goto :goto_5

    :cond_7
    const/high16 v1, 0x42b40000    # 90.0f

    .line 28
    invoke-virtual {v12, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_5

    :cond_8
    const/high16 v1, 0x43340000    # 180.0f

    .line 29
    invoke-virtual {v12, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    :goto_5
    const v1, 0x7f0a051b

    .line 30
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 31
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    const/4 v13, 0x1

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    :cond_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0062

    return v0
.end method

.method public initView()V
    .locals 0

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->a:Landroid/net/Uri;

    const p1, 0x7f0a0566

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->b:Landroid/widget/CheckBox;

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/activity/ImagePreviewActivity;->g0()V

    const p1, 0x7f1207d4

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f060093

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Lcom/guochao/faceshow/activity/ImagePreviewActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/activity/ImagePreviewActivity$a;-><init>(Lcom/guochao/faceshow/activity/ImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    :cond_0
    return-void
.end method
