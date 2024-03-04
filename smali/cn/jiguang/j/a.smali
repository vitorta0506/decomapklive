.class public Lcn/jiguang/j/a;
.super Lcn/jiguang/o/a;
.source "SourceFile"


# static fields
.field private static volatile c:Lcn/jiguang/j/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/jiguang/common/app/entity/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcn/jiguang/o/a;-><init>()V

    return-void
.end method

.method public static a()Lcn/jiguang/j/a;
    .locals 2

    sget-object v0, Lcn/jiguang/j/a;->c:Lcn/jiguang/j/a;

    if-nez v0, :cond_1

    const-class v0, Lcn/jiguang/j/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/jiguang/j/a;->c:Lcn/jiguang/j/a;

    if-nez v1, :cond_0

    new-instance v1, Lcn/jiguang/j/a;

    invoke-direct {v1}, Lcn/jiguang/j/a;-><init>()V

    sput-object v1, Lcn/jiguang/j/a;->c:Lcn/jiguang/j/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcn/jiguang/j/a;->c:Lcn/jiguang/j/a;

    return-object v0
.end method

.method private a(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/jiguang/common/app/entity/a;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jiguang/common/app/entity/a;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcn/jiguang/common/app/entity/a;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private f(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcn/jiguang/o/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcn/jiguang/o/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pl has permission is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JPackageList"

    invoke-static {v1, v0}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/jiguang/j/a;->a:Landroid/content/Context;

    const-string p1, "JPackageList"

    return-object p1
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcn/jiguang/o/b;->A(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "JPackageList"

    invoke-direct {p0, p1}, Lcn/jiguang/j/a;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Android/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Jpl dataDir is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcn/jiguang/j/a$1;

    invoke-direct {v1, p0}, Lcn/jiguang/j/a$1;-><init>(Lcn/jiguang/j/a;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    iget-object v2, p0, Lcn/jiguang/j/a;->b:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/jiguang/j/a;->b:Ljava/util/List;

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    new-instance v5, Lcn/jiguang/common/app/entity/a;

    invoke-direct {v5}, Lcn/jiguang/common/app/entity/a;-><init>()V

    iput-object v4, v5, Lcn/jiguang/common/app/entity/a;->a:Ljava/lang/String;

    const-string v6, "MD5"

    invoke-static {p1, v4, v6}, Lcn/jiguang/common/app/helper/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/jiguang/common/app/entity/a;->b:Ljava/lang/String;

    const-string v6, "SHA-1"

    invoke-static {p1, v4, v6}, Lcn/jiguang/common/app/helper/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcn/jiguang/common/app/entity/a;->c:Ljava/lang/String;

    const-string v6, "SHA-256"

    invoke-static {p1, v4, v6}, Lcn/jiguang/common/app/helper/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcn/jiguang/common/app/entity/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/jiguang/j/a;->b:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcn/jiguang/j/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collect success, size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/jiguang/j/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/jiguang/al/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcn/jiguang/o/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "collect failed, pl is empty"

    invoke-static {v0, p1}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package json exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcn/jiguang/o/b;->B(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "JPackageList"

    invoke-direct {p0, p1}, Lcn/jiguang/j/a;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/jiguang/j/a;->b:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcn/jiguang/j/a;->b:Ljava/util/List;

    invoke-direct {p0, v1}, Lcn/jiguang/j/a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-super {p0, p1, p2}, Lcn/jiguang/o/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/jiguang/common/app/helper/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_5

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    const-string v6, "slice_index"

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "slice_count"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "package_list"

    invoke-static {p1, v4, v5}, Lcn/jiguang/o/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    invoke-static {p1, v4}, Lcn/jiguang/o/d;->a(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcn/jiguang/o/a;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p1, "there are no data to report"

    invoke-static {v0, p1}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package json exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/jiguang/al/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcn/jiguang/j/a;->b:Ljava/util/List;

    return-void
.end method
