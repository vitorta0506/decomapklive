.class public final synthetic Lp7/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lp7/h;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public static b(Lp7/h;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lp7/h;)Lb8/g;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/VipUserInfoUtil;->getVipUserInfo(Lp7/h;)Lb8/g;

    move-result-object p0

    return-object p0
.end method
