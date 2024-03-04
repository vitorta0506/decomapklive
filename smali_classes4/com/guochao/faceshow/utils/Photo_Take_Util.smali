.class public Lcom/guochao/faceshow/utils/Photo_Take_Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final crop:I = 0x79


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "photo:::"

    if-nez p3, :cond_1

    const-string p3, "null"

    .line 12
    invoke-static {p0, p3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yalantis/ucrop/a;->c(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/a;

    move-result-object p0

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/yalantis/ucrop/a;->c(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/a;

    move-result-object p0

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    invoke-virtual {p0, p1, p1}, Lcom/yalantis/ucrop/a;->h(FF)Lcom/yalantis/ucrop/a;

    .line 17
    new-instance p1, Lcom/yalantis/ucrop/a$a;

    invoke-direct {p1}, Lcom/yalantis/ucrop/a$a;-><init>()V

    const/16 p2, 0x5a

    .line 18
    invoke-virtual {p1, p2}, Lcom/yalantis/ucrop/a$a;->b(I)V

    const/4 p2, 0x1

    .line 19
    invoke-virtual {p1, p2}, Lcom/yalantis/ucrop/a$a;->d(Z)V

    .line 20
    invoke-virtual {p1, p2}, Lcom/yalantis/ucrop/a$a;->c(Z)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/a;->i(Lcom/yalantis/ucrop/a$a;)Lcom/yalantis/ucrop/a;

    .line 22
    invoke-virtual {p0, p4}, Lcom/yalantis/ucrop/a;->d(Landroid/app/Activity;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static startPhotoZoom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroidx/fragment/app/Fragment;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "photo:::"

    if-nez p3, :cond_1

    const-string p3, "null"

    .line 1
    invoke-static {v0, p3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yalantis/ucrop/a;->c(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/a;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/yalantis/ucrop/a;->c(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/a;

    move-result-object p1

    :goto_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p1, p2, p2}, Lcom/yalantis/ucrop/a;->h(FF)Lcom/yalantis/ucrop/a;

    .line 6
    new-instance p2, Lcom/yalantis/ucrop/a$a;

    invoke-direct {p2}, Lcom/yalantis/ucrop/a$a;-><init>()V

    const/16 p3, 0x5a

    .line 7
    invoke-virtual {p2, p3}, Lcom/yalantis/ucrop/a$a;->b(I)V

    const/4 p3, 0x1

    .line 8
    invoke-virtual {p2, p3}, Lcom/yalantis/ucrop/a$a;->d(Z)V

    .line 9
    invoke-virtual {p2, p3}, Lcom/yalantis/ucrop/a$a;->c(Z)V

    .line 10
    invoke-virtual {p1, p2}, Lcom/yalantis/ucrop/a;->i(Lcom/yalantis/ucrop/a$a;)Lcom/yalantis/ucrop/a;

    .line 11
    invoke-virtual {p1, p0, p4}, Lcom/yalantis/ucrop/a;->f(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    :cond_2
    :goto_1
    return-void
.end method
