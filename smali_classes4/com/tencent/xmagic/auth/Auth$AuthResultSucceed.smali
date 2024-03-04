.class public Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/xmagic/auth/Auth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthResultSucceed"
.end annotation


# instance fields
.field public final endTime:J

.field public final endTimeStr:Ljava/lang/String;

.field public final features:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;->features:Ljava/util/Map;

    .line 4
    invoke-static {}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->getEndTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;->endTime:J

    .line 5
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;->endTimeStr:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->getSDKList()[I

    move-result-object v0

    .line 7
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    aget v3, v0, v2

    .line 9
    iget-object v4, p0, Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;->features:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;->featureNameForId(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/xmagic/auth/Auth$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/xmagic/auth/Auth$AuthResultSucceed;-><init>()V

    return-void
.end method

.method private static featureNameForId(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/tencent/youtu/xmagic/YTCommonInterface;->getSDKNameByID(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
