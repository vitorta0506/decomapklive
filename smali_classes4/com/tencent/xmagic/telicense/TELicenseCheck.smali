.class public Lcom/tencent/xmagic/telicense/TELicenseCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;,
        Lcom/tencent/xmagic/telicense/TELicenseCheck$Holder;,
        Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;
    }
.end annotation


# static fields
.field static final AES_DECODE_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field static final ASSET_VCUBE_FILE:Ljava/lang/String; = "v_cube.license"

.field static final DOWNLOAD_VCUBE_FILE:Ljava/lang/String; = "vcube.license"

.field public static final ERROR_AUTH_ERROR:I = -0xd

.field public static final ERROR_DECODE_CHECK:I = -0x8

.field public static final ERROR_DOWNLOAD_AND_ASSET_BOTH_FAILED:I = -0xc

.field public static final ERROR_DOWNLOAD_ERROR:I = -0x3

.field public static final ERROR_FILE_CONTENT_EMPTY:I = -0x5

.field public static final ERROR_INVALID_INPUT:I = -0x1

.field public static final ERROR_JSON_ERROR_VCUBE:I = -0x6

.field public static final ERROR_JSON_FORMAT_TE:I = -0x9

.field public static final ERROR_LOCAL_TE_LICENSE_EMPTY:I = -0x4

.field public static final ERROR_OK:I = 0x0

.field public static final ERROR_SIGNATURE_CHECK:I = -0x7

.field public static final ERROR_TE_LICENSE_CONTENT_EMPTY:I = -0xa

.field public static final ERROR_WRITE_TE_LICENSE_FAILED:I = -0xb

.field static final KEY_APPID:Ljava/lang/String; = "appId"

.field static final KEY_ENCRYPTED_LICENSE:Ljava/lang/String; = "encryptedLicense"

.field static final KEY_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final LICENSE_DIR:Ljava/lang/String;

.field static final PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq4teqkW/TUruU89ElNVd\nKrpSL+HCITruyb6BS9mW6M4mqmxDhazDmQgMKNfsA0d2kxFucCsXTyesFNajaisk\nrAzVJpNGO75bQFap4jYzJYskIuas6fgIS7zSmGXgRcp6i0ZBH3pkVCXcgfLfsVCO\n+sN01jFhFgOC0LY2f1pJ+3jqktAlMIxy8Q9t7XwwL5/n8/Sledp7TwuRdnl2OPl3\nycCTRkXtOIoRNB9vgd9XooTKiEdCXC7W9ryvtwCiAB82vEfHWXXgzhsPC13URuFy\n1JqbWJtTCCcfsCVxuBplhVJAQ7JsF5SMntdJDkp7rJLhprgsaim2CRjcVseNmw97\nbwIDAQAB"

.field static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA256WithRSA"

.field private static final TAG:Ljava/lang/String; = "TELicenseCheck"

.field static final TENCENT_EFFECT_LICENSE_FILE:Ljava/lang/String; = "tencent_effect.license"


# instance fields
.field private final lockForTELicense:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mInProgress:Z

.field private mLockForProgress:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tencent_effect_license"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download_license"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->LICENSE_DIR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mInProgress:Z

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mLockForProgress:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->lockForTELicense:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/xmagic/telicense/TELicenseCheck$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->onLicenseLoaded(Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/xmagic/telicense/TELicenseCheck;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->notifyProgressEnd()V

    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/xmagic/telicense/TELicenseCheck;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->readLocalTELicenseBase64()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->setLicense(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->saveLastModified(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/xmagic/telicense/TELicenseCheck;Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->readDownloadTempFile(Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->verifyNewLicense(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/tencent/xmagic/telicense/TELicenseCheck;Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->saveTempLocal(Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;)V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/xmagic/telicense/TELicenseCheck;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tencent/xmagic/telicense/TELicenseCheck;ILcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->notifyLicenseLoadError(ILcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    return-void
.end method

.method static decodeLicense(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TELicenseCheck"

    if-eqz v0, :cond_0

    const-string p0, "decodeLicense, mKey is empty!!!"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 4
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->nativeIvParameterSpec([B)[B

    move-result-object p0

    .line 6
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p0, 0x0

    .line 7
    invoke-static {p1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    :try_start_0
    const-string p1, "AES/CBC/PKCS5Padding"

    .line 8
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v3, 0x2

    .line 9
    invoke-virtual {p1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 10
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 11
    new-instance p1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decodeLicense : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private downloadLicense(Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck$2;-><init>(Lcom/tencent/xmagic/telicense/TELicenseCheck;Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    const-string/jumbo p2, "vcube.license"

    .line 2
    invoke-direct {p0, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->readLastModified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    new-instance p2, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;

    iget-object v1, p1, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->folder:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->tmpName:Ljava/lang/String;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TEHttpFileListener;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/xmagic/telicense/TEHttpFileUtil;->run()V

    return-void
.end method

.method private getErrorMsg(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "Other errors"

    return-object p1

    :pswitch_1
    const-string p1, "Success"

    return-object p1

    :pswitch_2
    const-string p1, "Invalid input parameter"

    return-object p1

    :pswitch_3
    const-string p1, "Download failed, please check the network settings"

    return-object p1

    :pswitch_4
    const-string p1, "The TE authorization information read from the local is empty"

    return-object p1

    :pswitch_5
    const-string p1, "Read TEMP License file content is empty"

    return-object p1

    :pswitch_6
    const-string p1, "Json error found in vcube.license file"

    return-object p1

    :pswitch_7
    const-string p1, "Verify signature failed"

    return-object p1

    :pswitch_8
    const-string p1, "Decryption failed"

    return-object p1

    :pswitch_9
    const-string p1, "Json error found in TELicense field"

    return-object p1

    :pswitch_a
    const-string p1, "The TE authorization information parsed from the network is empty"

    return-object p1

    :pswitch_b
    const-string p1, "Failed to write TE authorization information to local file"

    return-object p1

    :pswitch_c
    const-string p1, "The download failed, and the parsing of the local asset also failed"

    return-object p1

    :pswitch_d
    const-string p1, "Authentication failed, please check whether so file is in the package, or the so path has been set correctly"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0xd
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getInstance()Lcom/tencent/xmagic/telicense/TELicenseCheck;
    .locals 1

    invoke-static {}, Lcom/tencent/xmagic/telicense/TELicenseCheck$Holder;->access$000()Lcom/tencent/xmagic/telicense/TELicenseCheck;

    move-result-object v0

    return-object v0
.end method

.method private getLicenseDir()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->LICENSE_DIR:Ljava/lang/String;

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

.method static getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    .line 3
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method static nativeIvParameterSpec([B)[B
    .locals 3

    .line 1
    array-length v0, p0

    const/16 v1, 0x10

    new-array v2, v1, [B

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v2
.end method

.method private notifyLicenseLoadError(ILcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLicenseLoadError: errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TELicenseCheck"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-interface {p2, p1, v0}, Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;->onLicenseCheckFinish(ILjava/lang/String;)V

    return-void
.end method

.method private notifyProgressEnd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mLockForProgress:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TELicenseCheck"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLicense: notifyProgressEnd,currentThead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mInProgress:Z

    .line 4
    iget-object v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mLockForProgress:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onLicenseLoaded(Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLicenseLoaded: licenseInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TELicenseCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v0, p1, v2}, Lcom/tencent/xmagic/auth/Auth;->authByBase64(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/xmagic/auth/Auth$AuthResult;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLicenseLoaded,auth result json ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/tencent/xmagic/auth/Json;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-boolean v0, p1, Lcom/tencent/xmagic/auth/Auth$AuthResult;->isSucceed:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;->onLicenseCheckFinish(ILjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/tencent/xmagic/auth/Auth$AuthResult;->authResultFail:Lcom/tencent/xmagic/auth/Auth$AuthResultFail;

    .line 7
    iget v0, p1, Lcom/tencent/xmagic/auth/Auth$AuthResultFail;->code:I

    iget-object p1, p1, Lcom/tencent/xmagic/auth/Auth$AuthResultFail;->msg:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;->onLicenseCheckFinish(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLicenseLoaded: auth error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0xd

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->notifyLicenseLoadError(ILcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    :goto_0
    return-void
.end method

.method private readDownloadTempFile(Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->folder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->tmpName:Ljava/lang/String;

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

.method private readLastModified(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mContext:Landroid/content/Context;

    const-string v1, "TELicenseCheck.lastModified"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lastModified"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private readLocalTELicenseBase64()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->lockForTELicense:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->getLicenseDir()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tencent_effect.license"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v1, "TELicenseCheck"

    const-string v2, "getLicensePathBase64: licFile is not exists"

    .line 4
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-object v3

    .line 6
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v1, v1, [B

    .line 8
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const/4 v4, 0x0

    .line 10
    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 13
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v3

    .line 14
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    .line 15
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_3
    move-exception v1

    .line 16
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 17
    :cond_1
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-object v3

    :catchall_1
    move-exception v1

    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_2

    .line 18
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_4
    move-exception v2

    .line 19
    :try_start_9
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :cond_2
    :goto_4
    throw v1

    :catchall_2
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1
.end method

.method private saveLastModified(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mContext:Landroid/content/Context;

    const-string v1, "TELicenseCheck.lastModified"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".lastModified"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private saveTempLocal(Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->getLicenseDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->localName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v3, "TELicenseCheck"

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

    iget-object v5, p1, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->folder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->tmpName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rename file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setLicense(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mLockForProgress:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mLockForProgress:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mInProgress:Z

    .line 6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "TELicenseCheck"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLicense: currentThead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->readLocalTELicenseBase64()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string/jumbo v0, "vcube.license"

    const-string v1, ""

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->saveLastModified(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 11
    :try_start_3
    iget-object v1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mContext:Landroid/content/Context;

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/tencent/xmagic/auth/Auth;->authByBase64(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/xmagic/auth/Auth$AuthResult;

    move-result-object v0

    const-string v1, "TELicenseCheck"

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLicense: cache auth result json ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/tencent/xmagic/auth/Json;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-boolean v0, v0, Lcom/tencent/xmagic/auth/Auth$AuthResult;->isSucceed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;->onLicenseCheckFinish(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_1

    move-object p3, v2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "TELicenseCheck"

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLicense: cache auth error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_2
    :goto_1
    new-instance v0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;

    const-string/jumbo v1, "vcube.license"

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;-><init>(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$1;)V

    .line 17
    iput-object p2, v0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->key:Ljava/lang/String;

    .line 18
    iput-object p1, v0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->url:Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->getLicenseDir()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;->folder:Ljava/lang/String;

    .line 20
    invoke-direct {p0, v0, p3}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->downloadLicense(Lcom/tencent/xmagic/telicense/TELicenseCheck$TXSignContext;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private verifyLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "TELicenseCheck"

    const/4 v1, -0x7

    :try_start_0
    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAq4teqkW/TUruU89ElNVd\nKrpSL+HCITruyb6BS9mW6M4mqmxDhazDmQgMKNfsA0d2kxFucCsXTyesFNajaisk\nrAzVJpNGO75bQFap4jYzJYskIuas6fgIS7zSmGXgRcp6i0ZBH3pkVCXcgfLfsVCO\n+sN01jFhFgOC0LY2f1pJ+3jqktAlMIxy8Q9t7XwwL5/n8/Sledp7TwuRdnl2OPl3\nycCTRkXtOIoRNB9vgd9XooTKiEdCXC7W9ryvtwCiAB82vEfHWXXgzhsPC13URuFy\n1JqbWJtTCCcfsCVxuBplhVJAQ7JsF5SMntdJDkp7rJLhprgsaim2CRjcVseNmw97\nbwIDAQAB"

    .line 1
    invoke-static {v2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    const/4 v3, 0x0

    .line 2
    invoke-static {p2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 3
    invoke-static {p3, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    .line 4
    invoke-static {v4, p3, v2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->verifySig([B[BLjava/security/PublicKey;)Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p3, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->decodeLicense(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string/jumbo p1, "verifyLicense, decodeValue is empty!"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x8

    return p1

    .line 8
    :cond_1
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "verifyLicense, object "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "TELicense"

    const/4 p3, 0x0

    .line 10
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "pituLicense"

    .line 12
    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p1, -0xa

    return p1

    .line 14
    :cond_3
    invoke-direct {p0, p1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->writeLocalTELicenseBase64(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_4

    const/16 p1, -0xb

    return p1

    :cond_4
    return v3

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "verifyLicense, json format error ! exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x9

    return p1

    :catch_1
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "verifyLicense, exception is : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private verifyNewLicense(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "TELicenseCheck"

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, -0x5

    return p1

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "appId"

    .line 3
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    const-string v2, "encryptedLicense"

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "signature"

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encryptedLicense:"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
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

    .line 9
    invoke-direct {p0, p1, v2, v1}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->verifyLicense(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, -0x6

    return p1
.end method

.method static verifySig([B[BLjava/security/PublicKey;)Z
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

.method private writeLocalTELicenseBase64(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->lockForTELicense:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->getLicenseDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tencent_effect.license"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/tencent/xmagic/license/FileUtil;->writeFile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 5
    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "TELicenseCheck"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode pitu license error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v0

    return v1

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public setTELicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/telicense/TELicenseCheck;->mContext:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/xmagic/telicense/TELicenseCheck$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/tencent/xmagic/telicense/TELicenseCheck$1;-><init>(Lcom/tencent/xmagic/telicense/TELicenseCheck;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, -0x1

    .line 6
    invoke-direct {p0, p1, p4}, Lcom/tencent/xmagic/telicense/TELicenseCheck;->notifyLicenseLoadError(ILcom/tencent/xmagic/telicense/TELicenseCheck$TELicenseCheckListener;)V

    return-void
.end method
