.class public Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CPU_ARCHITECTURE_KEY_64:Ljava/lang/String; = "ro.product.cpu.abilist64"

.field public static final CPU_ARCHITECTURE_TYPE_32:Ljava/lang/String; = "32"

.field public static final CPU_ARCHITECTURE_TYPE_64:Ljava/lang/String; = "64"

.field private static final EI_CLASS:I = 0x4

.field private static final ELFCLASS32:I = 0x1

.field private static final ELFCLASS64:I = 0x2

.field private static LOGENABLE:Z = true

.field private static final PROC_CPU_INFO_PATH:Ljava/lang/String; = "/proc/cpuinfo"

.field private static final SYSTEM_LIB_C_PATH:Ljava/lang/String; = "/system/lib/libc.so"

.field private static final SYSTEM_LIB_C_PATH_64:Ljava/lang/String; = "/system/lib64/libc.so"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfCPUx86()Z
    .locals 2

    const-string v0, "ro.product.cpu.abi"

    const-string v1, "arm"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getArchType()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.product.cpu.abilist64"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "64"

    if-lez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "etSystemProperty"

    const-string v2, "CPU arch is 64bit"

    .line 3
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->isCPUInfo64()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 5
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->isLibc64()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v1

    .line 6
    :cond_3
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz v0, :cond_4

    const-string v0, "getArchType()"

    const-string v1, "return cpu DEFAULT 32bit!"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v0, "32"

    return-object v0
.end method

.method private static getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    const-string v1, "getSystemProperty"

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    .line 2
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v6

    const-string v4, ""

    aput-object v4, v3, v7

    .line 3
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-boolean v2, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method private static isCPUInfo64()Z
    .locals 7

    const-string v0, "isCPUInfo64()"

    .line 1
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x200

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "arch64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    sget-boolean v2, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz v2, :cond_0

    const-string v2, "/proc/cpuinfo contains is arch64"

    .line 8
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0

    .line 13
    :cond_1
    :try_start_5
    sget-boolean v2, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "/proc/cpuinfo is not arch64"

    .line 14
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 15
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catchall_0
    move-exception v2

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    .line 18
    :goto_3
    :try_start_8
    sget-boolean v4, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz v4, :cond_3

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read /proc/cpuinfo error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_3
    if-eqz v1, :cond_4

    .line 20
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz v3, :cond_7

    .line 22
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catchall_3
    move-exception v0

    if-eqz v1, :cond_5

    .line 24
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_5
    if-eqz v3, :cond_6

    .line 26
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :cond_6
    :goto_6
    throw v0

    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0
.end method

.method private static isLibc64()Z
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "isLibc64()"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz v1, :cond_1

    .line 3
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->readELFHeadrIndentArray(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    aget-byte v0, v0, v5

    if-ne v0, v4, :cond_1

    .line 5
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "/system/lib/libc.so is 64bit"

    .line 6
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    .line 7
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib64/libc.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->readELFHeadrIndentArray(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    aget-byte v0, v0, v5

    if-ne v0, v4, :cond_3

    .line 11
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz v0, :cond_2

    const-string v0, "/system/lib64/libc.so is 64bit"

    .line 12
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private static readELFHeadrIndentArray(Ljava/io/File;)[B
    .locals 5

    const-string v0, "readELFHeadrIndentArray"

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p0, 0x10

    :try_start_1
    new-array v3, p0, [B

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v2, v3, v4, p0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, p0, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v3

    .line 6
    :cond_0
    :try_start_3
    sget-boolean p0, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz p0, :cond_1

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: e_indent lenght should be 16, but actual is "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :cond_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v1

    .line 10
    :goto_1
    :try_start_5
    sget-boolean v3, Lcom/guochao/faceshow/aaspring/utils/CpuInfoUtils;->LOGENABLE:Z

    if-eqz v3, :cond_2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    if-eqz v2, :cond_4

    .line 12
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catchall_2
    move-exception p0

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_3
    :goto_2
    throw p0

    :cond_4
    :goto_3
    return-object v1
.end method
