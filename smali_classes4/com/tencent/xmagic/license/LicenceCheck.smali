.class public Lcom/tencent/xmagic/license/LicenceCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;,
        Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final AES_DECODE_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field public static final ERROR_ASSET_FILE_NOT_EXIST:I = -0x6

.field public static final ERROR_DECODE_CHECK:I = -0x3

.field public static final ERROR_ENDDATE:I = -0xb

.field public static final ERROR_FEATURE_ERROR:I = -0x5

.field public static final ERROR_FILE_CONTENT_EMPTY:I = -0x8

.field public static final ERROR_FILE_NOT_EXIST:I = -0x7

.field public static final ERROR_JSON_FORMAT:I = -0x1

.field public static final ERROR_OK:I = 0x0

.field public static final ERROR_PACKAGE:I = -0x4

.field public static final ERROR_SIGNATURE_CHECK:I = -0x2

.field public static final ERROR_WRITE_LICENCE_FAILED:I = -0x9

.field public static final ERROR_WRITE_PITU_LICENCE_FAILED:I = -0xa

.field private static final KEY_APPID:Ljava/lang/String; = "appId"

.field private static final KEY_ENCRYPTED_LICENSE:Ljava/lang/String; = "encryptedLicense"

.field private static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final LICENCE_DIR:Ljava/lang/String; = "xmagic/licence"

.field public static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA256WithRSA"

.field private static final TAG:Ljava/lang/String; = "LicenceCheck"

.field private static sInstance:Lcom/tencent/xmagic/license/LicenceCheck;


# instance fields
.field private PUBLIC_KEY:Ljava/lang/String;

.field private XMAGIC_FILE:Ljava/lang/String;

.field private mBase64Licence:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;

.field private mXMagicCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "YTXMagicSDK.licence"

    .line 2
    iput-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->XMAGIC_FILE:Ljava/lang/String;

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq4teqkW/TUruU89ElNVd\nKrpSL+HCITruyb6BS9mW6M4mqmxDhazDmQgMKNfsA0d2kxFucCsXTyesFNajaisk\nrAzVJpNGO75bQFap4jYzJYskIuas6fgIS7zSmGXgRcp6i0ZBH3pkVCXcgfLfsVCO\n+sN01jFhFgOC0LY2f1pJ+3jqktAlMIxy8Q9t7XwwL5/n8/Sledp7TwuRdnl2OPl3\nycCTRkXtOIoRNB9vgd9XooTKiEdCXC7W9ryvtwCiAB82vEfHWXXgzhsPC13URuFy\n1JqbWJtTCCcfsCVxuBplhVJAQ7JsF5SMntdJDkp7rJLhprgsaim2CRjcVseNmw97\nbwIDAQAB"

    .line 3
    iput-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->PUBLIC_KEY:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;

    const-string v1, "XMagicSDK.licence"

    invoke-direct {v0, p0, v1}, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;-><init>(Lcom/tencent/xmagic/license/LicenceCheck;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mXMagicCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/xmagic/license/LicenceCheck;Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/license/LicenceCheck;->saveLastModified(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/xmagic/license/LicenceCheck;Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->readDownloadTempLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/xmagic/license/LicenceCheck;Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/license/LicenceCheck;->verifyNewLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/tencent/xmagic/license/LicenceCheck;Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->saveTempLocal(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)V

    return-void
.end method

.method private checkAssetLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->checkAssetLicenceExist(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x6

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->localName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/xmagic/license/FileUtil;->readAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "LicenceCheck"

    const-string v0, "checkAssetLicence, licenceAssetStr is empty"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x8

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/tencent/xmagic/license/LicenceCheck;->checkLicenceInfo(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private checkAssetLicenceExist(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->localName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/tencent/xmagic/license/FileUtil;->isAssetFileExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private checkDateNotExpired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-static {p1}, Lcom/tencent/xmagic/license/LicenceCheck;->timeStrToMillsSecond(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-static {p2}, Lcom/tencent/xmagic/license/LicenceCheck;->timeStrToMillsSecond(Ljava/lang/String;)J

    move-result-wide p1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const-string v5, "LicenceCheck"

    const-string v6, ", endDate: "

    const-wide/16 v7, 0x0

    cmp-long v9, v0, v7

    if-ltz v9, :cond_3

    cmp-long v9, p1, v7

    if-gez v9, :cond_0

    goto :goto_1

    :cond_0
    cmp-long v7, p1, v2

    if-ltz v7, :cond_2

    cmp-long v7, v0, v2

    if-lez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "check date expire! currentDate: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", startDate: "

    .line 6
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 11
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check date millis < 0! stateDate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private checkLocalLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)I
    .locals 3

    const-string v0, "LicenceCheck"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/xmagic/license/LicenceCheck;->getLicenceDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/tencent/xmagic/license/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, -0x7

    return p1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/tencent/xmagic/license/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "read licence file error: "

    .line 4
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    .line 5
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "checkLocalLicence, licenceStr is empty"

    .line 6
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x8

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/tencent/xmagic/license/LicenceCheck;->checkLicenceInfo(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private decodeLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LicenceCheck"

    if-eqz v0, :cond_0

    const-string p1, "decodeLicence, mKey is empty!!!"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 4
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->nativeIvParameterSpec([B)[B

    move-result-object p1

    .line 6
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p1, 0x0

    .line 7
    invoke-static {p2, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    :try_start_0
    const-string p2, "AES/CBC/PKCS5Padding"

    .line 8
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v3, 0x2

    .line 9
    invoke-virtual {p2, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 10
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 11
    new-instance p2, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decodeLicence : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public static getInstance()Lcom/tencent/xmagic/license/LicenceCheck;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/xmagic/license/LicenceCheck;->sInstance:Lcom/tencent/xmagic/license/LicenceCheck;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/xmagic/license/LicenceCheck;

    invoke-direct {v0}, Lcom/tencent/xmagic/license/LicenceCheck;-><init>()V

    sput-object v0, Lcom/tencent/xmagic/license/LicenceCheck;->sInstance:Lcom/tencent/xmagic/license/LicenceCheck;

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/xmagic/license/LicenceCheck;->sInstance:Lcom/tencent/xmagic/license/LicenceCheck;

    return-object v0
.end method

.method private getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 2
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    .line 3
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method private isAvailable(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Landroid/content/Context;)I
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->isCheckSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 3
    iput-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->checkAssetLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 5
    iput-boolean v0, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->isCheckSuccess:Z

    return v1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->checkLocalLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)I

    move-result p2

    if-nez p2, :cond_3

    .line 7
    iput-boolean v0, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->isCheckSuccess:Z

    return v1

    :cond_3
    return p2
.end method

.method private nativeIvParameterSpec([B)[B
    .locals 3

    .line 1
    array-length v0, p1

    const/16 v1, 0x10

    new-array v2, v1, [B

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v2
.end method

.method private onFail(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFail ret "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LicenceCheck"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private readDownloadTempLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->tmpName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/xmagic/license/FileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readLastModified(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const-string v3, "LicenceCheck.lastModified"

    .line 2
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->localName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lastModified"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveLastModified(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "LicenceCheck.lastModified"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->localName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lastModified"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private saveTempLocal(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/xmagic/license/LicenceCheck;->getLicenceDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->localName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v3, "LicenceCheck"

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete dst file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->folder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->tmpName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rename file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->isCheckSuccess:Z

    return-void
.end method

.method private setLicense(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    .line 2
    :cond_0
    iput-object p4, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->key:Ljava/lang/String;

    .line 3
    iput-object p3, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->url:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/tencent/xmagic/license/LicenceCheck;->getLicenceDir()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->folder:Ljava/lang/String;

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->folder:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->localName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/xmagic/license/FileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "LicenceCheck"

    const-string p3, "setLicense, file not exist, to download"

    .line 7
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, ""

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/license/LicenceCheck;->saveLastModified(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->downloadLicense(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)V

    :cond_2
    return-void
.end method

.method private static timeStrToMillsSecond(Ljava/lang/String;)J
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-string v0, "LicenceCheck"

    const-string/jumbo v1, "time str to millsecond failed."

    .line 3
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private verifyLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string v0, "LicenceCheck"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/xmagic/license/LicenceCheck;->PUBLIC_KEY:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/tencent/xmagic/license/LicenceCheck;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 2
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 3
    invoke-static {p3, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    .line 4
    invoke-static {v3, p3, v2}, Lcom/tencent/xmagic/license/LicenceCheck;->verifySig([B[BLjava/security/PublicKey;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 5
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "verifyLicence, exception is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    const/4 p1, -0x2

    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->onFail(I)V

    .line 8
    iget-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mListener:Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;

    if-eqz p2, :cond_0

    const-string p3, "licence check failed!! verify signature failed"

    .line 9
    invoke-interface {p2, p1, p3}, Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;->onLicenceLoaded(ILjava/lang/String;)V

    :cond_0
    const-string/jumbo p2, "verifyLicence, signature not pass!"

    .line 10
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/license/LicenceCheck;->decodeLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p1, -0x3

    .line 13
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->onFail(I)V

    .line 14
    iget-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mListener:Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;

    if-eqz p2, :cond_2

    const-string p3, "licence check failed!! decryption failed"

    .line 15
    invoke-interface {p2, p1, p3}, Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;->onLicenceLoaded(ILjava/lang/String;)V

    :cond_2
    const-string/jumbo p2, "verifyLicence, decodeValue is empty!"

    .line 16
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 17
    :cond_3
    iput-object p2, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->decodedLicenseInfo:Ljava/lang/String;

    .line 18
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "verifyLicence, object "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "TELicense"

    .line 20
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez p2, :cond_4

    .line 22
    :try_start_2
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 23
    new-instance p3, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/xmagic/license/LicenceCheck;->getLicenceDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/xmagic/license/LicenceCheck;->XMAGIC_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/tencent/xmagic/license/FileUtil;->writeFile(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 25
    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode pitu license error:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mBase64Licence:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 27
    iget-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mListener:Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;

    if-eqz p1, :cond_5

    const-string p2, "licence check success!!"

    .line 28
    invoke-interface {p1, v1, p2}, Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;->onLicenceLoaded(ILjava/lang/String;)V

    :cond_5
    return v1

    :catch_2
    move-exception p1

    .line 29
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "verifyLicence, json format error ! exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->onFail(I)V

    .line 32
    iget-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mListener:Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;

    if-eqz p2, :cond_6

    const-string p3, "licence check failed!! json error"

    .line 33
    invoke-interface {p2, p1, p3}, Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;->onLicenceLoaded(ILjava/lang/String;)V

    :cond_6
    return p1
.end method

.method private verifyNewLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)I
    .locals 5

    const-string v0, "LicenceCheck"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "appId"

    .line 2
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const-string v2, "encryptedLicense"

    .line 3
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "signature"

    .line 4
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptedLicense:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signature:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-direct {p0, p1, v2, v1}, Lcom/tencent/xmagic/license/LicenceCheck;->verifyLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->onFail(I)V

    .line 11
    iget-object p2, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mListener:Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;

    if-eqz p2, :cond_0

    const-string v0, "licence check failed!! json error"

    .line 12
    invoke-interface {p2, p1, v0}, Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;->onLicenceLoaded(ILjava/lang/String;)V

    :cond_0
    return p1
.end method

.method public static verifySig([B[BLjava/security/PublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, "SHA256WithRSA"

    .line 1
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkLicenceInfo(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/license/LicenceCheck;->verifyNewLicence(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public downloadLicense(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LicenceCheck"

    if-eqz v0, :cond_0

    const-string p1, "downloadLicense, mUrl is empty, ignore!"

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->isDownloadStart:Z

    if-eqz v0, :cond_1

    const-string p1, "downloadLicense, in downloading, ignore"

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    new-instance v7, Lcom/tencent/xmagic/license/LicenceCheck$1;

    invoke-direct {v7, p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck$1;-><init>(Lcom/tencent/xmagic/license/LicenceCheck;Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    const-string p1, "context is NULL !!! Please set context in method:setLicense(Context context, String url, String key)"

    .line 7
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/xmagic/license/LicenceCheck;->getLicenceDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->folder:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/license/LicenceCheck;->readLastModified(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;)Ljava/lang/String;

    move-result-object v9

    .line 10
    new-instance v0, Lcom/tencent/xmagic/license/HttpFileUtil;

    iget-object v3, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->url:Ljava/lang/String;

    iget-object v5, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->folder:Ljava/lang/String;

    iget-object v6, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->tmpName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/tencent/xmagic/license/HttpFileUtil;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/license/HttpFileListener;ZLjava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 12
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p1, Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;->isDownloadStart:Z

    return-void
.end method

.method public getBase64Licence()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mBase64Licence:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenceDir()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "xmagic/licence"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLicensePathBase64()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/xmagic/license/LicenceCheck;->getLicenceDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/xmagic/license/LicenceCheck;->XMAGIC_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "LicenceCheck"

    const-string v1, "getLicensePathBase64: licFile is not exists"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    .line 6
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    const/4 v1, 0x0

    .line 8
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public setListener(Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mListener:Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;

    return-void
.end method

.method public setXMagicLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/license/LicenceCheck;->mXMagicCtx:Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/xmagic/license/LicenceCheck;->setLicense(Lcom/tencent/xmagic/license/LicenceCheck$TXSignContext;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
