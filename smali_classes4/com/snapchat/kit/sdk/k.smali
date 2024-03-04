.class Lcom/snapchat/kit/sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

.field private final f:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

.field private final g:Z

.field final h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;ZLjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/k;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/k;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/snapchat/kit/sdk/k;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/snapchat/kit/sdk/k;->d:Ljava/util/List;

    .line 6
    iput-object p5, p0, Lcom/snapchat/kit/sdk/k;->e:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    .line 7
    iput-object p6, p0, Lcom/snapchat/kit/sdk/k;->f:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    .line 8
    iput-boolean p7, p0, Lcom/snapchat/kit/sdk/k;->g:Z

    .line 9
    iput-object p8, p0, Lcom/snapchat/kit/sdk/k;->h:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)Lbe/d;
    .locals 1

    new-instance v0, Lbe/d;

    invoke-direct {v0, p0, p1}, Lbe/d;-><init>(Landroid/content/SharedPreferences;Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method static b(Lce/c;)Lce/b;
    .locals 0

    return-object p0
.end method

.method static c(Lhe/c;)Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;
    .locals 1

    new-instance v0, Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;

    invoke-direct {v0, p0}, Lcom/snapchat/kit/sdk/SnapKitAppLifecycleObserver;-><init>(Lhe/c;)V

    return-object v0
.end method

.method static m()Lcom/google/gson/Gson;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method static p()Lokhttp3/OkHttpClient;
    .locals 1

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    return-object v0
.end method

.method static q()Ljava/util/Random;
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    return-object v0
.end method

.method static r()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method final d()Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/k;->e:Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;

    return-object v0
.end method

.method final e(Lcom/google/gson/Gson;Landroid/content/SharedPreferences;)Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/k;->a:Landroid/content/Context;

    const-string v1, "com.snapchat.connect.sdk.secureSharedPreferences"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "AndroidKeyStore"

    .line 4
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v4, 0x17

    const-string v5, "rsa_public"

    if-lt v3, v4, :cond_2

    .line 7
    :try_start_1
    invoke-interface {p2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v1}, Lcom/snapchat/kit/sdk/core/security/SecretKeyFactory;->getFromKeyStore(Ljava/security/KeyStore;)Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;

    move-result-object p2
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    :try_start_2
    invoke-interface {p2, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;

    .line 10
    invoke-virtual {p1, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;
    :try_end_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    .line 11
    :catch_0
    :try_start_3
    new-instance v3, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;

    iget-object v4, p0, Lcom/snapchat/kit/sdk/k;->a:Landroid/content/Context;

    invoke-direct {v3, v1, v4, v2}, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;-><init>(Ljava/security/KeyStore;Landroid/content/Context;Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;)V

    .line 12
    invoke-virtual {v3}, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;->getPublicKeyParams()Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 13
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 14
    invoke-virtual {v3}, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;->getPublicKeyParams()Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    :cond_3
    invoke-static {p2, v3, v1}, Lcom/snapchat/kit/sdk/core/security/SecretKeyFactory;->getFromSharedPreferences(Landroid/content/SharedPreferences;Lcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;Z)Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;

    move-result-object p2

    .line 17
    :goto_1
    invoke-virtual {p2}, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;->isNewSecret()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    :cond_4
    new-instance v1, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;

    invoke-virtual {p2}, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;-><init>(Ljavax/crypto/SecretKey;Lcom/google/gson/Gson;)V
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/gson/JsonParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 20
    :catch_1
    new-instance v1, Lcom/snapchat/kit/sdk/core/security/InsecureEncryptDecrypt;

    invoke-direct {v1}, Lcom/snapchat/kit/sdk/core/security/InsecureEncryptDecrypt;-><init>()V

    goto :goto_2

    .line 21
    :catch_2
    new-instance v1, Lcom/snapchat/kit/sdk/core/security/InsecureEncryptDecrypt;

    invoke-direct {v1}, Lcom/snapchat/kit/sdk/core/security/InsecureEncryptDecrypt;-><init>()V

    .line 22
    :goto_2
    new-instance p2, Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;

    invoke-direct {p2, v0, v1, p1}, Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;-><init>(Landroid/content/SharedPreferences;Lcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;Lcom/google/gson/Gson;)V

    return-object p2
.end method

.method final f(Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;Lbe/d;Lce/c;Lokhttp3/OkHttpClient;Ldg/a;Lcom/google/gson/Gson;Ldg/a;Lge/f;Ldg/a;)Lcom/snapchat/kit/sdk/f;
    .locals 18
    .param p1    # Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;",
            "Lbe/d;",
            "Lce/c;",
            "Lokhttp3/OkHttpClient;",
            "Ldg/a<",
            "Lie/j;",
            ">;",
            "Lcom/google/gson/Gson;",
            "Ldg/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;>;",
            "Lge/f;",
            "Ldg/a<",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/OpMetric;",
            ">;>;)",
            "Lcom/snapchat/kit/sdk/f;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v17, Lcom/snapchat/kit/sdk/f;

    iget-object v2, v0, Lcom/snapchat/kit/sdk/k;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/snapchat/kit/sdk/k;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/snapchat/kit/sdk/k;->d:Ljava/util/List;

    iget-object v5, v0, Lcom/snapchat/kit/sdk/k;->a:Landroid/content/Context;

    iget-object v15, v0, Lcom/snapchat/kit/sdk/k;->f:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    iget-boolean v14, v0, Lcom/snapchat/kit/sdk/k;->g:Z

    move-object/from16 v1, v17

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v16, v14

    move-object/from16 v14, p9

    invoke-direct/range {v1 .. v16}, Lcom/snapchat/kit/sdk/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;Lcom/snapchat/kit/sdk/core/security/SecureSharedPreferences;Lbe/d;Lce/c;Lokhttp3/OkHttpClient;Ldg/a;Lcom/google/gson/Gson;Ldg/a;Lge/f;Ldg/a;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V

    return-object v17
.end method

.method final g(Lcom/snapchat/kit/sdk/core/config/f;Lhe/d;Lde/b;Lcom/snapchat/kit/sdk/f;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;)Lhe/c;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/kit/sdk/core/config/f;",
            "Lhe/d;",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SkateEvent;",
            ">;",
            "Lcom/snapchat/kit/sdk/f;",
            "Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;",
            ")",
            "Lhe/c;"
        }
    .end annotation

    new-instance v8, Lhe/c;

    iget-object v6, p0, Lcom/snapchat/kit/sdk/k;->f:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    iget-boolean v7, p0, Lcom/snapchat/kit/sdk/k;->g:Z

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lhe/c;-><init>(Lcom/snapchat/kit/sdk/core/config/f;Lhe/d;Lde/b;Lcom/snapchat/kit/sdk/f;Lcom/snapchat/kit/sdk/core/metrics/model/SnapKitInitType;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V

    return-object v8
.end method

.method final h()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/k;->a:Landroid/content/Context;

    return-object v0
.end method

.method final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method final k()Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;
    .locals 1

    iget-object v0, p0, Lcom/snapchat/kit/sdk/k;->f:Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;

    return-object v0
.end method

.method final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/snapchat/kit/sdk/k;->g:Z

    return v0
.end method

.method final n()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/snapchat/kit/sdk/k;->a:Landroid/content/Context;

    const-string v1, "com.snapchat.connect.sdk.sharedPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method final o()Lokhttp3/Cache;
    .locals 4

    new-instance v0, Lokhttp3/Cache;

    iget-object v1, p0, Lcom/snapchat/kit/sdk/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-wide/32 v2, 0x100000

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    return-object v0
.end method
