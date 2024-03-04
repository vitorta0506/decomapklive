.class public final Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/mvp/model/MVPInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MvpConfVo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;",
        "Landroid/os/Parcelable;",
        "mvpLevel",
        "",
        "rechargeMax",
        "",
        "rechargeMin",
        "(IDD)V",
        "getMvpLevel",
        "()I",
        "getRechargeMax",
        "()D",
        "getRechargeMin",
        "component1",
        "component2",
        "component3",
        "copy",
        "describeContents",
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
            "Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mvpLevel:I

.field private final rechargeMax:D

.field private final rechargeMin:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo$Creator;

    invoke-direct {v0}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;-><init>(IDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->mvpLevel:I

    .line 3
    iput-wide p2, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMax:D

    .line 4
    iput-wide p4, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMin:D

    return-void
.end method

.method public synthetic constructor <init>(IDDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const-wide/16 v0, 0x0

    if-eqz p7, :cond_1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    move-wide v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    move-wide p6, v0

    goto :goto_1

    :cond_2
    move-wide p6, p4

    :goto_1
    move-object p2, p0

    move p3, p1

    move-wide p4, v2

    .line 5
    invoke-direct/range {p2 .. p7}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;-><init>(IDD)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;IDDILjava/lang/Object;)Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;
    .locals 2

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->mvpLevel:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMax:D

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p4, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMin:D

    :cond_2
    move-wide p6, p4

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    invoke-virtual/range {p2 .. p7}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->copy(IDD)Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->mvpLevel:I

    return v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMax:D

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMin:D

    return-wide v0
.end method

.method public final copy(IDD)Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    move-object v0, v6

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;-><init>(IDD)V

    return-object v6
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;

    iget v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->mvpLevel:I

    iget v3, p1, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->mvpLevel:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMax:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMax:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMin:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMin:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMvpLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->mvpLevel:I

    return v0
.end method

.method public final getRechargeMax()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMax:D

    return-wide v0
.end method

.method public final getRechargeMin()D
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMin:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->mvpLevel:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMax:D

    invoke-static {v1, v2}, Lb7/a;->a(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMin:D

    invoke-static {v1, v2}, Lb7/a;->a(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MvpConfVo(mvpLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->mvpLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rechargeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", rechargeMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->mvpLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMax:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->rechargeMin:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
