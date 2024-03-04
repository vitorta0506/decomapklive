.class final Lorg/light/utils/FileUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/light/utils/FileUtils$AssetFileComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    const-string v0, "aekit"

    .line 1
    invoke-static {p1, p2, v0}, Lorg/light/utils/FileUtils;->getAssetsMD5(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lorg/light/utils/FileUtils;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
