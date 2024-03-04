.class public Lcom/appsflyer/internal/AFa1ySDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static AppsFlyer2dXConversionCallback:[B = null

.field public static getLevel:[B = null

.field private static onAppOpenAttribution:I = 0x1

.field private static onAppOpenAttributionNative:Ljava/lang/Object;

.field private static onAttributionFailureNative:J

.field private static onConversionDataFail:[B

.field public static final onConversionDataSuccess:[B

.field private static onDeepLinkingNative:I

.field private static onInstallConversionDataLoadedNative:I

.field private static onInstallConversionFailureNative:Ljava/lang/Object;

.field private static onResponseErrorNative:I

.field public static final onResponseNative:I


# direct methods
.method private static $$c(SSS)Ljava/lang/String;
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x17

    if-nez v0, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0x3f

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    neg-int p0, p0

    and-int/lit16 v1, p0, 0x3f8

    or-int/lit16 p0, p0, 0x3f8

    add-int/2addr v1, p0

    neg-int p0, p2

    and-int/lit8 p2, p0, 0x77

    or-int/lit8 p0, p0, 0x77

    add-int/2addr p2, p0

    add-int/2addr p1, v3

    new-array p0, p1, [B

    xor-int/lit8 v4, p1, 0x6a

    and-int/lit8 p1, p1, 0x6a

    shl-int/2addr p1, v3

    add-int/2addr v4, p1

    xor-int/lit8 p1, v4, -0x6b

    and-int/lit8 v4, v4, -0x6b

    shl-int/2addr v4, v3

    add-int/2addr p1, v4

    if-nez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    if-eq v4, v3, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    sget-object v0, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v1, 0x4ed9

    ushr-int/2addr v1, p0

    mul-int/lit8 p2, p2, 0x39

    add-int/lit16 p1, p1, 0xda

    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x71

    sub-int/2addr p1, v3

    new-array p0, p1, [B

    or-int/lit8 v4, p1, 0x4b

    shl-int/2addr v4, v3

    xor-int/lit8 p1, p1, 0x4b

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x34

    add-int/lit8 p1, v4, -0x1

    if-nez v0, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_3
    move v5, v1

    goto :goto_6

    :cond_5
    const/4 v4, 0x1

    :goto_4
    int-to-byte v5, p2

    aput-byte v5, p0, v4

    if-ne v4, p1, :cond_8

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v2}, Ljava/lang/String;-><init>([BI)V

    sget p0, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v2, 0x1

    :goto_5
    if-ne v2, v3, :cond_7

    return-object p1

    :cond_7
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :cond_8
    aget-byte v5, v0, v1

    and-int/lit8 v6, v4, 0x35

    or-int/lit8 v4, v4, 0x35

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x33

    add-int/lit8 v4, v6, -0x1

    sget v6, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    add-int/lit8 v6, v6, 0x6e

    sub-int/2addr v6, v3

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    rem-int/lit8 v6, v6, 0x2

    :goto_6
    xor-int/lit8 v6, v1, 0x31

    and-int/lit8 v1, v1, 0x31

    shl-int/2addr v1, v3

    add-int/2addr v6, v1

    xor-int/lit8 v1, v6, -0x30

    and-int/lit8 v6, v6, -0x30

    shl-int/2addr v6, v3

    add-int/2addr v1, v6

    add-int/2addr p2, v5

    add-int/lit8 p2, p2, -0x3

    sget v5, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    add-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    rem-int/lit8 v5, v5, 0x2

    goto :goto_4
.end method

.method static constructor <clinit>()V
    .locals 46

    const-class v1, [B

    const-class v2, Ljava/lang/String;

    invoke-static {}, Lcom/appsflyer/internal/AFa1ySDK;->init$0()V

    const/4 v3, 0x2

    .line 1
    sput v3, Lcom/appsflyer/internal/AFa1ySDK;->onDeepLinkingNative:I

    const/4 v4, 0x0

    sput v4, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionDataLoadedNative:I

    const-wide v5, -0x1ab246166f830eb9L    # -9.636672918589771E179

    sput-wide v5, Lcom/appsflyer/internal/AFa1ySDK;->onAttributionFailureNative:J

    const/16 v5, 0x333

    int-to-short v5, v5

    .line 2
    :try_start_0
    sget-object v6, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v7, 0x209

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v8, 0x199

    aget-byte v9, v6, v8

    int-to-byte v9, v9

    invoke-static {v5, v7, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    .line 3
    sget-object v7, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttributionNative:Ljava/lang/Object;

    if-nez v7, :cond_0

    const/16 v7, 0x49

    goto :goto_0

    :cond_0
    const/16 v7, 0x4b

    :goto_0
    const/16 v9, 0x4b

    const/4 v10, 0x0

    if-eq v7, v9, :cond_1

    const/16 v7, 0xc0

    aget-byte v7, v6, v7

    int-to-short v7, v7

    const/16 v9, 0x51

    aget-byte v9, v6, v9

    int-to-byte v9, v9

    aget-byte v11, v6, v8

    int-to-byte v11, v11

    invoke-static {v7, v9, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    goto :goto_1

    :cond_1
    move-object v7, v10

    :goto_1
    const/16 v9, 0xf2

    int-to-short v9, v9

    const/16 v11, 0x12b

    const/16 v12, 0x1a

    const/16 v13, 0xd

    const/4 v14, 0x1

    .line 4
    :try_start_1
    aget-byte v11, v6, v11

    int-to-byte v11, v11

    aget-byte v15, v6, v12

    int-to-byte v15, v15

    invoke-static {v9, v11, v15}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v9

    .line 5
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v11, 0x3ab

    int-to-short v11, v11

    const/16 v15, 0x72

    aget-byte v15, v6, v15

    int-to-byte v15, v15

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v11, v15, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    new-array v11, v4, [Ljava/lang/Class;

    .line 6
    invoke-virtual {v9, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 7
    invoke-virtual {v6, v10, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_3

    goto :goto_3

    :catch_0
    move-object v6, v10

    :goto_3
    const/16 v9, 0x23f

    int-to-short v9, v9

    .line 8
    :try_start_2
    sget-object v11, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v15, 0x4d

    aget-byte v15, v11, v15

    int-to-byte v15, v15

    aget-byte v3, v11, v12

    int-to-byte v3, v3

    invoke-static {v9, v15, v3}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget v9, Lcom/appsflyer/internal/AFa1ySDK;->onResponseNative:I

    and-int/lit16 v9, v9, 0x3a0

    int-to-short v9, v9

    aget-byte v15, v11, v8

    int-to-byte v15, v15

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    invoke-static {v9, v15, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v9

    new-array v11, v4, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v3, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 11
    invoke-virtual {v3, v10, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v3

    goto :goto_4

    :catch_1
    nop

    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    const/4 v3, 0x0

    goto :goto_5

    :cond_4
    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_5

    goto :goto_6

    .line 12
    :cond_5
    sget v3, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    or-int/lit8 v9, v3, 0xd

    shl-int/2addr v9, v14

    xor-int/2addr v3, v13

    sub-int/2addr v9, v3

    rem-int/lit16 v3, v9, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v3, 0x2

    rem-int/2addr v9, v3

    .line 13
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v9, 0x2fb

    int-to-short v9, v9

    sget-object v11, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v15, 0x21

    aget-byte v15, v11, v15

    int-to-byte v15, v15

    aget-byte v11, v11, v13

    int-to-byte v11, v11

    invoke-static {v9, v15, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v9

    .line 14
    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_2
    :goto_6
    move-object v3, v10

    :goto_7
    if-eqz v6, :cond_6

    .line 16
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const/16 v11, 0x29e

    int-to-short v11, v11

    sget-object v15, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v17, 0x18

    aget-byte v12, v15, v17

    int-to-byte v12, v12

    aget-byte v15, v15, v13

    int-to-byte v15, v15

    invoke-static {v11, v12, v15}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-virtual {v9, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 18
    invoke-virtual {v9, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_8

    :catch_3
    :cond_6
    move-object v9, v10

    :goto_8
    if-eqz v6, :cond_7

    const/16 v11, 0x34

    goto :goto_9

    :cond_7
    const/16 v11, 0x61

    :goto_9
    const/16 v12, 0x34

    if-eq v11, v12, :cond_8

    goto :goto_a

    .line 19
    :cond_8
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const/16 v12, 0x2e7

    int-to-short v12, v12

    sget-object v15, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v17, 0x21

    aget-byte v8, v15, v17

    int-to-byte v8, v8

    aget-byte v15, v15, v13

    int-to-byte v15, v15

    invoke-static {v12, v8, v15}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {v11, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 21
    invoke-virtual {v8, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    :goto_a
    move-object v6, v10

    :goto_b
    const/16 v8, 0x4c

    const/16 v11, 0xa4

    if-eqz v3, :cond_9

    goto :goto_c

    :cond_9
    if-nez v7, :cond_a

    move-object v3, v10

    goto :goto_c

    .line 22
    :cond_a
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x175

    int-to-short v12, v12

    sget-object v15, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v17, 0x21

    aget-byte v10, v15, v17

    int-to-byte v10, v10

    const/16 v17, 0xa8

    aget-byte v13, v15, v17

    int-to-byte v13, v13

    invoke-static {v12, v10, v13}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    :try_start_7
    new-array v7, v14, [Ljava/lang/Object;

    aput-object v3, v7, v4

    const/16 v3, 0x6c

    int-to-short v3, v3

    aget-byte v10, v15, v8

    int-to-byte v10, v10

    aget-byte v12, v15, v11

    int-to-byte v12, v12

    invoke-static {v3, v10, v12}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v10, v14, [Ljava/lang/Class;

    aput-object v2, v10, v4

    invoke-virtual {v3, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_56

    :goto_c
    const/4 v7, 0x4

    if-eqz v6, :cond_b

    goto :goto_d

    :cond_b
    const/16 v6, 0x117

    int-to-short v6, v6

    .line 23
    :try_start_8
    sget-object v10, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    aget-byte v12, v10, v11

    int-to-byte v12, v12

    int-to-byte v13, v12

    invoke-static {v6, v12, v13}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    .line 24
    sget v12, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    xor-int/lit8 v13, v12, 0x15

    and-int/lit8 v12, v12, 0x15

    shl-int/2addr v12, v14

    add-int/2addr v13, v12

    rem-int/lit16 v12, v13, 0x80

    sput v12, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v12, 0x2

    rem-int/2addr v13, v12

    :try_start_9
    new-array v12, v14, [Ljava/lang/Object;

    aput-object v6, v12, v4

    const/16 v6, 0x3ba

    int-to-short v6, v6

    .line 25
    aget-byte v13, v10, v7

    int-to-byte v13, v13

    aget-byte v15, v10, v11

    int-to-byte v15, v15

    invoke-static {v6, v13, v15}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v13, 0x10a

    int-to-short v13, v13

    const/16 v15, 0x21

    aget-byte v15, v10, v15

    int-to-byte v15, v15

    const/16 v17, 0xd

    aget-byte v7, v10, v17

    int-to-byte v7, v7

    invoke-static {v13, v15, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    new-array v13, v14, [Ljava/lang/Class;

    aput-object v2, v13, v4

    invoke-virtual {v6, v7, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_55

    :try_start_a
    new-array v7, v14, [Ljava/lang/Object;

    aput-object v6, v7, v4

    const/16 v6, 0x6c

    int-to-short v6, v6

    aget-byte v12, v10, v8

    int-to-byte v12, v12

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    invoke-static {v6, v12, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v10, v14, [Ljava/lang/Class;

    aput-object v2, v10, v4

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_54

    :goto_d
    if-nez v9, :cond_c

    const/4 v7, 0x1

    goto :goto_e

    :cond_c
    const/16 v7, 0x32

    :goto_e
    if-eq v7, v14, :cond_d

    goto :goto_f

    :cond_d
    if-eqz v3, :cond_f

    const/16 v7, 0x2c6

    int-to-short v7, v7

    .line 26
    :try_start_b
    sget-object v9, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v10, 0xc

    aget-byte v10, v9, v10

    int-to-byte v10, v10

    const/16 v12, 0x199

    aget-byte v13, v9, v12

    int-to-byte v12, v13

    invoke-static {v7, v10, v12}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    const/4 v10, 0x2

    :try_start_c
    new-array v12, v10, [Ljava/lang/Object;

    aput-object v7, v12, v14

    aput-object v3, v12, v4

    const/16 v7, 0x6c

    int-to-short v7, v7

    aget-byte v10, v9, v8

    int-to-byte v10, v10

    aget-byte v13, v9, v11

    int-to-byte v13, v13

    invoke-static {v7, v10, v13}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v13, 0x2

    new-array v15, v13, [Ljava/lang/Class;

    aget-byte v13, v9, v8

    int-to-byte v13, v13

    aget-byte v9, v9, v11

    int-to-byte v9, v9

    invoke-static {v7, v13, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v15, v4

    aput-object v2, v15, v14

    invoke-virtual {v10, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_e

    throw v2

    :cond_e
    throw v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    :cond_f
    :goto_f
    const/16 v7, 0x1bf

    int-to-short v7, v7

    :try_start_e
    sget-object v10, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v12, 0x4d

    aget-byte v12, v10, v12

    int-to-byte v12, v12

    const/16 v13, 0x1a

    aget-byte v15, v10, v13

    int-to-byte v13, v15

    invoke-static {v7, v12, v13}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v12, 0x22a

    int-to-short v12, v12

    const/16 v13, 0x10c

    aget-byte v13, v10, v13

    int-to-byte v13, v13

    const/16 v15, 0xd

    aget-byte v14, v10, v15

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v13, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_53

    const/16 v12, 0x6c

    int-to-short v12, v12

    .line 27
    :try_start_f
    aget-byte v13, v10, v8

    int-to-byte v13, v13

    aget-byte v14, v10, v11

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/16 v14, 0x9

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v15, v13, v4

    const/4 v15, 0x1

    aput-object v9, v13, v15

    const/4 v15, 0x2

    aput-object v3, v13, v15

    const/4 v15, 0x3

    aput-object v6, v13, v15

    const/16 v20, 0x4

    aput-object v7, v13, v20

    const/4 v11, 0x5

    aput-object v9, v13, v11

    const/4 v9, 0x6

    aput-object v3, v13, v9

    const/4 v3, 0x7

    aput-object v6, v13, v3

    const/16 v6, 0x8

    aput-object v7, v13, v6

    new-array v7, v14, [Z

    aput-boolean v4, v7, v4

    const/4 v9, 0x1

    aput-boolean v9, v7, v9

    const/16 v16, 0x2

    aput-boolean v9, v7, v16

    aput-boolean v9, v7, v15

    const/16 v17, 0x4

    aput-boolean v9, v7, v17

    aput-boolean v9, v7, v11

    const/16 v17, 0x6

    aput-boolean v9, v7, v17

    aput-boolean v9, v7, v3

    aput-boolean v9, v7, v6

    new-array v8, v14, [Z

    aput-boolean v4, v8, v4

    aput-boolean v4, v8, v9

    const/16 v16, 0x2

    aput-boolean v4, v8, v16

    aput-boolean v4, v8, v15

    const/16 v17, 0x4

    aput-boolean v4, v8, v17

    aput-boolean v9, v8, v11

    const/16 v17, 0x6

    aput-boolean v9, v8, v17

    aput-boolean v9, v8, v3

    aput-boolean v9, v8, v6

    new-array v6, v14, [Z

    aput-boolean v4, v6, v4

    aput-boolean v4, v6, v9

    const/16 v16, 0x2

    aput-boolean v9, v6, v16

    aput-boolean v9, v6, v15

    const/16 v17, 0x4

    aput-boolean v4, v6, v17

    aput-boolean v4, v6, v11

    const/16 v17, 0x6

    aput-boolean v9, v6, v17

    aput-boolean v9, v6, v3

    const/16 v9, 0x8

    aput-boolean v4, v6, v9
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    const/16 v9, 0x388

    int-to-short v9, v9

    const/16 v22, 0x2b

    .line 28
    :try_start_10
    aget-byte v3, v10, v22

    int-to-byte v3, v3

    const/16 v18, 0x1a

    aget-byte v15, v10, v18

    int-to-byte v15, v15

    invoke-static {v9, v3, v15}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v9, 0x152

    int-to-short v9, v9

    const/16 v15, 0xa

    .line 29
    aget-byte v15, v10, v15

    int-to-byte v15, v15

    const/16 v23, 0x39

    aget-byte v10, v10, v23

    int-to-byte v10, v10

    invoke-static {v9, v15, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    const/16 v9, 0x1d

    if-ne v3, v9, :cond_10

    const/4 v9, 0x0

    goto :goto_10

    :cond_10
    const/4 v9, 0x1

    :goto_10
    if-eqz v9, :cond_11

    const/16 v9, 0x1a

    if-lt v3, v9, :cond_11

    .line 30
    sget v9, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    and-int/lit8 v10, v9, 0x49

    or-int/lit8 v9, v9, 0x49

    add-int/2addr v10, v9

    rem-int/lit16 v9, v10, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v9, 0x2

    rem-int/2addr v10, v9

    const/4 v9, 0x1

    goto :goto_11

    :cond_11
    const/4 v9, 0x0

    :goto_11
    :try_start_11
    aput-boolean v9, v6, v4
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    const/16 v9, 0x15

    if-lt v3, v9, :cond_12

    const/4 v9, 0x1

    goto :goto_12

    :cond_12
    const/4 v9, 0x0

    :goto_12
    const/4 v10, 0x1

    if-eq v9, v10, :cond_13

    const/4 v9, 0x1

    const/16 v17, 0x0

    goto :goto_13

    .line 31
    :cond_13
    sget v9, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    and-int/lit8 v10, v9, 0x15

    or-int/lit8 v9, v9, 0x15

    add-int/2addr v10, v9

    rem-int/lit16 v9, v10, 0x80

    sput v9, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v9, 0x2

    rem-int/2addr v10, v9

    const/4 v9, 0x1

    const/16 v17, 0x1

    :goto_13
    :try_start_12
    aput-boolean v17, v6, v9

    const/16 v10, 0x15

    if-lt v3, v10, :cond_14

    const/4 v10, 0x0

    goto :goto_14

    :cond_14
    const/4 v10, 0x1

    :goto_14
    if-eq v10, v9, :cond_15

    const/4 v9, 0x1

    goto :goto_15

    :cond_15
    const/4 v9, 0x0

    :goto_15
    aput-boolean v9, v6, v11

    const/16 v9, 0x10

    if-ge v3, v9, :cond_16

    const/16 v9, 0x3f

    goto :goto_16

    :cond_16
    const/16 v9, 0xc

    :goto_16
    const/16 v10, 0x3f

    if-eq v9, v10, :cond_17

    const/4 v9, 0x0

    :goto_17
    const/4 v10, 0x4

    goto :goto_18

    :cond_17
    const/4 v9, 0x1

    goto :goto_17

    :goto_18
    aput-boolean v9, v6, v10

    const/16 v9, 0x10

    if-ge v3, v9, :cond_18

    const/4 v3, 0x1

    :goto_19
    const/16 v9, 0x8

    goto :goto_1a

    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    :goto_1a
    aput-boolean v3, v6, v9
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    :catch_5
    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_1b
    if-nez v15, :cond_7d

    if-ge v3, v14, :cond_7d

    .line 32
    :try_start_13
    aget-boolean v9, v6, v3
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_e

    if-eqz v9, :cond_7c

    .line 33
    :try_start_14
    aget-boolean v9, v7, v3

    aget-object v10, v13, v3

    aget-boolean v23, v8, v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_51

    if-eqz v9, :cond_19

    const/16 v24, 0x1

    goto :goto_1c

    :cond_19
    const/16 v24, 0x0

    :goto_1c
    const/16 v25, 0x4a

    const/16 v26, 0x4e

    if-eqz v24, :cond_1f

    if-eqz v10, :cond_1c

    .line 34
    sget v24, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    and-int/lit8 v27, v24, 0x4b

    or-int/lit8 v24, v24, 0x4b

    add-int v14, v27, v24

    rem-int/lit16 v11, v14, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v11, 0x2

    rem-int/2addr v14, v11

    if-nez v14, :cond_1b

    .line 35
    :try_start_15
    sget-object v11, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v14, 0x4c

    aget-byte v4, v11, v14
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    int-to-byte v4, v4

    move-object/from16 v28, v5

    const/16 v14, 0xa4

    :try_start_16
    aget-byte v5, v11, v14

    int-to-byte v5, v5

    invoke-static {v12, v4, v5}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xb5

    int-to-short v5, v5

    const/16 v14, 0x78

    aget-byte v14, v11, v14

    int-to-byte v14, v14

    const/16 v19, 0x199

    aget-byte v11, v11, v19

    int-to-byte v11, v11

    invoke-static {v5, v14, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v4, :cond_1d

    goto/16 :goto_1e

    :catchall_1
    move-exception v0

    goto :goto_1d

    :catchall_2
    move-exception v0

    move-object/from16 v28, v5

    :goto_1d
    move-object v4, v0

    :try_start_17
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1a

    throw v5

    :cond_1a
    throw v4

    :cond_1b
    move-object/from16 v28, v5

    const/4 v4, 0x0

    .line 36
    throw v4

    :cond_1c
    move-object/from16 v28, v5

    .line 37
    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x277

    int-to-short v5, v5

    sget-object v9, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    aget-byte v11, v9, v25

    int-to-byte v11, v11

    const/16 v14, 0x54

    aget-byte v14, v9, v14

    int-to-byte v14, v14

    invoke-static {v5, v11, v14}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2da

    int-to-short v5, v5

    aget-byte v10, v9, v26

    int-to-byte v10, v10

    xor-int/lit8 v11, v10, 0x4e

    and-int/lit8 v14, v10, 0x4e

    or-int/2addr v11, v14

    int-to-byte v11, v11

    invoke-static {v5, v10, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    const/4 v5, 0x1

    :try_start_18
    new-array v10, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v10, v5

    const/16 v4, 0xae

    int-to-short v4, v4

    const/16 v5, 0x8

    aget-byte v11, v9, v5

    int-to-byte v5, v11

    const/16 v11, 0xa4

    aget-byte v9, v9, v11

    int-to-byte v9, v9

    invoke-static {v4, v5, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v9, v5

    invoke-virtual {v4, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_19
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1e

    throw v5

    :cond_1e
    throw v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :catchall_4
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v41, v3

    goto/16 :goto_5a

    :cond_1f
    move-object/from16 v28, v5

    :goto_1e
    if-eqz v9, :cond_3a

    .line 38
    :try_start_1a
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_14

    const/16 v5, 0x3ba

    int-to-short v5, v5

    .line 39
    :try_start_1b
    sget-object v11, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_13

    move-object/from16 v29, v7

    const/4 v14, 0x4

    :try_start_1c
    aget-byte v7, v11, v14
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    int-to-byte v7, v7

    move-object/from16 v30, v8

    const/16 v14, 0xa4

    :try_start_1d
    aget-byte v8, v11, v14

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x1

    aget-byte v8, v11, v7

    neg-int v7, v8

    int-to-short v7, v7

    const/16 v8, 0xd

    aget-byte v14, v11, v8

    int-to-byte v8, v14

    const/16 v14, 0x199

    aget-byte v11, v11, v14

    int-to-byte v11, v11

    invoke-static {v7, v8, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    const-wide/32 v31, -0x606229c7

    xor-long v7, v7, v31

    :try_start_1e
    invoke-virtual {v4, v7, v8}, Ljava/util/Random;->setSeed(J)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_1f
    if-nez v5, :cond_20

    const/16 v14, 0xb

    move-object/from16 v31, v5

    const/4 v5, 0x5

    goto :goto_20

    :cond_20
    move-object/from16 v31, v5

    const/4 v5, 0x5

    const/4 v14, 0x5

    :goto_20
    if-eq v14, v5, :cond_38

    if-nez v7, :cond_21

    const/16 v5, 0x53

    goto :goto_21

    :cond_21
    const/16 v5, 0x47

    :goto_21
    const/16 v14, 0x53

    if-eq v5, v14, :cond_25

    if-nez v8, :cond_22

    const/4 v5, 0x5

    goto :goto_24

    :cond_22
    if-nez v11, :cond_23

    const/4 v5, 0x0

    goto :goto_22

    :cond_23
    const/4 v5, 0x1

    :goto_22
    const/4 v14, 0x1

    if-eq v5, v14, :cond_24

    .line 40
    sget v5, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    or-int/lit8 v17, v5, 0x31

    shl-int/lit8 v32, v17, 0x1

    xor-int/lit8 v5, v5, 0x31

    sub-int v5, v32, v5

    rem-int/lit16 v14, v5, 0x80

    sput v14, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v14, 0x2

    rem-int/2addr v5, v14

    const/4 v5, 0x4

    goto :goto_24

    :cond_24
    const/4 v5, 0x3

    goto :goto_24

    :cond_25
    sget v5, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    or-int/lit8 v14, v5, 0x47

    const/16 v17, 0x1

    shl-int/lit8 v14, v14, 0x1

    xor-int/lit8 v5, v5, 0x47

    sub-int/2addr v14, v5

    rem-int/lit16 v5, v14, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v5, 0x2

    rem-int/2addr v14, v5

    if-nez v14, :cond_26

    const/16 v5, 0x63

    goto :goto_23

    :cond_26
    const/16 v5, 0x46

    :goto_23
    const/16 v14, 0x46

    if-eq v5, v14, :cond_27

    const/16 v5, 0x4f

    goto :goto_24

    :cond_27
    const/4 v5, 0x6

    .line 41
    :goto_24
    :try_start_1f
    new-instance v14, Ljava/lang/StringBuilder;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    and-int/lit8 v32, v5, 0x1

    or-int/lit8 v33, v5, 0x1

    move-object/from16 v34, v13

    add-int v13, v32, v33

    :try_start_20
    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v13, 0x2e

    .line 42
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    const/4 v13, 0x0

    :goto_25
    if-ge v13, v5, :cond_2a

    if-eqz v23, :cond_29

    .line 43
    sget v32, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    and-int/lit8 v33, v32, 0x59

    or-int/lit8 v32, v32, 0x59

    move/from16 v35, v5

    add-int v5, v33, v32

    move/from16 v32, v15

    rem-int/lit16 v15, v5, 0x80

    sput v15, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v15, 0x2

    rem-int/2addr v5, v15

    const/16 v5, 0x1a

    .line 44
    :try_start_21
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    .line 45
    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v5

    if-eqz v5, :cond_28

    neg-int v5, v15

    neg-int v5, v5

    and-int/lit8 v15, v5, 0x41

    or-int/lit8 v5, v5, 0x41

    add-int/2addr v15, v5

    goto :goto_26

    :cond_28
    xor-int/lit8 v5, v15, 0x60

    and-int/lit8 v15, v15, 0x60

    const/16 v17, 0x1

    shl-int/lit8 v15, v15, 0x1

    add-int/2addr v15, v5

    :goto_26
    int-to-char v5, v15

    .line 46
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_29
    move/from16 v35, v5

    move/from16 v32, v15

    const/16 v5, 0xc

    .line 47
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x2000

    int-to-char v5, v5

    .line 48
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :goto_27
    xor-int/lit8 v5, v13, 0x1

    and-int/lit8 v13, v13, 0x1

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    add-int/2addr v13, v5

    move/from16 v15, v32

    move/from16 v5, v35

    goto :goto_25

    :catchall_5
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v41, v3

    move-object/from16 v38, v6

    goto/16 :goto_33

    :cond_2a
    move/from16 v32, v15

    .line 49
    :try_start_22
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    if-nez v7, :cond_2c

    const/4 v7, 0x2

    :try_start_23
    new-array v13, v7, [Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v5, v13, v7

    const/4 v5, 0x0

    aput-object v10, v13, v5

    .line 50
    sget-object v5, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v7, 0x4c

    aget-byte v14, v5, v7

    int-to-byte v7, v14

    const/16 v14, 0xa4

    aget-byte v15, v5, v14

    int-to-byte v14, v15

    invoke-static {v12, v7, v14}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Class;

    move-object/from16 v33, v4

    const/16 v14, 0x4c

    aget-byte v4, v5, v14

    int-to-byte v4, v4

    const/16 v14, 0xa4

    aget-byte v5, v5, v14

    int-to-byte v5, v5

    invoke-static {v12, v4, v5}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v15, v5

    const/4 v4, 0x1

    aput-object v2, v15, v4

    invoke-virtual {v7, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    move-object v7, v4

    :goto_28
    move-object/from16 v38, v6

    move-object/from16 v5, v31

    goto/16 :goto_2d

    :catchall_6
    move-exception v0

    move-object v4, v0

    :try_start_24
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_2b

    throw v5

    :cond_2b
    throw v4
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    :cond_2c
    move-object/from16 v33, v4

    if-nez v8, :cond_30

    .line 51
    sget v4, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    xor-int/lit8 v8, v4, 0x75

    and-int/lit8 v4, v4, 0x75

    const/4 v13, 0x1

    shl-int/2addr v4, v13

    add-int/2addr v8, v4

    rem-int/lit16 v4, v8, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v4, 0x2

    rem-int/2addr v8, v4

    if-eqz v8, :cond_2d

    const/16 v4, 0x17

    goto :goto_29

    :cond_2d
    const/16 v4, 0x18

    :goto_29
    const/16 v8, 0x18

    if-eq v4, v8, :cond_2e

    const/16 v4, 0x30

    const/4 v8, 0x0

    .line 52
    :try_start_25
    div-int/2addr v4, v8
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    goto :goto_2a

    :cond_2e
    const/4 v8, 0x0

    :goto_2a
    const/4 v4, 0x2

    :try_start_26
    new-array v13, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v5, v13, v4

    aput-object v10, v13, v8

    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v5, 0x4c

    aget-byte v8, v4, v5

    int-to-byte v5, v8

    const/16 v8, 0xa4

    aget-byte v14, v4, v8

    int-to-byte v8, v14

    invoke-static {v12, v5, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x2

    new-array v14, v8, [Ljava/lang/Class;

    const/16 v8, 0x4c

    aget-byte v15, v4, v8

    int-to-byte v8, v15

    const/16 v15, 0xa4

    aget-byte v4, v4, v15

    int-to-byte v4, v4

    invoke-static {v12, v8, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v14, v8

    const/4 v4, 0x1

    aput-object v2, v14, v4

    invoke-virtual {v5, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    move-object v8, v4

    goto :goto_28

    :catchall_7
    move-exception v0

    move-object v4, v0

    :try_start_27
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_2f

    throw v5

    :cond_2f
    throw v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_5

    :cond_30
    if-nez v11, :cond_31

    const/16 v4, 0xd

    goto :goto_2b

    :cond_31
    const/16 v4, 0x4d

    :goto_2b
    const/16 v13, 0xd

    if-eq v4, v13, :cond_36

    const/4 v4, 0x2

    :try_start_28
    new-array v13, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v5, v13, v4

    const/4 v4, 0x0

    aput-object v10, v13, v4

    .line 53
    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v5, 0x4c

    aget-byte v14, v4, v5

    int-to-byte v5, v14

    const/16 v14, 0xa4

    aget-byte v15, v4, v14

    int-to-byte v14, v15

    invoke-static {v12, v5, v14}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Class;

    move-object/from16 v35, v7

    const/16 v14, 0x4c

    aget-byte v7, v4, v14

    int-to-byte v7, v7

    move-object/from16 v36, v8

    const/16 v14, 0xa4

    aget-byte v8, v4, v14

    int-to-byte v8, v8

    invoke-static {v12, v7, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v15, v8

    const/4 v7, 0x1

    aput-object v2, v15, v7

    invoke-virtual {v5, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    :try_start_29
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    const/16 v7, 0xcc

    int-to-short v7, v7

    .line 54
    aget-byte v13, v4, v22

    int-to-byte v13, v13

    const/16 v14, 0xa4

    aget-byte v15, v4, v14

    int-to-byte v14, v15

    invoke-static {v7, v13, v14}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    move-object/from16 v37, v11

    const/16 v14, 0x4c

    aget-byte v11, v4, v14
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    int-to-byte v11, v11

    move-object/from16 v38, v6

    const/16 v14, 0xa4

    :try_start_2a
    aget-byte v6, v4, v14

    int-to-byte v6, v6

    invoke-static {v12, v11, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v11, 0x0

    aput-object v6, v15, v11

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_9

    :try_start_2b
    aget-byte v8, v4, v22

    int-to-byte v8, v8

    const/16 v11, 0xa4

    aget-byte v13, v4, v11

    int-to-byte v11, v13

    invoke-static {v7, v8, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x134

    int-to-short v8, v8

    aget-byte v11, v4, v25

    int-to-byte v11, v11

    const/16 v13, 0x199

    aget-byte v4, v4, v13

    int-to-byte v4, v4

    invoke-static {v8, v11, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_8

    move-object/from16 v7, v35

    move-object/from16 v8, v36

    move-object/from16 v11, v37

    goto/16 :goto_2d

    :catchall_8
    move-exception v0

    move-object v4, v0

    :try_start_2c
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_32

    throw v6

    :cond_32
    throw v4

    :catchall_9
    move-exception v0

    goto :goto_2c

    :catchall_a
    move-exception v0

    move-object/from16 v38, v6

    :goto_2c
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_33

    throw v6

    :cond_33
    throw v4
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_6
    .catchall {:try_start_2c .. :try_end_2c} :catchall_50

    :catch_6
    move-exception v0

    move-object v4, v0

    .line 55
    :try_start_2d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x61

    int-to-short v7, v7

    sget-object v8, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    aget-byte v9, v8, v25

    int-to-byte v9, v9

    const/16 v10, 0x54

    aget-byte v10, v8, v10

    int-to-byte v10, v10

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2da

    int-to-short v5, v5

    aget-byte v7, v8, v26

    int-to-byte v7, v7

    or-int/lit8 v9, v7, 0x4e

    int-to-byte v9, v9

    invoke-static {v5, v7, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_50

    const/4 v6, 0x2

    :try_start_2e
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v4, v7, v6

    const/4 v4, 0x0

    aput-object v5, v7, v4

    const/16 v4, 0xae

    int-to-short v4, v4

    const/16 v5, 0x8

    aget-byte v6, v8, v5

    int-to-byte v5, v6

    const/16 v6, 0xa4

    aget-byte v8, v8, v6

    int-to-byte v6, v8

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    const-class v5, Ljava/lang/Throwable;

    const/4 v8, 0x1

    aput-object v5, v6, v8

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    :catchall_b
    move-exception v0

    move-object v4, v0

    :try_start_2f
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_34

    throw v5

    :cond_34
    throw v4

    :catchall_c
    move-exception v0

    move-object/from16 v38, v6

    move-object v4, v0

    .line 56
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_35

    throw v5

    :cond_35
    throw v4
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_50

    :cond_36
    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    const/4 v4, 0x2

    :try_start_30
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v5, v6, v4

    const/4 v4, 0x0

    aput-object v10, v6, v4

    .line 57
    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v5, 0x4c

    aget-byte v7, v4, v5

    int-to-byte v5, v7

    const/16 v7, 0xa4

    aget-byte v8, v4, v7

    int-to-byte v7, v8

    invoke-static {v12, v5, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v7, 0x4c

    aget-byte v11, v4, v7

    int-to-byte v7, v11

    const/16 v11, 0xa4

    aget-byte v4, v4, v11

    int-to-byte v4, v4

    invoke-static {v12, v7, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v8, v7

    const/4 v4, 0x1

    aput-object v2, v8, v4

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_d

    move-object v11, v4

    move-object/from16 v5, v31

    move-object/from16 v7, v35

    move-object/from16 v8, v36

    :goto_2d
    move/from16 v15, v32

    move-object/from16 v4, v33

    move-object/from16 v13, v34

    move-object/from16 v6, v38

    goto/16 :goto_1f

    :catchall_d
    move-exception v0

    move-object v4, v0

    :try_start_31
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_37

    throw v5

    :cond_37
    throw v4

    :catchall_e
    move-exception v0

    move-object/from16 v38, v6

    goto :goto_32

    :catchall_f
    move-exception v0

    move-object/from16 v38, v6

    goto :goto_31

    :cond_38
    move-object/from16 v38, v6

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    move-object/from16 v37, v11

    move-object/from16 v34, v13

    move/from16 v32, v15

    goto :goto_34

    :catchall_10
    move-exception v0

    move-object/from16 v38, v6

    goto :goto_30

    :catchall_11
    move-exception v0

    move-object/from16 v38, v6

    goto :goto_2f

    :catchall_12
    move-exception v0

    move-object/from16 v38, v6

    goto :goto_2e

    :catchall_13
    move-exception v0

    move-object/from16 v38, v6

    move-object/from16 v29, v7

    :goto_2e
    move-object/from16 v30, v8

    :goto_2f
    move-object/from16 v34, v13

    move/from16 v32, v15

    move-object v4, v0

    .line 58
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_39

    throw v5

    :cond_39
    throw v4

    :catchall_14
    move-exception v0

    move-object/from16 v38, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    :goto_30
    move-object/from16 v34, v13

    :goto_31
    move/from16 v32, v15

    :goto_32
    move-object/from16 v44, v2

    move/from16 v41, v3

    :goto_33
    move/from16 v20, v12

    goto/16 :goto_5b

    :cond_3a
    move-object/from16 v38, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move-object/from16 v34, v13

    move/from16 v32, v15

    const/4 v7, 0x0

    const/16 v31, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    :goto_34
    const/16 v4, 0x1b90

    new-array v4, v4, [B

    .line 59
    const-class v5, Lcom/appsflyer/internal/AFa1ySDK;

    const/16 v6, 0x130

    int-to-short v6, v6

    sget-object v8, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v10, 0x12b

    aget-byte v10, v8, v10

    int-to-byte v10, v10

    const/16 v11, 0xa8

    aget-byte v11, v8, v11

    int-to-byte v11, v11

    invoke-static {v6, v10, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_50

    .line 61
    sget v6, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    add-int/lit8 v6, v6, 0x75

    rem-int/lit16 v10, v6, 0x80

    sput v10, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v10, 0x2

    rem-int/2addr v6, v10

    const/4 v6, 0x1

    :try_start_32
    new-array v10, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v10, v6

    .line 62
    sget v5, Lcom/appsflyer/internal/AFa1ySDK;->onResponseNative:I

    xor-int/lit16 v6, v5, 0x121

    and-int/lit16 v11, v5, 0x121

    or-int/2addr v6, v11

    int-to-short v6, v6

    const/16 v11, 0x1a

    aget-byte v13, v8, v11

    int-to-byte v11, v13

    const/16 v13, 0xa4

    aget-byte v14, v8, v13

    int-to-byte v13, v14

    invoke-static {v6, v11, v13}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v11, 0x1

    new-array v13, v11, [Ljava/lang/Class;

    aget-byte v11, v8, v26

    int-to-short v11, v11

    const/16 v14, 0x8

    aget-byte v15, v8, v14

    int-to-byte v14, v15

    move-object/from16 v23, v7

    const/16 v15, 0xa4

    aget-byte v7, v8, v15

    int-to-byte v7, v7

    invoke-static {v11, v14, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v13, v11

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_4f

    const/4 v7, 0x1

    :try_start_33
    new-array v10, v7, [Ljava/lang/Object;

    aput-object v4, v10, v11

    xor-int/lit16 v7, v5, 0x121

    and-int/lit16 v11, v5, 0x121

    or-int/2addr v7, v11

    int-to-short v7, v7

    const/16 v11, 0x1a

    .line 63
    aget-byte v13, v8, v11

    int-to-byte v11, v13

    const/16 v13, 0xa4

    aget-byte v14, v8, v13

    int-to-byte v13, v14

    invoke-static {v7, v11, v13}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v11, 0x313

    int-to-short v11, v11

    const/16 v13, 0x12

    aget-byte v13, v8, v13

    int-to-byte v13, v13

    const/16 v14, 0x35

    aget-byte v15, v8, v14

    int-to-byte v15, v15

    invoke-static {v11, v13, v15}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v15, v13

    invoke-virtual {v7, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4e

    xor-int/lit16 v7, v5, 0x121

    and-int/lit16 v5, v5, 0x121

    or-int/2addr v5, v7

    int-to-short v5, v5

    const/16 v7, 0x1a

    .line 64
    :try_start_34
    aget-byte v10, v8, v7

    int-to-byte v7, v10

    const/16 v10, 0xa4

    aget-byte v11, v8, v10

    int-to-byte v10, v11

    invoke-static {v5, v7, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x134

    int-to-short v7, v7

    aget-byte v10, v8, v25

    int-to-byte v10, v10

    const/16 v11, 0x199

    aget-byte v8, v8, v11

    int-to-byte v8, v8

    invoke-static {v7, v10, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_4d

    const/16 v5, 0x10

    const/16 v7, 0x1b6d

    .line 65
    sget v8, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    add-int/lit8 v8, v8, 0x1d

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v10, 0x2

    rem-int/2addr v8, v10

    move-object/from16 v10, v28

    const/4 v8, 0x0

    :goto_35
    add-int/lit8 v11, v5, 0xd

    xor-int/lit16 v13, v5, 0x1b7f

    and-int/lit16 v15, v5, 0x1b7f

    const/16 v17, 0x1

    shl-int/lit8 v15, v15, 0x1

    add-int/2addr v13, v15

    .line 66
    :try_start_35
    aget-byte v13, v4, v13

    xor-int/lit8 v15, v13, -0x5d

    and-int/lit8 v13, v13, -0x5d

    shl-int/lit8 v13, v13, 0x1

    add-int/2addr v15, v13

    int-to-byte v13, v15

    aput-byte v13, v4, v11

    .line 67
    array-length v11, v4
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_50

    sub-int/2addr v11, v5

    const/4 v13, 0x3

    :try_start_36
    new-array v15, v13, [Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_4b

    :try_start_37
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v15, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v15, v13

    const/4 v11, 0x0

    aput-object v4, v15, v11

    const/16 v4, 0x371

    int-to-short v4, v4

    sget-object v11, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v13, 0x96

    aget-byte v13, v11, v13

    int-to-byte v13, v13

    const/16 v21, 0xa4

    aget-byte v14, v11, v21

    int-to-byte v14, v14

    invoke-static {v4, v13, v14}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_4a

    const/4 v13, 0x3

    :try_start_38
    new-array v14, v13, [Ljava/lang/Class;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_4b

    const/4 v13, 0x0

    :try_start_39
    aput-object v1, v14, v13

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v13, v14, v17

    const/16 v16, 0x2

    aput-object v13, v14, v16

    invoke-virtual {v4, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v40, v4

    check-cast v40, Ljava/io/InputStream;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_4a

    .line 68
    :try_start_3a
    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttributionNative:Ljava/lang/Object;

    if-nez v4, :cond_3b

    const v4, -0x4a35a631

    .line 69
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    add-int/2addr v13, v4

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v14

    const/4 v4, 0x5

    rsub-int/lit8 v14, v14, 0x5

    int-to-short v4, v14

    const/4 v14, 0x2

    new-array v15, v14, [I

    move/from16 v35, v7

    .line 70
    sget-wide v6, Lcom/appsflyer/internal/AFa1ySDK;->onAttributionFailureNative:J

    const/16 v39, 0x20

    move-object/from16 v41, v15

    ushr-long v14, v6, v39

    long-to-int v15, v14

    xor-int v14, v15, v13

    const/4 v15, 0x0

    aput v14, v41, v15

    long-to-int v7, v6

    and-int v6, v7, v13

    not-int v6, v6

    or-int/2addr v7, v13

    and-int/2addr v6, v7

    const/4 v7, 0x1

    aput v6, v41, v7

    .line 71
    new-instance v6, Lcom/appsflyer/internal/AFe1eSDK;

    sget v42, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionDataLoadedNative:I

    sget-object v43, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataFail:[B

    sget v45, Lcom/appsflyer/internal/AFa1ySDK;->onDeepLinkingNative:I

    move-object/from16 v39, v6

    move/from16 v44, v4

    invoke-direct/range {v39 .. v45}, Lcom/appsflyer/internal/AFe1eSDK;-><init>(Ljava/io/InputStream;[II[BII)V

    move/from16 v41, v3

    move/from16 v42, v5

    move-object/from16 v39, v8

    :goto_36
    const/16 v3, 0x10

    goto/16 :goto_37

    :cond_3b
    move/from16 v35, v7

    const-string v7, ""
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_50

    const/16 v14, 0x30

    const/4 v15, 0x3

    :try_start_3b
    new-array v6, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    .line 72
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v16, 0x2

    aput-object v27, v6, v16

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    const/16 v17, 0x1

    aput-object v14, v6, v17

    aput-object v7, v6, v15

    const/16 v7, 0x9c

    int-to-short v7, v7

    const/16 v14, 0x4d

    aget-byte v14, v11, v14
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_49

    int-to-byte v14, v14

    move/from16 v41, v3

    const/16 v15, 0x1a

    :try_start_3c
    aget-byte v3, v11, v15

    int-to-byte v3, v3

    invoke-static {v7, v14, v3}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v7, 0x2f1

    int-to-short v7, v7

    const/16 v14, 0xa

    aget-byte v14, v11, v14

    int-to-byte v14, v14

    const/16 v15, 0x18

    aget-byte v15, v11, v15

    int-to-byte v15, v15

    invoke-static {v7, v14, v15}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    const-class v14, Ljava/lang/CharSequence;

    const/16 v27, 0x0

    aput-object v14, v15, v27

    sget-object v14, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v14, v15, v17

    const/4 v14, 0x2

    aput-object v13, v15, v14

    invoke-virtual {v3, v7, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_48

    neg-int v3, v3

    const v6, 0x28af8822

    xor-int v7, v3, v6

    and-int/2addr v3, v6

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    add-int/2addr v7, v3

    .line 73
    sget v3, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    add-int/lit8 v3, v3, 0xc

    sub-int/2addr v3, v6

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v6, 0x2

    rem-int/2addr v3, v6

    :try_start_3d
    new-array v3, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v3, v15

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v3, v6

    const/16 v6, 0x30b

    int-to-short v6, v6

    const/16 v14, 0xd

    aget-byte v15, v11, v14

    int-to-byte v14, v15

    move-object/from16 v39, v8

    const/16 v15, 0x1a

    aget-byte v8, v11, v15

    int-to-byte v8, v8

    invoke-static {v6, v14, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sget v8, Lcom/appsflyer/internal/AFa1ySDK;->onResponseNative:I

    or-int/lit8 v14, v8, 0x3

    const/4 v15, 0x1

    shl-int/2addr v14, v15

    const/4 v15, 0x3

    xor-int/2addr v8, v15

    sub-int/2addr v14, v8

    int-to-short v8, v14

    const/16 v14, 0xa4

    aget-byte v15, v11, v14

    int-to-byte v14, v15

    move/from16 v42, v5

    const/16 v15, 0xd

    aget-byte v5, v11, v15

    int-to-byte v5, v5

    invoke-static {v8, v14, v5}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    new-array v14, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v13, v14, v8

    const/4 v8, 0x1

    aput-object v13, v14, v8

    invoke-virtual {v6, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_47

    const/4 v5, 0x2

    rsub-int/lit8 v3, v3, 0x2

    const/16 v6, 0x8

    :try_start_3e
    new-array v8, v6, [B

    const/16 v6, 0x65

    const/4 v14, 0x0

    aput-byte v6, v8, v14

    const/16 v6, 0x6d

    const/4 v14, 0x1

    aput-byte v6, v8, v14

    const/16 v6, 0x58

    aput-byte v6, v8, v5

    const/16 v5, -0x68

    const/4 v6, 0x3

    aput-byte v5, v8, v6

    const/16 v5, 0x7b

    const/4 v6, 0x4

    aput-byte v5, v8, v6

    const/16 v5, -0x9

    const/4 v6, 0x5

    aput-byte v5, v8, v6

    const/4 v5, 0x6

    const/16 v14, 0xf

    aput-byte v14, v8, v5
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_2d

    const/16 v5, -0x23

    const/4 v14, 0x7

    :try_start_3f
    aput-byte v5, v8, v14
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_46

    const/4 v5, 0x4

    :try_start_40
    new-array v14, v5, [Ljava/lang/Object;

    const/4 v5, 0x3

    aput-object v8, v14, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v14, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v14, v5

    const/4 v3, 0x0

    aput-object v40, v14, v3

    const/16 v3, 0x3f4

    int-to-short v3, v3

    const/16 v5, 0x209

    aget-byte v5, v11, v5

    int-to-byte v5, v5

    const/16 v7, 0x199

    aget-byte v8, v11, v7

    int-to-byte v7, v8

    invoke-static {v3, v5, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionFailureNative:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    const/4 v7, 0x1

    invoke-static {v3, v7, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x26b

    int-to-short v5, v5

    const/16 v7, 0x25

    aget-byte v7, v11, v7

    int-to-byte v7, v7

    const/4 v8, 0x7

    aget-byte v15, v11, v8

    int-to-byte v8, v15

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    aget-byte v15, v11, v26

    int-to-short v15, v15

    const/16 v20, 0x8

    aget-byte v6, v11, v20

    int-to-byte v6, v6

    const/16 v20, 0xa4

    aget-byte v7, v11, v20

    int-to-byte v7, v7

    invoke-static {v15, v6, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v8, v7

    const/4 v6, 0x1

    aput-object v13, v8, v6

    const/4 v6, 0x2

    aput-object v13, v8, v6

    const/4 v6, 0x3

    aput-object v1, v8, v6

    invoke-virtual {v3, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/io/InputStream;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_45

    goto/16 :goto_36

    :goto_37
    int-to-long v4, v3

    .line 75
    sget v7, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    xor-int/lit8 v8, v7, 0x11

    and-int/lit8 v7, v7, 0x11

    const/4 v13, 0x1

    shl-int/2addr v7, v13

    add-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v7, 0x2

    rem-int/2addr v8, v7

    :try_start_41
    new-array v7, v13, [Ljava/lang/Object;

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v7, v5

    aget-byte v4, v11, v26

    int-to-short v4, v4

    const/16 v5, 0x8

    aget-byte v8, v11, v5

    int-to-byte v5, v8

    const/16 v8, 0xa4

    aget-byte v13, v11, v8

    int-to-byte v8, v13

    invoke-static {v4, v5, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x185

    int-to-short v5, v5

    const/16 v8, 0x9

    aget-byte v13, v11, v8

    int-to-byte v8, v13

    aget-byte v13, v11, v25

    int-to-byte v13, v13

    invoke-static {v5, v8, v13}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    new-array v13, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-virtual {v4, v5, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_44

    if-eqz v9, :cond_3c

    const/4 v4, 0x0

    goto :goto_38

    :cond_3c
    const/4 v4, 0x1

    :goto_38
    const/4 v5, 0x1

    if-eq v4, v5, :cond_52

    .line 77
    :try_start_42
    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttributionNative:Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_2d

    if-nez v4, :cond_3d

    move-object/from16 v5, v23

    goto :goto_39

    :cond_3d
    move-object/from16 v5, v36

    :goto_39
    if-nez v4, :cond_3e

    move-object/from16 v4, v37

    goto :goto_3a

    :cond_3e
    move-object/from16 v4, v31

    :goto_3a
    const/4 v7, 0x1

    :try_start_43
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    const/16 v7, 0xcc

    int-to-short v7, v7

    .line 78
    aget-byte v13, v11, v22

    int-to-byte v13, v13

    const/16 v14, 0xa4

    aget-byte v15, v11, v14

    int-to-byte v14, v15

    invoke-static {v7, v13, v14}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const/16 v14, 0x4c

    aget-byte v3, v11, v14

    int-to-byte v3, v3

    const/16 v14, 0xa4

    aget-byte v11, v11, v14

    int-to-byte v11, v11

    invoke-static {v12, v3, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v11, 0x0

    aput-object v3, v15, v11

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_28

    const/16 v8, 0x400

    :try_start_44
    new-array v11, v8, [B
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_27

    move/from16 v13, v35

    :goto_3b
    if-lez v13, :cond_42

    .line 79
    sget v14, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    and-int/lit8 v15, v14, 0x57

    or-int/lit8 v14, v14, 0x57

    add-int/2addr v15, v14

    rem-int/lit16 v14, v15, 0x80

    sput v14, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v14, 0x2

    rem-int/2addr v15, v14

    if-eqz v15, :cond_3f

    .line 80
    :try_start_45
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v35, v10

    const/4 v8, 0x3

    const/4 v15, 0x1

    goto :goto_3c

    :cond_3f
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v14
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_1a

    move-object/from16 v35, v10

    const/4 v8, 0x3

    const/4 v15, 0x0

    :goto_3c
    :try_start_46
    new-array v10, v8, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x2

    aput-object v8, v10, v14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x1

    aput-object v8, v10, v14

    const/4 v8, 0x0

    aput-object v11, v10, v8

    sget-object v8, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    aget-byte v14, v8, v26

    int-to-short v14, v14

    move/from16 v43, v9

    const/16 v15, 0x8

    aget-byte v9, v8, v15
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_18

    int-to-byte v9, v9

    move-object/from16 v44, v4

    const/16 v15, 0xa4

    :try_start_47
    aget-byte v4, v8, v15

    int-to-byte v4, v4

    invoke-static {v14, v9, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v9, 0x2dd

    int-to-short v9, v9

    const/16 v14, 0x9

    aget-byte v15, v8, v14
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_17

    int-to-byte v14, v15

    move-object/from16 v45, v5

    const/16 v15, 0x35

    :try_start_48
    aget-byte v5, v8, v15

    int-to-byte v5, v5

    invoke-static {v9, v14, v5}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    new-array v14, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v14, v9

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v9, v14, v15

    const/4 v15, 0x2

    aput-object v9, v14, v15

    invoke-virtual {v4, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_16

    const/4 v5, -0x1

    if-eq v4, v5, :cond_43

    const/4 v5, 0x3

    :try_start_49
    new-array v10, v5, [Ljava/lang/Object;

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x2

    aput-object v5, v10, v14

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v10, v15

    aput-object v11, v10, v5

    aget-byte v5, v8, v22

    int-to-byte v5, v5

    const/16 v14, 0xa4

    aget-byte v15, v8, v14

    int-to-byte v14, v15

    invoke-static {v7, v5, v14}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v14, 0x2eb

    int-to-short v14, v14

    aget-byte v15, v8, v25

    int-to-byte v15, v15

    aget-byte v8, v8, v26

    int-to-byte v8, v8

    invoke-static {v14, v15, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v15, v14

    const/4 v14, 0x1

    aput-object v9, v15, v14

    const/4 v14, 0x2

    aput-object v9, v15, v14

    invoke-virtual {v5, v8, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_15

    sub-int/2addr v13, v4

    move-object/from16 v10, v35

    move/from16 v9, v43

    move-object/from16 v4, v44

    move-object/from16 v5, v45

    const/16 v8, 0x400

    goto/16 :goto_3b

    :catchall_15
    move-exception v0

    move-object v3, v0

    :try_start_4a
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_40

    throw v4

    :cond_40
    throw v3

    :catchall_16
    move-exception v0

    goto :goto_3e

    :catchall_17
    move-exception v0

    goto :goto_3d

    :catchall_18
    move-exception v0

    move-object/from16 v44, v4

    :goto_3d
    move-object/from16 v45, v5

    :goto_3e
    move-object v3, v0

    .line 82
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_41

    throw v4

    :cond_41
    throw v3
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_19

    :catchall_19
    move-exception v0

    move-object v3, v0

    move-object/from16 v7, v44

    move-object/from16 v8, v45

    goto/16 :goto_44

    :catchall_1a
    move-exception v0

    move-object v3, v0

    move-object v7, v4

    move-object v8, v5

    goto/16 :goto_44

    :cond_42
    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move/from16 v43, v9

    move-object/from16 v35, v10

    .line 83
    :cond_43
    :try_start_4b
    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    aget-byte v5, v4, v22

    int-to-byte v5, v5

    const/16 v6, 0xa4

    aget-byte v8, v4, v6

    int-to-byte v6, v8

    invoke-static {v7, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x166

    int-to-short v6, v6

    aget-byte v8, v4, v25

    int-to-byte v8, v8

    const/16 v9, 0xd

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_26

    .line 84
    sget v6, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    add-int/lit8 v6, v6, 0x15

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v8, 0x2

    rem-int/2addr v6, v8

    const/16 v6, 0x4d

    int-to-short v6, v6

    const/16 v8, 0x4d

    .line 85
    :try_start_4c
    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v9, 0xa4

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v8, 0x290

    int-to-short v8, v8

    const/16 v9, 0x9

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    aget-byte v10, v4, v25

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_25

    .line 86
    :try_start_4d
    aget-byte v5, v4, v22

    int-to-byte v5, v5

    const/16 v6, 0xa4

    aget-byte v8, v4, v6

    int-to-byte v6, v8

    invoke-static {v7, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x134

    int-to-short v6, v6

    aget-byte v7, v4, v25

    int-to-byte v7, v7

    const/16 v8, 0x199

    aget-byte v9, v4, v8

    int-to-byte v8, v9

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_24

    const/16 v3, 0x2da

    int-to-short v3, v3

    const/16 v5, 0x199

    .line 87
    :try_start_4e
    aget-byte v6, v4, v5

    int-to-byte v5, v6

    const/16 v6, 0x2b4

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v5, 0x1e1

    int-to-short v5, v5

    const/16 v6, 0xa

    .line 88
    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v7, 0x4c

    aget-byte v8, v4, v7

    int-to-byte v7, v8

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const/4 v6, 0x1

    aput-object v2, v7, v6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v7, v8

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_23

    const/16 v5, 0x4c

    .line 89
    :try_start_4f
    aget-byte v7, v4, v5

    int-to-byte v5, v7

    const/16 v7, 0xa4

    aget-byte v8, v4, v7

    int-to-byte v7, v8

    invoke-static {v12, v5, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x100

    int-to-short v7, v7

    const/16 v8, 0x18

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v9, 0xd

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    invoke-static {v7, v8, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_22

    move-object/from16 v8, v45

    :try_start_50
    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_21

    const/4 v9, 0x0

    :try_start_51
    aput-object v5, v6, v9
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_20

    .line 90
    sget v5, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    and-int/lit8 v9, v5, 0x7

    const/4 v10, 0x7

    or-int/2addr v5, v10

    add-int/2addr v9, v5

    rem-int/lit16 v5, v9, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v5, 0x2

    rem-int/2addr v9, v5

    const/16 v5, 0x4c

    .line 91
    :try_start_52
    aget-byte v9, v4, v5

    int-to-byte v5, v9

    const/16 v9, 0xa4

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    invoke-static {v12, v5, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v9, 0x18

    aget-byte v9, v4, v9

    int-to-byte v9, v9

    const/16 v10, 0xd

    aget-byte v11, v4, v10

    int-to-byte v10, v11

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_1f

    move-object/from16 v7, v44

    :try_start_53
    invoke-virtual {v5, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_1e

    const/4 v10, 0x1

    :try_start_54
    aput-object v5, v6, v10

    const/4 v5, 0x0

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v5, 0x2

    aput-object v10, v6, v5

    .line 93
    invoke-virtual {v3, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_29

    const/16 v5, 0x4c

    .line 94
    :try_start_55
    aget-byte v6, v4, v5

    int-to-byte v5, v6

    const/16 v6, 0xa4

    aget-byte v9, v4, v6

    int-to-byte v6, v9

    invoke-static {v12, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x16b

    int-to-short v6, v6

    const/16 v9, 0x35

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    const/16 v10, 0x2b4

    aget-byte v10, v4, v10

    int-to-byte v10, v10

    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1d

    const/16 v5, 0x4c

    .line 95
    :try_start_56
    aget-byte v8, v4, v5

    int-to-byte v5, v8

    const/16 v8, 0xa4

    aget-byte v9, v4, v8

    int-to-byte v8, v9

    invoke-static {v12, v5, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v8, 0x35

    aget-byte v9, v4, v8

    int-to-byte v8, v9

    const/16 v9, 0x2b4

    aget-byte v9, v4, v9

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_1c

    .line 96
    sget v5, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    xor-int/lit8 v6, v5, 0x5d

    and-int/lit8 v7, v5, 0x5d

    const/4 v8, 0x1

    shl-int/2addr v7, v8

    add-int/2addr v6, v7

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    .line 97
    :try_start_57
    sget-object v6, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionFailureNative:Ljava/lang/Object;
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_2d

    if-nez v6, :cond_44

    const/4 v6, 0x7

    goto :goto_3f

    :cond_44
    const/16 v6, 0x17

    :goto_3f
    const/4 v7, 0x7

    if-eq v6, v7, :cond_45

    goto :goto_40

    :cond_45
    or-int/lit8 v6, v5, 0x6f

    const/4 v7, 0x1

    shl-int/2addr v6, v7

    xor-int/lit8 v5, v5, 0x6f

    sub-int/2addr v6, v5

    .line 98
    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    .line 99
    :try_start_58
    const-class v5, Lcom/appsflyer/internal/AFa1ySDK;
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_2d

    :try_start_59
    const-class v6, Ljava/lang/Class;

    const/16 v7, 0x182

    int-to-short v7, v7

    const/16 v8, 0xa4

    aget-byte v9, v4, v8

    int-to-byte v8, v9

    const/16 v9, 0xd

    aget-byte v4, v4, v9

    int-to-byte v4, v4

    invoke-static {v7, v8, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_1b

    :try_start_5a
    sput-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionFailureNative:Ljava/lang/Object;

    :goto_40
    move-object/from16 v44, v2

    move/from16 v20, v12

    const/4 v13, 0x3

    const/4 v14, 0x7

    goto/16 :goto_4e

    :catchall_1b
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_46

    throw v4

    :cond_46
    throw v3

    :catchall_1c
    move-exception v0

    move-object v3, v0

    .line 100
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_47

    throw v4

    :cond_47
    throw v3

    :catchall_1d
    move-exception v0

    move-object v3, v0

    .line 101
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_48

    throw v4

    :cond_48
    throw v3
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_2d

    :catchall_1e
    move-exception v0

    goto :goto_41

    :catchall_1f
    move-exception v0

    move-object/from16 v7, v44

    :goto_41
    move-object v3, v0

    .line 102
    :try_start_5b
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_49

    throw v4

    :cond_49
    throw v3

    :catchall_20
    move-exception v0

    move-object/from16 v7, v44

    goto :goto_43

    :catchall_21
    move-exception v0

    move-object/from16 v7, v44

    goto :goto_42

    :catchall_22
    move-exception v0

    move-object/from16 v7, v44

    move-object/from16 v8, v45

    :goto_42
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4a

    throw v4

    :cond_4a
    throw v3

    :catchall_23
    move-exception v0

    move-object/from16 v7, v44

    move-object/from16 v8, v45

    goto :goto_43

    :catchall_24
    move-exception v0

    move-object/from16 v7, v44

    move-object/from16 v8, v45

    move-object v3, v0

    .line 103
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4b

    throw v4

    :cond_4b
    throw v3

    :catchall_25
    move-exception v0

    move-object/from16 v7, v44

    move-object/from16 v8, v45

    move-object v3, v0

    .line 104
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4c

    throw v4

    :cond_4c
    throw v3

    :catchall_26
    move-exception v0

    move-object/from16 v7, v44

    move-object/from16 v8, v45

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4d

    throw v4

    :cond_4d
    throw v3
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_29

    :catchall_27
    move-exception v0

    move-object v7, v4

    move-object v8, v5

    goto :goto_43

    :catchall_28
    move-exception v0

    move-object v7, v4

    move-object v8, v5

    move-object v3, v0

    .line 105
    :try_start_5c
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4e

    throw v4

    :cond_4e
    throw v3
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_7
    .catchall {:try_start_5c .. :try_end_5c} :catchall_29

    :catchall_29
    move-exception v0

    :goto_43
    move-object v3, v0

    goto :goto_44

    :catch_7
    move-exception v0

    move-object v3, v0

    .line 106
    :try_start_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x273

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    aget-byte v9, v6, v25

    int-to-byte v9, v9

    const/16 v10, 0x54

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2da

    int-to-short v5, v5

    aget-byte v9, v6, v26

    int-to-byte v9, v9

    xor-int/lit8 v10, v9, 0x4e

    and-int/lit8 v11, v9, 0x4e

    or-int/2addr v10, v11

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_29

    const/4 v5, 0x2

    :try_start_5e
    new-array v9, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v3, v9, v5

    const/4 v3, 0x0

    aput-object v4, v9, v3

    const/16 v3, 0xae

    int-to-short v3, v3

    const/16 v4, 0x8

    aget-byte v5, v6, v4

    int-to-byte v4, v5

    const/16 v5, 0xa4

    aget-byte v6, v6, v5

    int-to-byte v5, v6

    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    const-class v4, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    throw v3
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_2a

    :catchall_2a
    move-exception v0

    move-object v3, v0

    :try_start_5f
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4f

    throw v4

    :cond_4f
    throw v3
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_29

    .line 107
    :goto_44
    :try_start_60
    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v5, 0x4c

    aget-byte v6, v4, v5

    int-to-byte v5, v6

    const/16 v6, 0xa4

    aget-byte v9, v4, v6

    int-to-byte v6, v9

    invoke-static {v12, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x16b

    int-to-short v6, v6

    const/16 v9, 0x35

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    const/16 v10, 0x2b4

    aget-byte v10, v4, v10

    int-to-byte v10, v10

    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_2c

    const/16 v5, 0x4c

    .line 108
    :try_start_61
    aget-byte v8, v4, v5

    int-to-byte v5, v8

    const/16 v8, 0xa4

    aget-byte v9, v4, v8

    int-to-byte v8, v9

    invoke-static {v12, v5, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v8, 0x35

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v9, 0x2b4

    aget-byte v4, v4, v9

    int-to-byte v4, v4

    invoke-static {v6, v8, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_2b

    .line 109
    :try_start_62
    throw v3

    :catchall_2b
    move-exception v0

    move-object v3, v0

    .line 110
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_50

    throw v4

    :cond_50
    throw v3

    :catchall_2c
    move-exception v0

    move-object v3, v0

    .line 111
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_51

    throw v4

    :cond_51
    throw v3

    :catchall_2d
    move-exception v0

    move-object/from16 v44, v2

    goto/16 :goto_33

    :cond_52
    move/from16 v43, v9

    move-object/from16 v35, v10

    .line 112
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_2d

    const/4 v5, 0x1

    :try_start_63
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v6, v5

    const/16 v3, 0x3d4

    int-to-short v3, v3

    const/16 v5, 0x10c

    .line 114
    aget-byte v5, v11, v5

    int-to-byte v5, v5

    const/16 v7, 0xa4

    aget-byte v8, v11, v7

    int-to-byte v7, v8

    invoke-static {v3, v5, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    aget-byte v7, v11, v26

    int-to-short v7, v7

    const/16 v9, 0x8

    aget-byte v10, v11, v9

    int-to-byte v9, v10

    const/16 v10, 0xa4

    aget-byte v13, v11, v10

    int-to-byte v10, v13

    invoke-static {v7, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_43

    const/16 v6, 0x1db

    int-to-short v6, v6

    const/16 v7, 0x36c

    :try_start_64
    aget-byte v7, v11, v7

    neg-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0xa4

    aget-byte v9, v11, v8

    int-to-byte v8, v9

    invoke-static {v6, v7, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_42

    const/16 v8, 0x400

    :try_start_65
    new-array v8, v8, [B
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_2d

    const/4 v9, 0x0

    :goto_45
    const/4 v10, 0x1

    :try_start_66
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v8, v11, v10

    .line 115
    sget-object v10, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v13, 0x10c

    aget-byte v13, v10, v13

    int-to-byte v13, v13

    const/16 v14, 0xa4

    aget-byte v15, v10, v14

    int-to-byte v14, v15

    invoke-static {v3, v13, v14}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_41

    const/16 v14, 0x2dd

    int-to-short v14, v14

    move/from16 v20, v12

    const/16 v15, 0x9

    :try_start_67
    aget-byte v12, v10, v15
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_40

    int-to-byte v12, v12

    move-object/from16 v44, v2

    const/16 v15, 0x35

    :try_start_68
    aget-byte v2, v10, v15

    int-to-byte v2, v2

    invoke-static {v14, v12, v2}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v14, v12

    invoke-virtual {v13, v2, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_3f

    if-lez v2, :cond_53

    const/16 v11, 0x14

    goto :goto_46

    :cond_53
    const/16 v11, 0x1e

    :goto_46
    const/16 v12, 0x1e

    if-eq v11, v12, :cond_55

    int-to-long v11, v9

    .line 116
    :try_start_69
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v13
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_31

    cmp-long v15, v11, v13

    if-gez v15, :cond_55

    const/4 v11, 0x3

    :try_start_6a
    new-array v12, v11, [Ljava/lang/Object;

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v12, v13

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    aput-object v8, v12, v11

    const/16 v11, 0x36c

    aget-byte v11, v10, v11

    neg-int v11, v11

    int-to-byte v11, v11

    const/16 v13, 0xa4

    aget-byte v14, v10, v13

    int-to-byte v13, v14

    invoke-static {v6, v11, v13}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v13, 0x2eb

    int-to-short v13, v13

    aget-byte v14, v10, v25

    int-to-byte v14, v14

    aget-byte v10, v10, v26

    int-to-byte v10, v10

    invoke-static {v13, v14, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v10
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_2f

    const/4 v13, 0x3

    :try_start_6b
    new-array v14, v13, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v15, v14, v17

    const/16 v16, 0x2

    aput-object v15, v14, v16

    invoke-virtual {v11, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v7, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_2e

    neg-int v2, v2

    neg-int v2, v2

    xor-int v10, v9, v2

    and-int/2addr v2, v9

    const/4 v9, 0x1

    shl-int/2addr v2, v9

    add-int v9, v10, v2

    move/from16 v12, v20

    move-object/from16 v2, v44

    goto/16 :goto_45

    :catchall_2e
    move-exception v0

    goto :goto_47

    :catchall_2f
    move-exception v0

    const/4 v13, 0x3

    :goto_47
    move-object v2, v0

    :try_start_6c
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_54

    throw v3

    :cond_54
    throw v2
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_30

    :catchall_30
    move-exception v0

    goto :goto_48

    :catchall_31
    move-exception v0

    const/4 v13, 0x3

    :goto_48
    move-object v2, v0

    const/16 v9, 0x199

    const/4 v14, 0x7

    goto/16 :goto_5d

    :cond_55
    const/4 v13, 0x3

    const/16 v2, 0x36c

    .line 118
    :try_start_6d
    aget-byte v2, v10, v2

    neg-int v2, v2

    int-to-byte v2, v2

    const/16 v4, 0xa4

    aget-byte v8, v10, v4

    int-to-byte v4, v8

    invoke-static {v6, v2, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x283

    aget-byte v4, v10, v4

    int-to-short v4, v4

    const/16 v8, 0x21

    aget-byte v8, v10, v8

    int-to-byte v8, v8

    const/16 v9, 0x9

    aget-byte v11, v10, v9

    int-to-byte v9, v11

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_3e

    const/16 v4, 0x10c

    .line 119
    :try_start_6e
    aget-byte v4, v10, v4

    int-to-byte v4, v4

    const/16 v8, 0xa4

    aget-byte v9, v10, v8

    int-to-byte v8, v9

    invoke-static {v3, v4, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x134

    int-to-short v4, v4

    aget-byte v8, v10, v25

    int-to-byte v8, v8

    const/16 v9, 0x199

    aget-byte v10, v10, v9

    int-to-byte v9, v10

    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_32

    goto :goto_49

    :catchall_32
    move-exception v0

    move-object v3, v0

    :try_start_6f
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_56

    throw v4

    :cond_56
    throw v3
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_6f} :catch_8
    .catchall {:try_start_6f .. :try_end_6f} :catchall_30

    .line 120
    :catch_8
    :goto_49
    sget v3, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    or-int/lit8 v4, v3, 0x7

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    const/4 v14, 0x7

    xor-int/2addr v3, v14

    sub-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v3, 0x2

    rem-int/2addr v4, v3

    .line 121
    :try_start_70
    sget-object v3, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v4, 0x36c

    aget-byte v4, v3, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0xa4

    aget-byte v8, v3, v5

    int-to-byte v5, v8

    invoke-static {v6, v4, v5}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x134

    int-to-short v5, v5

    aget-byte v6, v3, v25

    int-to-byte v6, v6

    const/16 v8, 0x199

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    invoke-static {v5, v6, v3}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_33

    goto :goto_4a

    :catchall_33
    move-exception v0

    move-object v3, v0

    :try_start_71
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_57

    throw v4

    :cond_57
    throw v3
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_71} :catch_9
    .catchall {:try_start_71 .. :try_end_71} :catchall_34

    :catchall_34
    move-exception v0

    move-object v2, v0

    const/16 v9, 0x199

    goto/16 :goto_5d

    .line 122
    :catch_9
    :goto_4a
    :try_start_72
    const-class v3, Lcom/appsflyer/internal/AFa1ySDK;
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_3d

    :try_start_73
    const-class v4, Ljava/lang/Class;

    const/16 v5, 0x182

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v7, 0xa4

    aget-byte v8, v6, v7

    int-to-byte v7, v8

    const/16 v8, 0xd

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_3c

    const/16 v4, 0x356

    int-to-short v4, v4

    const/16 v5, 0x269

    .line 123
    :try_start_74
    aget-byte v5, v6, v5

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v7, 0x2b4

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    const/16 v5, 0x39a

    int-to-short v5, v5

    const/16 v8, 0x8

    .line 124
    aget-byte v9, v6, v8

    int-to-byte v8, v9

    const/16 v9, 0xa4

    aget-byte v10, v6, v9

    int-to-byte v9, v10

    invoke-static {v5, v8, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_3d

    const/16 v8, 0x253

    int-to-short v8, v8

    const/16 v9, 0x199

    :try_start_75
    aget-byte v10, v6, v9
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_4c

    int-to-byte v9, v10

    const/16 v10, 0xa4

    :try_start_76
    aget-byte v11, v6, v10

    int-to-byte v10, v11

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_3d

    :try_start_77
    new-array v7, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v7, v9

    const/16 v2, 0x8

    .line 125
    aget-byte v9, v6, v2

    int-to-byte v2, v9

    const/16 v9, 0xa4

    aget-byte v10, v6, v9

    int-to-byte v9, v10

    invoke-static {v5, v2, v9}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x10c

    aget-byte v5, v6, v5

    int-to-short v5, v5

    const/16 v9, 0x9

    aget-byte v10, v6, v9

    int-to-byte v9, v10

    aget-byte v10, v6, v26

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v2, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_3b

    :try_start_78
    aput-object v2, v8, v11

    aput-object v3, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_3d

    const/16 v4, 0x2bd

    int-to-short v4, v4

    const/16 v5, 0x3a6

    .line 126
    :try_start_79
    aget-byte v5, v6, v5

    int-to-byte v5, v5

    const/16 v7, 0x2b4

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    invoke-static {v4, v5, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x87

    int-to-short v5, v5

    const/16 v7, 0x78

    .line 127
    aget-byte v7, v6, v7

    int-to-byte v7, v7

    int-to-byte v8, v7

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 129
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 131
    aget-byte v8, v6, v22

    int-to-short v8, v8

    int-to-byte v9, v8

    const/16 v10, 0xc

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/4 v9, 0x1

    .line 132
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v9, 0x14c

    int-to-short v9, v9

    const/16 v10, 0x25

    .line 133
    aget-byte v10, v6, v10

    int-to-byte v10, v10

    const/16 v11, 0xc

    aget-byte v6, v6, v11

    int-to-byte v6, v6

    invoke-static {v9, v10, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x1

    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 135
    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 136
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 137
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 138
    new-instance v9, Ljava/util/ArrayList;

    check-cast v7, Ljava/util/List;

    invoke-direct {v9, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 139
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 140
    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    .line 141
    invoke-static {v5}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 142
    invoke-static {v7, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_d
    .catchall {:try_start_79 .. :try_end_79} :catchall_3d

    const/4 v11, 0x0

    :goto_4b
    if-ge v11, v10, :cond_58

    .line 143
    :try_start_7a
    invoke-static {v5, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v7, v11, v12}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7a} :catch_a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_34

    add-int/lit8 v11, v11, 0x1

    goto :goto_4b

    :catch_a
    move-exception v0

    move-object v2, v0

    const/16 v9, 0x199

    goto/16 :goto_56

    .line 144
    :cond_58
    :try_start_7b
    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7b} :catch_d
    .catchall {:try_start_7b .. :try_end_7b} :catchall_3d

    .line 146
    :try_start_7c
    sget-object v3, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionFailureNative:Ljava/lang/Object;
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_3d

    if-nez v3, :cond_5b

    .line 147
    sget v3, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    xor-int/lit8 v4, v3, 0x6f

    and-int/lit8 v3, v3, 0x6f

    const/4 v5, 0x1

    shl-int/2addr v3, v5

    add-int/2addr v4, v3

    rem-int/lit16 v3, v4, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v3, 0x2

    rem-int/2addr v4, v3

    if-nez v4, :cond_59

    const/16 v3, 0xa

    goto :goto_4c

    :cond_59
    const/16 v3, 0x53

    :goto_4c
    const/16 v4, 0x53

    if-ne v3, v4, :cond_5a

    .line 148
    :try_start_7d
    sput-object v2, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionFailureNative:Ljava/lang/Object;

    goto :goto_4d

    :cond_5a
    sput-object v2, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionFailureNative:Ljava/lang/Object;

    const/4 v2, 0x0

    throw v2

    :cond_5b
    :goto_4d
    move-object v3, v2

    :goto_4e
    if-eqz v43, :cond_5c

    const/16 v2, 0x48

    goto :goto_4f

    :cond_5c
    const/16 v2, 0x19

    :goto_4f
    const/16 v4, 0x48

    if-eq v2, v4, :cond_5d

    const/16 v2, 0x253

    int-to-short v2, v2

    .line 149
    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v5, 0x199

    aget-byte v6, v4, v5

    int-to-byte v5, v6

    const/16 v6, 0xa4

    aget-byte v7, v4, v6

    int-to-byte v6, v7

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x113

    .line 150
    aget-byte v5, v4, v5

    neg-int v5, v5

    int-to-short v5, v5

    const/16 v6, 0x12

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v7, 0x4c

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    invoke-static {v5, v6, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v44, v6, v7

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_34

    :try_start_7e
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v35, v4, v7

    .line 151
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7e .. :try_end_7e} :catch_b
    .catchall {:try_start_7e .. :try_end_7e} :catchall_34

    :goto_50
    const/16 v7, 0x4c

    const/16 v12, 0xd

    goto/16 :goto_51

    :catch_b
    move-exception v0

    move-object v2, v0

    .line 152
    :try_start_7f
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    throw v2
    :try_end_7f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7f .. :try_end_7f} :catch_c
    .catchall {:try_start_7f .. :try_end_7f} :catchall_34

    :catch_c
    const/4 v2, 0x0

    goto :goto_50

    :cond_5d
    const/16 v2, 0x2da

    int-to-short v2, v2

    .line 153
    :try_start_80
    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v5, 0x199

    aget-byte v6, v4, v5

    int-to-byte v5, v6

    const/16 v6, 0x2b4

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x113

    .line 154
    aget-byte v5, v4, v5

    neg-int v5, v5

    int-to-short v5, v5

    const/16 v6, 0x12

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/16 v7, 0x4c

    aget-byte v8, v4, v7

    int-to-byte v8, v8

    invoke-static {v5, v6, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v44, v8, v6
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_3d

    const/16 v6, 0x253

    int-to-short v6, v6

    const/16 v9, 0x199

    :try_start_81
    aget-byte v10, v4, v9
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_4c

    int-to-byte v9, v10

    const/16 v10, 0xa4

    :try_start_82
    aget-byte v11, v4, v10

    int-to-byte v10, v11

    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-virtual {v2, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v35, v8, v6

    .line 155
    const-class v6, Lcom/appsflyer/internal/AFa1ySDK;
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_3d

    .line 156
    sget v9, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    add-int/lit8 v9, v9, 0x7d

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v10, 0x2

    rem-int/2addr v9, v10

    .line 157
    :try_start_83
    const-class v9, Ljava/lang/Class;

    const/16 v10, 0x182

    int-to-short v10, v10

    const/16 v11, 0xa4

    aget-byte v12, v4, v11

    int-to-byte v11, v12

    const/16 v12, 0xd

    aget-byte v15, v4, v12

    int-to-byte v15, v15

    invoke-static {v10, v11, v15}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_39

    const/4 v9, 0x1

    :try_start_84
    aput-object v6, v8, v9

    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_3d

    if-eqz v5, :cond_5e

    const/16 v6, 0x134

    int-to-short v6, v6

    .line 158
    :try_start_85
    aget-byte v8, v4, v25
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_34

    int-to-byte v8, v8

    const/16 v9, 0x199

    :try_start_86
    aget-byte v4, v4, v9
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_4c

    int-to-byte v4, v4

    :try_start_87
    invoke-static {v6, v8, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    .line 159
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_34

    :cond_5e
    move-object v2, v5

    :goto_51
    if-eqz v2, :cond_5f

    const/4 v4, 0x7

    goto :goto_52

    :cond_5f
    const/16 v4, 0x33

    :goto_52
    const/16 v5, 0x33

    if-eq v4, v5, :cond_64

    .line 160
    :try_start_88
    move-object v8, v2

    check-cast v8, Ljava/lang/Class;

    const/16 v2, 0x1aa

    int-to-short v2, v2

    .line 161
    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v5, 0x209

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v6, 0x199

    aget-byte v9, v4, v6

    int-to-byte v6, v9

    invoke-static {v2, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/Class;

    .line 162
    const-class v2, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 163
    invoke-virtual {v8, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 164
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v6, v5

    if-nez v43, :cond_60

    const/4 v3, 0x1

    goto :goto_53

    :cond_60
    const/4 v3, 0x0

    .line 165
    :goto_53
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttributionNative:Ljava/lang/Object;

    const/16 v3, 0x33f8

    new-array v3, v3, [B

    .line 166
    const-class v5, Lcom/appsflyer/internal/AFa1ySDK;

    const/16 v6, 0x210

    int-to-short v6, v6

    const/16 v9, 0x12b

    aget-byte v9, v4, v9

    int-to-byte v9, v9

    const/16 v11, 0xa8

    aget-byte v11, v4, v11

    int-to-byte v11, v11

    invoke-static {v6, v9, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_3d

    .line 168
    sget v6, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    add-int/lit8 v6, v6, 0x4e

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    rem-int/lit16 v11, v6, 0x80

    sput v11, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    const/4 v11, 0x2

    rem-int/2addr v6, v11

    :try_start_89
    new-array v6, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v6, v9

    .line 169
    sget v5, Lcom/appsflyer/internal/AFa1ySDK;->onResponseNative:I

    xor-int/lit16 v9, v5, 0x121

    and-int/lit16 v11, v5, 0x121

    or-int/2addr v9, v11

    int-to-short v9, v9

    const/16 v11, 0x1a

    aget-byte v15, v4, v11

    int-to-byte v11, v15

    const/16 v15, 0xa4

    aget-byte v2, v4, v15

    int-to-byte v2, v2

    invoke-static {v9, v11, v2}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Class;

    aget-byte v9, v4, v26

    int-to-short v9, v9

    const/16 v15, 0x8

    aget-byte v7, v4, v15

    int-to-byte v7, v7

    const/16 v15, 0xa4

    aget-byte v12, v4, v15

    int-to-byte v12, v12

    invoke-static {v9, v7, v12}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v11, v9

    invoke-virtual {v2, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_38

    const/4 v6, 0x1

    :try_start_8a
    new-array v7, v6, [Ljava/lang/Object;

    aput-object v3, v7, v9

    xor-int/lit16 v6, v5, 0x121

    and-int/lit16 v9, v5, 0x121

    or-int/2addr v6, v9

    int-to-short v6, v6

    const/16 v9, 0x1a

    .line 170
    aget-byte v11, v4, v9

    int-to-byte v9, v11

    const/16 v11, 0xa4

    aget-byte v12, v4, v11

    int-to-byte v11, v12

    invoke-static {v6, v9, v11}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v9, 0x313

    int-to-short v9, v9

    const/16 v11, 0x12

    aget-byte v11, v4, v11

    int-to-byte v11, v11

    const/16 v12, 0x35

    aget-byte v15, v4, v12

    int-to-byte v15, v15

    invoke-static {v9, v11, v15}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    new-array v15, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v15, v11

    invoke-virtual {v6, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_37

    xor-int/lit16 v6, v5, 0x121

    and-int/lit16 v5, v5, 0x121

    or-int/2addr v5, v6

    int-to-short v5, v5

    const/16 v6, 0x1a

    .line 171
    :try_start_8b
    aget-byte v7, v4, v6

    int-to-byte v6, v7

    const/16 v7, 0xa4

    aget-byte v9, v4, v7

    int-to-byte v7, v9

    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x134

    int-to-short v6, v6

    aget-byte v7, v4, v25
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_36

    int-to-byte v7, v7

    const/16 v9, 0x199

    :try_start_8c
    aget-byte v4, v4, v9

    int-to-byte v4, v4

    invoke-static {v6, v7, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_35

    .line 172
    :try_start_8d
    invoke-static/range {v42 .. v42}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move-object v4, v3

    move/from16 v12, v20

    move/from16 v3, v41

    move/from16 v9, v43

    move-object/from16 v2, v44

    const/16 v7, 0x33d4

    const/16 v14, 0x35

    goto/16 :goto_35

    :catchall_35
    move-exception v0

    goto :goto_54

    :catchall_36
    move-exception v0

    const/16 v9, 0x199

    :goto_54
    move-object v2, v0

    .line 173
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_61

    throw v3

    :cond_61
    throw v2

    :catchall_37
    move-exception v0

    const/16 v9, 0x199

    move-object v2, v0

    .line 174
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_62

    throw v3

    :cond_62
    throw v2

    :catchall_38
    move-exception v0

    const/16 v9, 0x199

    move-object v2, v0

    .line 175
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_63

    throw v3

    :cond_63
    throw v2

    :cond_64
    const/4 v2, 0x2

    const/16 v9, 0x199

    new-array v4, v2, [Ljava/lang/Class;

    .line 176
    const-class v2, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    move-object/from16 v8, v39

    .line 177
    invoke-virtual {v8, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v5, v4
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_4c

    if-nez v43, :cond_65

    .line 179
    sget v3, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    add-int/lit8 v3, v3, 0x74

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v4, 0x2

    rem-int/2addr v3, v4

    const/4 v3, 0x1

    goto :goto_55

    :cond_65
    const/4 v3, 0x0

    .line 180
    :goto_55
    :try_start_8e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttributionNative:Ljava/lang/Object;
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_4c

    .line 181
    sget v2, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    xor-int/lit8 v3, v2, 0x43

    and-int/lit8 v2, v2, 0x43

    const/4 v4, 0x1

    shl-int/2addr v2, v4

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v2, 0x2

    rem-int/2addr v3, v2

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x9

    const/16 v5, 0x1a

    const/16 v6, 0xa4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v15, 0x1

    goto/16 :goto_63

    :catchall_39
    move-exception v0

    const/16 v9, 0x199

    move-object v2, v0

    .line 182
    :try_start_8f
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_66

    throw v3

    :cond_66
    throw v2

    :catch_d
    move-exception v0

    const/16 v9, 0x199

    move-object v2, v0

    .line 183
    :goto_56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x26f

    int-to-short v5, v5

    sget-object v6, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    aget-byte v7, v6, v25

    int-to-byte v7, v7

    const/16 v8, 0x54

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2da

    int-to-short v3, v3

    aget-byte v5, v6, v26

    int-to-byte v5, v5

    or-int/lit8 v7, v5, 0x4e

    int-to-byte v7, v7

    invoke-static {v3, v5, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_4c

    const/4 v4, 0x2

    :try_start_90
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v3, v5, v2

    const/16 v2, 0xae

    int-to-short v2, v2

    const/16 v3, 0x8

    aget-byte v4, v6, v3

    int-to-byte v3, v4

    const/16 v4, 0xa4

    aget-byte v6, v6, v4

    int-to-byte v4, v6

    invoke-static {v2, v3, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v44, v4, v3

    const-class v3, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v3, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_3a

    :catchall_3a
    move-exception v0

    move-object v2, v0

    :try_start_91
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_67

    throw v3

    :cond_67
    throw v2

    :catchall_3b
    move-exception v0

    const/16 v9, 0x199

    move-object v2, v0

    .line 184
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_68

    throw v3

    :cond_68
    throw v2

    :catchall_3c
    move-exception v0

    const/16 v9, 0x199

    move-object v2, v0

    .line 185
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_69

    throw v3

    :cond_69
    throw v2

    :catchall_3d
    move-exception v0

    const/16 v9, 0x199

    goto/16 :goto_5c

    :catchall_3e
    move-exception v0

    const/16 v9, 0x199

    const/4 v14, 0x7

    move-object v2, v0

    .line 186
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6a

    throw v3

    :cond_6a
    throw v2

    :catchall_3f
    move-exception v0

    goto :goto_57

    :catchall_40
    move-exception v0

    move-object/from16 v44, v2

    goto :goto_57

    :catchall_41
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v20, v12

    :goto_57
    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    move-object v2, v0

    .line 187
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6b

    throw v3

    :cond_6b
    throw v2

    :catchall_42
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    move-object v2, v0

    .line 188
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6c

    throw v3

    :cond_6c
    throw v2

    :catchall_43
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6d

    throw v3

    :cond_6d
    throw v2

    :catchall_44
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    move-object v2, v0

    .line 189
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6e

    throw v3

    :cond_6e
    throw v2

    :catchall_45
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    move-object v2, v0

    .line 190
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_6f

    throw v3

    :cond_6f
    throw v2

    :catchall_46
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    goto/16 :goto_5c

    :catchall_47
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_70

    throw v3

    :cond_70
    throw v2

    :catchall_48
    move-exception v0

    move-object/from16 v44, v2

    goto :goto_58

    :catchall_49
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v41, v3

    :goto_58
    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_71

    throw v3

    :cond_71
    throw v2

    :catchall_4a
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v41, v3

    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    goto :goto_59

    :catchall_4b
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v41, v3

    move/from16 v20, v12

    const/16 v9, 0x199

    :goto_59
    const/4 v14, 0x7

    move-object v2, v0

    .line 191
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_72

    throw v3

    :cond_72
    throw v2

    :catchall_4c
    move-exception v0

    goto :goto_5c

    :catchall_4d
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v41, v3

    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    move-object v2, v0

    .line 192
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_73

    throw v3

    :cond_73
    throw v2

    :catchall_4e
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v41, v3

    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    move-object v2, v0

    .line 193
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_74

    throw v3

    :cond_74
    throw v2

    :catchall_4f
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v41, v3

    move/from16 v20, v12

    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    move-object v2, v0

    .line 194
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_75

    throw v3

    :cond_75
    throw v2
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_4c

    :catchall_50
    move-exception v0

    goto/16 :goto_32

    :catchall_51
    move-exception v0

    move-object/from16 v44, v2

    move/from16 v41, v3

    move-object/from16 v28, v5

    :goto_5a
    move-object/from16 v38, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move/from16 v20, v12

    move-object/from16 v34, v13

    move/from16 v32, v15

    :goto_5b
    const/16 v9, 0x199

    const/4 v13, 0x3

    const/4 v14, 0x7

    :goto_5c
    move-object v2, v0

    :goto_5d
    xor-int/lit8 v3, v41, 0x1

    and-int/lit8 v4, v41, 0x1

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    add-int/2addr v3, v4

    :goto_5e
    const/16 v4, 0x9

    if-ge v3, v4, :cond_76

    const/16 v5, 0x2a

    goto :goto_5f

    :cond_76
    const/16 v5, 0x55

    :goto_5f
    const/16 v6, 0x55

    if-eq v5, v6, :cond_79

    .line 195
    :try_start_92
    aget-boolean v5, v38, v3

    if-eqz v5, :cond_77

    const/4 v5, 0x0

    goto :goto_60

    :cond_77
    const/4 v5, 0x1

    :goto_60
    if-eqz v5, :cond_78

    or-int/lit8 v5, v3, -0x6e

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    xor-int/lit8 v3, v3, -0x6e

    sub-int/2addr v5, v3

    and-int/lit8 v3, v5, 0x6f

    or-int/lit8 v5, v5, 0x6f

    add-int/2addr v3, v5

    goto :goto_5e

    :cond_78
    const/4 v3, 0x1

    goto :goto_61

    :cond_79
    const/4 v3, 0x0

    :goto_61
    if-nez v3, :cond_7b

    const/16 v1, 0x28d

    int-to-short v1, v1

    .line 196
    sget-object v3, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v5, 0x1a

    aget-byte v4, v3, v5

    int-to-byte v4, v4

    const/16 v5, 0x54

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_92} :catch_e

    .line 197
    sget v4, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    or-int/lit8 v5, v4, 0x1f

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    xor-int/lit8 v4, v4, 0x1f

    sub-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v4, 0x2

    rem-int/2addr v5, v4

    :try_start_93
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const/16 v1, 0xae

    int-to-short v1, v1

    const/16 v2, 0x8

    .line 198
    aget-byte v2, v3, v2

    int-to-byte v2, v2

    const/16 v6, 0xa4

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v44, v2, v7

    const-class v3, Ljava/lang/Throwable;

    const/4 v8, 0x1

    aput-object v3, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_52

    :catchall_52
    move-exception v0

    move-object v1, v0

    :try_start_94
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7a

    throw v2

    :cond_7a
    throw v1

    :cond_7b
    const/16 v2, 0x8

    const/4 v3, 0x2

    const/16 v5, 0x1a

    const/16 v6, 0xa4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 199
    sput-object v10, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttributionNative:Ljava/lang/Object;

    .line 200
    sput-object v10, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionFailureNative:Ljava/lang/Object;

    goto :goto_62

    :cond_7c
    move-object/from16 v44, v2

    move/from16 v41, v3

    move-object/from16 v28, v5

    move-object/from16 v38, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    move/from16 v20, v12

    move-object/from16 v34, v13

    move/from16 v32, v15

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x9

    const/16 v5, 0x1a

    const/16 v6, 0xa4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x199

    const/4 v10, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x7

    :goto_62
    move/from16 v15, v32

    :goto_63
    and-int/lit8 v11, v41, 0x1

    or-int/lit8 v12, v41, 0x1

    add-int/2addr v11, v12

    move v3, v11

    move/from16 v12, v20

    move-object/from16 v5, v28

    move-object/from16 v7, v29

    move-object/from16 v8, v30

    move-object/from16 v13, v34

    move-object/from16 v6, v38

    move-object/from16 v2, v44

    const/4 v4, 0x0

    const/4 v11, 0x5

    const/16 v14, 0x9

    goto/16 :goto_1b

    :cond_7d
    return-void

    :catchall_53
    move-exception v0

    move-object v1, v0

    .line 201
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7e

    throw v2

    :cond_7e
    throw v1

    :catchall_54
    move-exception v0

    move-object v1, v0

    .line 202
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7f

    throw v2

    :cond_7f
    throw v1

    :catchall_55
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_80

    throw v2

    :cond_80
    throw v1

    :catchall_56
    move-exception v0

    move-object v1, v0

    .line 203
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_81

    throw v2

    :cond_81
    throw v1
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_94} :catch_e

    :catch_e
    move-exception v0

    move-object v1, v0

    .line 204
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventParameterName(Ljava/lang/Object;)I
    .locals 9

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    and-int/lit8 v1, v0, 0x9

    or-int/lit8 v0, v0, 0x9

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    if-nez v1, :cond_4

    sget-object v1, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttributionNative:Ljava/lang/Object;

    and-int/lit8 v5, v0, 0x17

    or-int/lit8 v0, v0, 0x17

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    rem-int/lit8 v5, v5, 0x2

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const/16 p0, 0x3f4

    int-to-short p0, p0

    sget-object v5, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v6, 0x209

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    const/16 v7, 0x199

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    invoke-static {p0, v6, v7}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object p0

    sget-object v6, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionFailureNative:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    invoke-static {p0, v3, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/16 v6, 0x162

    int-to-short v6, v6

    const/16 v7, 0xd

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    const/4 v8, 0x7

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v3, v2

    invoke-virtual {p0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    and-int/lit8 v1, v0, 0x73

    or-int/lit8 v0, v0, 0x73

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v0, 0x50

    if-nez v1, :cond_1

    const/16 v1, 0x4f

    goto :goto_1

    :cond_1
    const/16 v1, 0x50

    :goto_1
    if-ne v1, v0, :cond_2

    return p0

    :cond_2
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    throw v0

    :cond_3
    throw p0

    :cond_4
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p0

    throw p0
.end method

.method public static AFKeystoreWrapper(I)I
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    and-int/lit8 v1, v0, 0x2b

    or-int/lit8 v2, v0, 0x2b

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ne v1, v3, :cond_2

    sget-object v1, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttributionNative:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const/16 p0, 0x3f4

    int-to-short p0, p0

    sget-object v4, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v5, 0x209

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    const/16 v6, 0x199

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    invoke-static {p0, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionFailureNative:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p0, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/16 v5, 0x18a

    int-to-short v5, v5

    const/16 v6, 0x35

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    const/4 v7, 0x5

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    invoke-static {v5, v6, v4}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v2

    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0

    :cond_2
    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0
.end method

.method static init$0()V
    .locals 7

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    add-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0x2c

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    :goto_0
    const-string v3, "ISO-8859-1"

    const-string v4, "h\u00a3X\u00be\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00bf>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c5\u0016\u0008\u001e\u00d3J\u00de\u00f4\n\u00dc\u0003\u00fa\u0018\u00ee\u00d0>\t\u00c2\u00176\u00f4\u0003\u0002\u0010\u00f6\u0002\u00e8(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca()\u00fd\u0004\u00f4\u000b\u0015\u0000\u0003\u00f6\u000c\t\u00d02\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u00fa\u0018\u00ee\u00d0C\u00fe\t\u00c2\u0017:\u00fe\u00f4\u00e06\u00f4\u0003\u0002\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u00176\u00f7\u0006\u00fb\u00c35\u00f2\u0010\u0004\u00f9\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d3(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u001e(\u00e2\u001b\u000b\u0005\u0006\n\u00ce$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u0015\u0008\u001e\u00d3J\u00de\u00f4\n\u00dc\u0003\u00f6\u00ff\u0006\u00e52\u00fa\u0003\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdK\u00f6\u00ff\u0015\u00ba+\u0016\u00ff\u0015\u0001\u0012\u00d5&\u0006\u00fc\u0011\u00d4(\u000c\u0008\u00f9\u0004\u0016\u00da\u001a\u00fe\u00fa\u000e\u00f4\u0001\u0012\u00d2!\u0005\u0008\u0000\u00e2(\u000c\u00f6\u00ff\u0006\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0019$\u0016\u00d1&\u0006\u00fc\u000f\u00f8\u0004\u00fd\u0007\u0001\u0005\u0008\u0000\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0017\"\u0015\u00f5\u00e2$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0001\u0012\u00d2/\u00f8\u0004\u00e1!\u0005\u0008\u0000\u00e2(\u000c\t\u00f8\u00f8\u00ee\n\u00ec\u000bI\u0004\u00b4I\u00fe\u000e\u0003\u00f9\u0002\u0005\u000b\u000b\u00b0O\u00fc\u0004\u0011\u00b8\u00ee\t\u00ed\u000b\u00ee\u0007\u00ef\u000b\u00ee\u000b\u00eb\u000b\u0008\u0006(\u00d62\u0003\u00d84\u00f2\u000c\t\u00df\u0014\u0014\u00f2\u000f\u00fb\u0012\u00f4\u0010\u00df\u0016\u000f\u00fb\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca\u0018,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u00162\u0003\u00da(\u0006\u00f6\u0002\u000e\n\u0001\u0012\u00d46\u00ff\u00f4\u0010\u00ff\u00f6\u000e\u00ea$\u00fe\u0006\u00f2\t\u0001\u00e2(\u000c\u00f6\u0001\u0014\u00fe\u0006\n7\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c66\u00ce\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0019 \u0016\u00f0\u00eb(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0006\u00f5\u0006\u00e3$\u0016\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d9)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u001a,\u000b\u00f6\u000c\u0000\u0002\u0002\u00fb\u000c\t\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c6\u0015\u0008\u001e\u00d3K\u00dd\u00f4\n\u00dcP\u00ee\u000e\u000c\u00f3\u0011\u00fb\u0001\n\u0001\u0012\u00d2,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u00108\u0000\u0016\u00f0\u00d18\u0000\u0016\u00f0\u00d1\u0004\n\u00fc\u0012\u00f4\u0001\u0012\u00d5\u0001\u0008\u0008\u001d\u0017\u00fd\u0004\u00fe\u0006\u00f6\u00f5\u001e\u00f2\u0012\u0003\u00f8\u0010\u00f4\n\u0017\u00ed\u0008\t\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00da\u0014\u0016\u00f7\u00e0*\u00fc\u000b\u00fb\u000c\t\u0002\u000c\u0006\u0007\u00f57\u000f\u0001\u00c55\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00c0=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c65\u00cf\u00fa\u0018\u00ee\u00d0>\t\u00c2I\u00fc\u0006\u00f7\u0008\u000c\u0001\u0012\u00df%\u0000\u0004\u00f8\u0010\u0005\u0008\u0001\u0012\u00d0$\u0014\u00ff\u0000\u000c\u0002\u00f4\u00ee\u0014\u0016\u00f7\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u0016%\u0014\u00f8\u0010\u00f6\u000e\u0008\u00de\u0017\r\u00f6\u00ff\u0006\u0001\u0012\u00d3$\u0004\u00fe\u0017\u00fa\u000b\u00e2\u0019\u0014\u00ee\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ed)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0001\u0010\u00ec\u001e\u00fa\u000e\u00f4\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e\t\u00f96\u00ee\u0005\u000e\u0007\u00f8\t\u0002\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdI\u00f4\u0016\u00ff\u00bd)\u0014\u0016\u00ff\u00e4\"\u00f8\u0006\n\u00f4\u0016\u00f7\u00e7 \r\u0004\u0001\u0012\u00d8(\u00fe\u000e\u00f8\u00fb\u000e\u00d82\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ee\u0006\u00f0\u000b\u0015\u0000\u0003\u00f6\u000c\t\u00e3\u0018\u0007\u00fb\u00eb\u001f\u0006\u0003\u0000\r\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00e2$\u0011\u00f3\u0012\u00fa\n\u0007\u00fe\u0006\u00fe\u00d6:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u0006\u00f5\u0006\u00e2,\u00f8\u0015\u0003\u000f\u0001\u00c46\u0012\u0003\u0006\u00f6\t\u0010\u00ef\u0010\u00fe\u00f2\u0012\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00ce(\u000c\u00f6\u0001\u0014\u00fe\u0006\u00fa\u00ff\u0011\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f"

    const/16 v5, 0x40a

    const/4 v6, 0x0

    if-eq v0, v2, :cond_1

    new-array v0, v5, [B

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v0, 0x8c1

    :goto_1
    sput v0, Lcom/appsflyer/internal/AFa1ySDK;->onResponseNative:I

    goto :goto_2

    :cond_1
    new-array v0, v5, [B

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v0, 0xd6

    goto :goto_1

    :goto_2
    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    add-int/lit8 v0, v0, 0x46

    sub-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eq v6, v1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static values(CII)Ljava/lang/Object;
    .locals 8

    sget v0, Lcom/appsflyer/internal/AFa1ySDK;->onResponseErrorNative:I

    add-int/lit8 v1, v0, 0x14

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    sget-object v1, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttributionNative:Ljava/lang/Object;

    xor-int/lit8 v4, v0, 0x35

    and-int/lit8 v0, v0, 0x35

    shl-int/2addr v0, v2

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lcom/appsflyer/internal/AFa1ySDK;->onAppOpenAttribution:I

    rem-int/2addr v4, v3

    const/4 v0, 0x3

    :try_start_0
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    const/16 p0, 0x3f4

    int-to-short p0, p0

    sget-object p2, Lcom/appsflyer/internal/AFa1ySDK;->onConversionDataSuccess:[B

    const/16 v5, 0x209

    aget-byte v5, p2, v5

    int-to-byte v5, v5

    const/16 v6, 0x199

    aget-byte v6, p2, v6

    int-to-byte v6, v6

    invoke-static {p0, v5, v6}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/appsflyer/internal/AFa1ySDK;->onInstallConversionFailureNative:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p0, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const/16 v5, 0x162

    int-to-short v5, v5

    const/16 v6, 0xd

    aget-byte v6, p2, v6

    int-to-byte v6, v6

    const/4 v7, 0x7

    aget-byte p2, p2, v7

    int-to-byte p2, p2

    invoke-static {v5, v6, p2}, Lcom/appsflyer/internal/AFa1ySDK;->$$c(SSS)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, p1

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v0, v2

    aput-object p1, v0, v3

    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw p0
.end method
