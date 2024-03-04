.class public Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static hasInit:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAll()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->clearAll(Ljava/lang/String;)V

    return-void
.end method

.method public static clearAll(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mmkv/MMKV;->clearAll()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getFloat(Ljava/lang/String;F)F
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getParcelable(Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getParcelable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static getParcelable(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-static {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getParcelable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static getParcelable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->decodeParcelable(Ljava/lang/String;Ljava/lang/Class;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static getParcelable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 10
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->decodeParcelable(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->hasInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->hasInit:Z

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->moveOldMMKV()V

    .line 4
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getMMKVDirV2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/tencent/mmkv/MMKV;->initialize(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;)V

    return-void
.end method

.method private static moveOldMMKV()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getMMKVDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    array-length v1, v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getMMKVDirV2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/FileUtil;->copyDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putBoolean(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static putFloat(Ljava/lang/String;F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putFloat(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public static putFloat(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putInt(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putInt(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static putInt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putLong(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static putLong(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceCast:MMKVUtils104"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mmkv/MMKV;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->putStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->remove(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mmkv/MMKV;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static replaceOldData(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->current()Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/session/model/UserSessionModel;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/session/model/UserSessionModel;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "faceshow"

    .line 3
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v4, "faceshow_%s"

    .line 4
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "conversation%s"

    .line 5
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "dynamic%s"

    .line 6
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "topic%s"

    .line 7
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "publish_dynamic%s"

    .line 8
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "app%s"

    .line 9
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "runway%s"

    .line 10
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "live%s"

    .line 11
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "invite%s"

    .line 12
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "friends%s"

    .line 13
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "txConfig%s"

    .line 14
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "firstMeet%s"

    .line 15
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "UserCenterBean%s"

    .line 16
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "app_resource%s"

    .line 17
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "user_guide%s"

    .line 18
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "dress%s"

    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "pay"

    .line 20
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "module_notification"

    .line 21
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "module_sever_config_time"

    .line 22
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/MMKVUtils;->replaceOldData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static replaceOldData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "old_data_imported"

    .line 23
    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, -0x1

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const-string v1, "faceshow"

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    :goto_0
    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Lcom/tencent/mmkv/MMKV;->importFromSharedPreferences(Landroid/content/SharedPreferences;)I

    .line 30
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    invoke-virtual {v0}, Lcom/tencent/mmkv/MMKV;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
