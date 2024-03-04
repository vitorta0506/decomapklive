.class public final Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001c\u0008\u0086\u0008\u0018\u00002\u00020\u0001BS\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007\u0012\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n\u0012\u0010\u0010\u0013\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000c\u00a2\u0006\u0004\u00084\u00105J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0011\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007H\u00c6\u0003J\u0017\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\nH\u00c6\u0003J\u0013\u0010\u000e\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000cH\u00c6\u0003Jf\u0010\u0014\u001a\u00020\u00002\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00072\u0016\u0008\u0002\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n2\u0012\u0008\u0002\u0010\u0013\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000cH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0017H\u00d6\u0001J\u0013\u0010\u001b\u001a\u00020\u001a2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u0004\"\u0004\u0008\u001e\u0010\u001fR$\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R*\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R0\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R,\u0010\u0013\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000c8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103\u00a8\u00066"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;",
        "",
        "",
        "component1",
        "()Ljava/lang/Long;",
        "",
        "component2",
        "Ljava/lang/ref/WeakReference;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "component3",
        "",
        "component4",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
        "component5",
        "unixTime",
        "XX",
        "lifecycleOwner",
        "params",
        "callBack",
        "copy",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Ljava/lang/Long;",
        "getUnixTime",
        "setUnixTime",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/String;",
        "getXX",
        "()Ljava/lang/String;",
        "setXX",
        "(Ljava/lang/String;)V",
        "Ljava/lang/ref/WeakReference;",
        "getLifecycleOwner",
        "()Ljava/lang/ref/WeakReference;",
        "setLifecycleOwner",
        "(Ljava/lang/ref/WeakReference;)V",
        "Ljava/util/Map;",
        "getParams",
        "()Ljava/util/Map;",
        "setParams",
        "(Ljava/util/Map;)V",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "getCallBack",
        "()Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "setCallBack",
        "(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V",
        "<init>",
        "(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private XX:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lifecycleOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private unixTime:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 1
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->unixTime:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->XX:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->lifecycleOwner:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->params:Ljava/util/Map;

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->unixTime:Ljava/lang/Long;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->XX:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->lifecycleOwner:Ljava/lang/ref/WeakReference;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->params:Ljava/util/Map;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->unixTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->XX:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->lifecycleOwner:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final component4()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->params:Ljava/util/Map;

    return-object v0
.end method

.method public final component5()Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-object v0
.end method

.method public final copy(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;
    .locals 7
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "lifecycleOwner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->unixTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->unixTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->XX:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->XX:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->lifecycleOwner:Ljava/lang/ref/WeakReference;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->lifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->params:Ljava/util/Map;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->params:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCallBack()Lcom/guochao/faceshow/aaspring/base/http/callback/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-object v0
.end method

.method public final getLifecycleOwner()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->lifecycleOwner:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->params:Ljava/util/Map;

    return-object v0
.end method

.method public final getUnixTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->unixTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getXX()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->XX:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->unixTime:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->XX:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->lifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->params:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCallBack(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/callback/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    return-void
.end method

.method public final setLifecycleOwner(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->lifecycleOwner:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setParams(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->params:Ljava/util/Map;

    return-void
.end method

.method public final setUnixTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->unixTime:Ljava/lang/Long;

    return-void
.end method

.method public final setXX(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->XX:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GiftRequestBean(unixTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->unixTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", XX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->XX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lifecycleOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->lifecycleOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GiftRequestBean;->callBack:Lcom/guochao/faceshow/aaspring/base/http/callback/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
