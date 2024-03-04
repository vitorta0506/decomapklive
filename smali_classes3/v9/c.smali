.class public Lv9/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lv9/c;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 4
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 6
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static c()V
    .locals 1

    .line 1
    invoke-static {}, Lv9/g;->a()Lv9/g;

    move-result-object v0

    invoke-virtual {v0}, Lv9/g;->c()V

    .line 2
    invoke-static {}, Lv9/f;->c()V

    return-void
.end method

.method private static d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;Ljava/lang/String;)V
    .locals 8

    move-object v1, p0

    move-object v0, p1

    move-object v5, p2

    move-object v6, p3

    move-object v3, p5

    move-object/from16 v7, p8

    .line 1
    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p0

    move v1, p6

    move-object v2, p5

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p8

    .line 2
    invoke-static/range {v0 .. v6}, Lv9/f;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p0

    move v1, p6

    move-object v2, p5

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p8

    .line 4
    invoke-static/range {v0 .. v6}, Lv9/f;->b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {}, Lv9/g;->a()Lv9/g;

    move-result-object v0

    move-object v1, p0

    move v2, p6

    move-object v3, p5

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lv9/g;->b(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Instagram;->NAME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lv9/b;->a(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_3
    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;->NAME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    invoke-static {p0, p5, p2, p3}, Lv9/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_4
    const-class v2, Lcom/twitter/sdk/android/core/l;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    invoke-static {p0, p5, p2, p3, v7}, Lv9/e;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_5
    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SnapChat;->NAME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    invoke-static {p0, p5, p2, p3, v7}, Lv9/d;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_6
    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WhatsApp;->NAME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lv9/h;->a(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_7
    sget-object v2, Lcom/guochao/faceshow/aaspring/beans/More;->NAME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x3

    .line 20
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "text/plain"

    .line 21
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s\n%s"

    .line 22
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_8
    return-void
.end method

.method public static e(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lu9/a;)V
    .locals 10

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v4, p1

    goto :goto_0

    :cond_1
    move-object v4, p3

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object/from16 v6, p6

    move v7, p5

    move-object/from16 v8, p7

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Lv9/c;->d(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lu9/a;)V
    .locals 0

    .line 1
    sget-object p4, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$FaceBook;->NAME:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 2
    new-instance p1, Lcom/facebook/share/model/ShareVideo$Builder;

    invoke-direct {p1}, Lcom/facebook/share/model/ShareVideo$Builder;-><init>()V

    .line 3
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/ShareVideo$Builder;->setLocalUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/facebook/share/model/ShareVideoContent$Builder;

    invoke-direct {p2}, Lcom/facebook/share/model/ShareVideoContent$Builder;-><init>()V

    .line 6
    invoke-virtual {p2, p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setVideo(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->build()Lcom/facebook/share/model/ShareVideoContent;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {p2, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 9
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {p2, p1, p0}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    return-void

    .line 10
    :cond_0
    const-class p4, Lcom/twitter/sdk/android/core/l;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 11
    invoke-static {p0, p2, p3}, Lv9/e;->c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_1
    sget-object p4, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$SnapChat;->NAME:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 13
    invoke-static {p0, p2, p3}, Lv9/d;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_2
    sget-object p4, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Youtube;->NAME:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 15
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lv9/i;->d(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_3
    sget-object p4, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$WhatsApp;->NAME:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 17
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lv9/h;->b(Landroid/app/Activity;Ljava/io/File;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_4
    sget-object p4, Lcom/guochao/faceshow/aaspring/beans/SharePlatformBean$Instagram;->NAME:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    invoke-static {p0, p3, p2}, Lv9/b;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V
    .locals 11

    move-object v5, p4

    .line 1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez v5, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 2
    :goto_0
    invoke-static {v0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v0

    new-instance v1, Lv9/c$b;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct {v1, p0, p2, p3, p4}, Lv9/c$b;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v0

    .line 3
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v9

    new-instance v10, Lv9/c$a;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lv9/c$a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILu9/a;)V

    .line 4
    invoke-virtual {v9, v10}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    return-void
.end method
