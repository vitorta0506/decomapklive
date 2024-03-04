.class public final Lcom/guochao/component/mvp/model/MVPInfoModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;,
        Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;,
        Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002:\u0003+,-B=\u0012\u0010\u0010\u0003\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004\u0012\u0010\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u0017\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004H\u00c6\u0003J\u0013\u0010\u0018\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0004H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013JN\u0010\u001b\u001a\u00020\u00002\u0012\u0008\u0002\u0010\u0003\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00042\u0012\u0008\u0002\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001cJ\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u001eH\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001J\u0019\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u001eH\u00d6\u0001R\u001b\u0010\u0003\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0006\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006."
    }
    d2 = {
        "Lcom/guochao/component/mvp/model/MVPInfoModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Landroid/os/Parcelable;",
        "mvpConfVoList",
        "",
        "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;",
        "mvpRightsVoList",
        "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
        "myMvpInfoResult",
        "Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;",
        "rechargeMoney",
        "",
        "(Ljava/util/List;Ljava/util/List;Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;Ljava/lang/Double;)V",
        "getMvpConfVoList",
        "()Ljava/util/List;",
        "getMvpRightsVoList",
        "getMyMvpInfoResult",
        "()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;",
        "getRechargeMoney",
        "()Ljava/lang/Double;",
        "setRechargeMoney",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/util/List;Ljava/util/List;Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;Ljava/lang/Double;)Lcom/guochao/component/mvp/model/MVPInfoModel;",
        "describeContents",
        "",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "MvpConfVo",
        "MvpRightsVo",
        "MyMvpInfoResult",
        "component_mvp_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mvpConfVoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mvpRightsVoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final myMvpInfoResult:Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rechargeMoney:Ljava/lang/Double;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/component/mvp/model/MVPInfoModel$Creator;

    invoke-direct {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/mvp/model/MVPInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
            ">;",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;",
            "Ljava/lang/Double;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpConfVoList:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpRightsVoList:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->myMvpInfoResult:Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    .line 5
    iput-object p4, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->rechargeMoney:Ljava/lang/Double;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/mvp/model/MVPInfoModel;Ljava/util/List;Ljava/util/List;Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;Ljava/lang/Double;ILjava/lang/Object;)Lcom/guochao/component/mvp/model/MVPInfoModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpConfVoList:Ljava/util/List;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpRightsVoList:Ljava/util/List;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->myMvpInfoResult:Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->rechargeMoney:Ljava/lang/Double;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;->copy(Ljava/util/List;Ljava/util/List;Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;Ljava/lang/Double;)Lcom/guochao/component/mvp/model/MVPInfoModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpConfVoList:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpRightsVoList:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->myMvpInfoResult:Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    return-object v0
.end method

.method public final component4()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->rechargeMoney:Ljava/lang/Double;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;Ljava/lang/Double;)Lcom/guochao/component/mvp/model/MVPInfoModel;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
            ">;",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;",
            "Ljava/lang/Double;",
            ")",
            "Lcom/guochao/component/mvp/model/MVPInfoModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/component/mvp/model/MVPInfoModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/guochao/component/mvp/model/MVPInfoModel;-><init>(Ljava/util/List;Ljava/util/List;Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;Ljava/lang/Double;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
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
    instance-of v1, p1, Lcom/guochao/component/mvp/model/MVPInfoModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/mvp/model/MVPInfoModel;

    iget-object v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpConfVoList:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpConfVoList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpRightsVoList:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpRightsVoList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->myMvpInfoResult:Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    iget-object v3, p1, Lcom/guochao/component/mvp/model/MVPInfoModel;->myMvpInfoResult:Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->rechargeMoney:Ljava/lang/Double;

    iget-object p1, p1, Lcom/guochao/component/mvp/model/MVPInfoModel;->rechargeMoney:Ljava/lang/Double;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getMvpConfVoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpConfVoList:Ljava/util/List;

    return-object v0
.end method

.method public final getMvpRightsVoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpRightsVoList:Ljava/util/List;

    return-object v0
.end method

.method public final getMyMvpInfoResult()Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->myMvpInfoResult:Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    return-object v0
.end method

.method public final getRechargeMoney()Ljava/lang/Double;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->rechargeMoney:Ljava/lang/Double;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpConfVoList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpRightsVoList:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->myMvpInfoResult:Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->rechargeMoney:Ljava/lang/Double;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setRechargeMoney(Ljava/lang/Double;)V
    .locals 0
    .param p1    # Ljava/lang/Double;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->rechargeMoney:Ljava/lang/Double;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MVPInfoModel(mvpConfVoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpConfVoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mvpRightsVoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpRightsVoList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", myMvpInfoResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->myMvpInfoResult:Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rechargeMoney="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->rechargeMoney:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpConfVoList:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    if-nez v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p1, p2}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->mvpRightsVoList:Ljava/util/List;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;

    if-nez v3, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p1, p2}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->myMvpInfoResult:Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    iget-object p2, p0, Lcom/guochao/component/mvp/model/MVPInfoModel;->rechargeMoney:Ljava/lang/Double;

    if-nez p2, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_5
    return-void
.end method
