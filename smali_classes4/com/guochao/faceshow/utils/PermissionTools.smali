.class public Lcom/guochao/faceshow/utils/PermissionTools;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACT_STORAGE_REQUEST_CODE:I = 0x1001

.field public static final FRAGMENT_STORAGE_REQUEST_CODE:I = 0x1002


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStoragePer()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static checkUnKnowResourcePer()Z
    .locals 2

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/utils/PermissionTools;->checkUnKnowResourcePermStatus()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private static checkUnKnowResourcePermStatus()Z
    .locals 3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static requestStoragePer(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    :try_start_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1001

    .line 3
    invoke-static {p0, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static requestStoragePer(Landroid/app/Activity;I)V
    .locals 2

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 5
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p0, v1, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static requestStoragePerByFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1002

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
