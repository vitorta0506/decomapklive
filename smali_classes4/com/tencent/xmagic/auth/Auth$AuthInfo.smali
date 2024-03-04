.class public Lcom/tencent/xmagic/auth/Auth$AuthInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/auth/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthInfo"
.end annotation


# instance fields
.field public final authBindType:Lcom/tencent/xmagic/auth/Auth$BindType;

.field public final authFileName:Ljava/lang/String;

.field public final authLicenseId:Ljava/lang/String;

.field public final authOnlineWithCacheCallTime:J

.field public final authOnlineWithCacheCallTimeStr:Ljava/lang/String;

.field public final osType:Ljava/lang/String;

.field public final osVersionCode:I

.field public final osVersionName:Ljava/lang/String;

.field public final versionNameLibAuth:Ljava/lang/String;

.field public final versionNameYTCommon:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/tencent/xmagic/auth/Auth$BindType;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/xmagic/auth/Auth$AuthInfo;->versionNameYTCommon:Ljava/lang/String;

    const-string v0, "1.1.2.4_xmagic"

    .line 4
    iput-object v0, p0, Lcom/tencent/xmagic/auth/Auth$AuthInfo;->versionNameLibAuth:Ljava/lang/String;

    const-string v0, "ANDROID"

    .line 5
    iput-object v0, p0, Lcom/tencent/xmagic/auth/Auth$AuthInfo;->osType:Ljava/lang/String;

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/tencent/xmagic/auth/Auth$AuthInfo;->osVersionCode:I

    .line 7
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/xmagic/auth/Auth$AuthInfo;->osVersionName:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/tencent/xmagic/auth/Auth$AuthInfo;->authLicenseId:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/tencent/xmagic/auth/Auth$AuthInfo;->authFileName:Ljava/lang/String;

    .line 10
    iput-wide p3, p0, Lcom/tencent/xmagic/auth/Auth$AuthInfo;->authOnlineWithCacheCallTime:J

    .line 11
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/auth/Auth$AuthInfo;->authOnlineWithCacheCallTimeStr:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lcom/tencent/xmagic/auth/Auth$AuthInfo;->authBindType:Lcom/tencent/xmagic/auth/Auth$BindType;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/tencent/xmagic/auth/Auth$BindType;Lcom/tencent/xmagic/auth/Auth$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/tencent/xmagic/auth/Auth$AuthInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/tencent/xmagic/auth/Auth$BindType;)V

    return-void
.end method
