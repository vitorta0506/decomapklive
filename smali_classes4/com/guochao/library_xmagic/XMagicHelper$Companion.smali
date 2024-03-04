.class public final Lcom/guochao/library_xmagic/XMagicHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/library_xmagic/XMagicHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0006H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J \u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0007J\u000e\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004R$\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00068\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0013R\u0016\u0010\u001c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001dR\u001a\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"R\u0016\u0010#\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u001dR\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010\u001d\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/guochao/library_xmagic/XMagicHelper$Companion;",
        "",
        "",
        "checkDone",
        "Landroid/content/Context;",
        "context",
        "",
        "oldPath",
        "newPath",
        "",
        "copyAssets",
        "Lcom/tencent/xmagic/license/LicenceCheck;",
        "licenceCheck",
        "checkLicence",
        "beautyKey",
        "beautyLicenceUrl",
        "init",
        "copyRes",
        "sBaseDir",
        "Ljava/lang/String;",
        "getSBaseDir",
        "()Ljava/lang/String;",
        "setSBaseDir",
        "(Ljava/lang/String;)V",
        "",
        "RESOURCE_VERSION_CODE",
        "I",
        "TAG",
        "licenceChecked",
        "Z",
        "resourceUnzipped",
        "",
        "Lcom/guochao/library_xmagic/a;",
        "sCallbacks",
        "Ljava/util/List;",
        "sInitComplete",
        "sInited",
        "<init>",
        "()V",
        "lib_xmagic_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->init$lambda-0(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$checkDone(Lcom/guochao/library_xmagic/XMagicHelper$Companion;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->checkDone()V

    return-void
.end method

.method public static final synthetic access$checkLicence(Lcom/guochao/library_xmagic/XMagicHelper$Companion;Landroid/content/Context;Lcom/tencent/xmagic/license/LicenceCheck;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->checkLicence(Landroid/content/Context;Lcom/tencent/xmagic/license/LicenceCheck;)V

    return-void
.end method

.method private final checkDone()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/library_xmagic/XMagicHelper;->access$getLicenceChecked$cp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/guochao/library_xmagic/XMagicHelper;->access$getResourceUnzipped$cp()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->access$setSInitComplete$cp(Z)V

    .line 3
    invoke-static {}, Lcom/guochao/library_xmagic/XMagicHelper;->access$getSCallbacks$cp()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/library_xmagic/a;

    .line 5
    invoke-interface {v1}, Lcom/guochao/library_xmagic/a;->onInited()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/guochao/library_xmagic/XMagicHelper;->access$getSCallbacks$cp()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method private final checkLicence(Landroid/content/Context;Lcom/tencent/xmagic/license/LicenceCheck;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/tencent/xmagic/license/LicenceCheck;->getBase64Licence()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "XMagicHelper"

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/tencent/xmagic/license/LicenceCheck;->getLicensePathBase64()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string p2, "auth: fail , licenseInfo is NULL"

    .line 4
    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, ""

    .line 6
    invoke-static {p1, v0, p2}, Lcom/tencent/xmagic/auth/Auth;->authByBase64(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/xmagic/auth/Auth$AuthResult;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "auth result "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/tencent/xmagic/auth/Auth$AuthResult;->isSucceed:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 8
    invoke-static {p1}, Lcom/guochao/library_xmagic/XMagicHelper;->access$setLicenceChecked$cp(Z)V

    .line 9
    invoke-direct {p0}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->checkDone()V

    :cond_2
    return-void
.end method

.method private final copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v2, v1

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyAssets path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "XMagicHelper"

    .line 4
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 7
    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-direct {p0, p1, v5, v7}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyAssets: fail,oldPath="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",newPath="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 13
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string/jumbo p2, "{\n                    co\u2026ldPath)\n                }"

    .line 14
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 15
    :try_start_2
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 p3, 0x100000

    new-array p3, p3, [B

    .line 16
    :goto_0
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 17
    invoke-virtual {p2, p3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 19
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_1
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return v3

    :catch_2
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_3
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v3

    :catch_4
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method private static final init$lambda-0(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcom/guochao/library_xmagic/XMagicHelper;->Companion:Lcom/guochao/library_xmagic/XMagicHelper$Companion;

    invoke-virtual {p1}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->getSBaseDir()Ljava/lang/String;

    .line 2
    invoke-virtual {p1, p0}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->copyRes(Landroid/content/Context;)Z

    .line 3
    invoke-virtual {p1}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->getSBaseDir()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copyRes(Landroid/content/Context;)Z
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->getSBaseDir()Ljava/lang/String;

    move-result-object v1

    const-string v2, "light_assets"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/light/utils/FileUtils;->delete(Ljava/io/File;)V

    const-string v0, "Light3DPlugin"

    const-string v1, "LightCore"

    const-string v3, "LightHandPlugin"

    const-string v4, "LightBodyPlugin"

    const-string v5, "LightSegmentPlugin"

    .line 2
    filled-new-array {v0, v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 3
    aget-object v4, v0, v3

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->getSBaseDir()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-direct {p0, p1, v4, v5}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "copyRes: fail,path="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",new path="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->getSBaseDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XMagicHelper"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final getSBaseDir()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lcom/guochao/library_xmagic/XMagicHelper;->access$getSBaseDir$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beautyKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beautyLicenceUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/guochao/library_xmagic/XMagicHelper;->access$getSInited$cp()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->access$setSInited$cp(Z)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/xmagic/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->setSBaseDir(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/xmagic/license/LicenceCheck;->getInstance()Lcom/tencent/xmagic/license/LicenceCheck;

    move-result-object v1

    const-string v2, "getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$1;

    invoke-direct {v2, p1, v1}, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$1;-><init>(Landroid/content/Context;Lcom/tencent/xmagic/license/LicenceCheck;)V

    invoke-virtual {v1, v2}, Lcom/tencent/xmagic/license/LicenceCheck;->setListener(Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;)V

    .line 6
    invoke-virtual {v1, p1, p3, p2}, Lcom/tencent/xmagic/license/LicenceCheck;->setXMagicLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, v1}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->checkLicence(Landroid/content/Context;Lcom/tencent/xmagic/license/LicenceCheck;)V

    const/4 p2, 0x0

    const-string/jumbo p3, "xmaigc_resource"

    .line 8
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const/4 p3, -0x1

    const-string/jumbo v1, "version_code"

    .line 9
    invoke-interface {p2, v1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p3

    const/4 v1, 0x5

    if-ne p3, v1, :cond_1

    .line 10
    invoke-static {v0}, Lcom/guochao/library_xmagic/XMagicHelper;->access$setResourceUnzipped$cp(Z)V

    .line 11
    invoke-direct {p0}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->checkDone()V

    return-void

    .line 12
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p3

    new-instance v0, Lcom/guochao/library_xmagic/b;

    invoke-direct {v0, p1}, Lcom/guochao/library_xmagic/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    .line 13
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    .line 14
    new-instance p3, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$disposableObserver$2;

    invoke-direct {p3, p2}, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$disposableObserver$2;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {p1, p3}, Lio/reactivex/k;->subscribeWith(Lio/reactivex/r;)Lio/reactivex/r;

    move-result-object p1

    const-string/jumbo p2, "val sharedPreferences =\n\u2026e() {}\n                })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/reactivex/observers/b;

    return-void
.end method

.method public final setSBaseDir(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/guochao/library_xmagic/XMagicHelper;->access$setSBaseDir$cp(Ljava/lang/String;)V

    return-void
.end method
