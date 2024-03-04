.class public final Lcom/google/android/gms/internal/recaptcha/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 1
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v0, v4, v6

    const-string v7, "get"

    .line 2
    invoke-virtual {v2, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-array v7, v3, [Ljava/lang/Class;

    aput-object v0, v7, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    const-string v8, "getInt"

    .line 3
    invoke-virtual {v2, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-array v8, v3, [Ljava/lang/Class;

    aput-object v0, v8, v5

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    const-string v9, "getLong"

    .line 4
    invoke-virtual {v2, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-array v3, v3, [Ljava/lang/Class;

    aput-object v0, v3, v5

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, v3, v6

    const-string v0, "getBoolean"

    .line 5
    invoke-virtual {v2, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sput-object v4, Lcom/google/android/gms/internal/recaptcha/g2;->a:Ljava/lang/reflect/Method;

    sput-object v7, Lcom/google/android/gms/internal/recaptcha/g2;->b:Ljava/lang/reflect/Method;

    sput-object v8, Lcom/google/android/gms/internal/recaptcha/g2;->c:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/google/android/gms/internal/recaptcha/g2;->d:Ljava/lang/reflect/Method;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v7, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v7, v1

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v4, v1

    move-object v7, v4

    :goto_0
    move-object v8, v7

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v4, v1

    move-object v7, v4

    :goto_1
    move-object v8, v7

    .line 6
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sput-object v4, Lcom/google/android/gms/internal/recaptcha/g2;->a:Ljava/lang/reflect/Method;

    sput-object v7, Lcom/google/android/gms/internal/recaptcha/g2;->b:Ljava/lang/reflect/Method;

    sput-object v8, Lcom/google/android/gms/internal/recaptcha/g2;->c:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/g2;->d:Ljava/lang/reflect/Method;

    return-void

    :goto_3
    sput-object v4, Lcom/google/android/gms/internal/recaptcha/g2;->a:Ljava/lang/reflect/Method;

    sput-object v7, Lcom/google/android/gms/internal/recaptcha/g2;->b:Ljava/lang/reflect/Method;

    sput-object v8, Lcom/google/android/gms/internal/recaptcha/g2;->c:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/google/android/gms/internal/recaptcha/g2;->d:Ljava/lang/reflect/Method;

    .line 7
    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, "tiktok_systrace"

    const-string p1, "false"

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/recaptcha/g2;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x0

    .line 1
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SystemProperties"

    const-string v1, "get error"

    .line 2
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1
.end method
