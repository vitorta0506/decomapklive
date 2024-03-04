.class public Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/github/chrisbanes/photoview/PhotoView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Ljava/lang/String;

.field private e:Landroid/net/Uri;

.field private f:I

.field private g:I

.field private h:Z

.field private i:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->h:Z

    return-void
.end method

.method static synthetic P1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->h:Z

    return p0
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->e2()V

    return-void
.end method

.method static synthetic R1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->f:I

    return p0
.end method

.method static synthetic S1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->g:I

    return p0
.end method

.method static synthetic T1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)Lcom/github/chrisbanes/photoview/PhotoView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->b:Lcom/github/chrisbanes/photoview/PhotoView;

    return-object p0
.end method

.method static synthetic U1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->i:F

    return p0
.end method

.method static synthetic V1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;F)F
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->i:F

    return p1
.end method

.method static synthetic W1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic X1(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->c2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static Z1(Landroid/net/Uri;)Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uri"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static a2(Ljava/lang/String;II)Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key1"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "key2"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static final b2(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private c2(Landroid/graphics/Bitmap;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getPhotoPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_1

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 13
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 15
    invoke-static {v0, v3, v1, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_2
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void
.end method

.method private e2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d0401

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01af

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a09f4

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    new-instance v3, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$e;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$e;-><init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v1, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$f;-><init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->c:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/utils/Tool;->creatPopWindowBottomAnim(Landroid/view/View;Landroid/view/View;II)Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public Y1()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->b:Lcom/github/chrisbanes/photoview/PhotoView;

    return-object v0
.end method

.method public d2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->h:Z

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$c;-><init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$d;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$d;-><init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->d:Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->e:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->b:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->e:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lic/d;->I(Landroid/net/Uri;)Lic/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lic/c;->i1(Lcom/bumptech/glide/request/g;)Lic/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    goto :goto_2

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->a:Ljava/lang/String;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->a:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->a:Ljava/lang/String;

    const-string v2, "/storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->IMAGE_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->d:Ljava/lang/String;

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->d:Ljava/lang/String;

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->b:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v1}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lic/c;->i1(Lcom/bumptech/glide/request/g;)Lic/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/g;->M0(Ls0/k;)Ls0/k;

    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->e:Landroid/net/Uri;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->f:I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->g:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d0214

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a051b

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/github/chrisbanes/photoview/PhotoView;

    iput-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->b:Lcom/github/chrisbanes/photoview/PhotoView;

    const p2, 0x7f0a073b

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->c:Landroid/widget/FrameLayout;

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->b:Lcom/github/chrisbanes/photoview/PhotoView;

    new-instance p3, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$a;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$a;-><init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V

    invoke-virtual {p2, p3}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnPhotoTapListener(Lh1/f;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;->b:Lcom/github/chrisbanes/photoview/PhotoView;

    new-instance p3, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$b;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment$b;-><init>(Lcom/guochao/faceshow/ImageBrowse/ImageDetailFragment;)V

    invoke-virtual {p2, p3}, Lcom/github/chrisbanes/photoview/PhotoView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p1
.end method
