.class public Lcom/guochao/faceshow/utils/Tools;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mGson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/Tools;->addBlackName(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static addBlackList(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/views/e;

    new-instance v1, Lcom/guochao/faceshow/utils/Tools$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/utils/Tools$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120474

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->f(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12069a

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/e;->k(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1208a3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/views/e;->i(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/e;->show()V

    return-void
.end method

.method private static addBlackName(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->O(Landroid/content/Context;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->BLACL_LIST_ADD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->Q(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string/jumbo v1, "userId"

    .line 2
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "From_Account"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "To_Account"

    .line 3
    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/utils/Tools$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/utils/Tools$2;-><init>(Landroid/app/Activity;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public static captureScreen(Landroid/view/Window;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-object p0
.end method

.method public static dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DateFormatProvider;->getAppLanguageFormatter(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deleteDirWihtFile(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_6

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    array-length v0, v0

    if-lez v0, :cond_5

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 6
    aget-object v2, v0, v1

    if-nez v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-static {v2}, Lcom/guochao/faceshow/utils/Tools;->deleteDirWihtFile(Ljava/io/File;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_2
    return-void
.end method

.method protected static getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Tools;->mGson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/Tools;->mGson:Lcom/google/gson/Gson;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/utils/Tools;->mGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static isNumber(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "^[0-9]{6,18}$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static isPasword(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[a-zA-Z0-9]{6,18}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static playLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    const-string/jumbo v1, "userId"

    .line 2
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "\n"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, " "

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static timeString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    sub-long/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x3c

    .line 5
    div-long v7, v1, v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    div-long/2addr v7, v5

    const-wide/16 v11, 0x18

    div-long/2addr v7, v11

    .line 6
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-wide/16 v3, 0x1e

    const-wide/16 v11, 0x1

    const-string v0, " "

    cmp-long v13, v7, v3

    if-lez v13, :cond_4

    .line 7
    div-long/2addr v7, v3

    const-wide/16 v1, 0x6

    cmp-long v3, v7, v1

    if-ltz v3, :cond_2

    const-string p1, "MM/dd/yyyy"

    .line 8
    invoke-static {p0, p1}, Lcom/guochao/faceshow/utils/Tools;->dateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p0, v7, v11

    if-nez p0, :cond_3

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1208c7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1208c8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    cmp-long p0, v7, v11

    if-lez p0, :cond_5

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1208c1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p0, :cond_6

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1208c0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :cond_6
    div-long v3, v1, v9

    div-long/2addr v3, v5

    div-long/2addr v3, v5

    cmp-long p0, v3, v11

    if-lez p0, :cond_7

    .line 14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1208c3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p0, :cond_8

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1208c2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    long-to-int p0, v1

    .line 16
    div-int/lit16 p0, p0, 0x3e8

    div-int/lit8 p0, p0, 0x3c

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge p0, v1, :cond_9

    const/4 p0, 0x1

    :cond_9
    if-ne p0, v2, :cond_a

    const p0, 0x7f12059c

    .line 17
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p0, 0x7f1208c6

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
