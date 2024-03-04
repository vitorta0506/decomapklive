.class final Lorg/light/utils/FileUtils$2;
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
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lorg/light/utils/FileUtils;->access$000(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
