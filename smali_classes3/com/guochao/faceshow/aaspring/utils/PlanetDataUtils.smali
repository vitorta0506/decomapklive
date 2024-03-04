.class public final Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R \u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;",
        "",
        "()V",
        "planetBaseMatchUser",
        "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
        "getPlanetBaseMatchUser",
        "()Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
        "setPlanetBaseMatchUser",
        "(Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;)V",
        "planetDataList",
        "",
        "getPlanetDataList",
        "()Ljava/util/List;",
        "setPlanetDataList",
        "(Ljava/util/List;)V",
        "planetDataTime",
        "",
        "getPlanetDataTime",
        "()J",
        "setPlanetDataTime",
        "(J)V",
        "planetUserIdList",
        "getPlanetUserIdList",
        "setPlanetUserIdList",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static planetBaseMatchUser:Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static planetDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static planetDataTime:J

.field private static planetUserIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->planetDataList:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->planetUserIdList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPlanetBaseMatchUser()Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->planetBaseMatchUser:Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    return-object v0
.end method

.method public final getPlanetDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->planetDataList:Ljava/util/List;

    return-object v0
.end method

.method public final getPlanetDataTime()J
    .locals 2

    sget-wide v0, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->planetDataTime:J

    return-wide v0
.end method

.method public final getPlanetUserIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->planetUserIdList:Ljava/util/List;

    return-object v0
.end method

.method public final setPlanetBaseMatchUser(Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->planetBaseMatchUser:Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;

    return-void
.end method

.method public final setPlanetDataList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->planetDataList:Ljava/util/List;

    return-void
.end method

.method public final setPlanetDataTime(J)V
    .locals 0

    sput-wide p1, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->planetDataTime:J

    return-void
.end method

.method public final setPlanetUserIdList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/guochao/faceshow/aaspring/utils/PlanetDataUtils;->planetUserIdList:Ljava/util/List;

    return-void
.end method
