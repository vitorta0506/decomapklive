.class public final Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002:\u0001+B/\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\tJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u00c6\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u00c6\u0003J9\u0010\u001d\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u00c6\u0001J\t\u0010\u001e\u001a\u00020\u0013H\u00d6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0013H\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001J\u0019\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0013H\u00d6\u0001R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0016\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\"\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000f\"\u0004\u0008\u0019\u0010\u0011\u00a8\u0006,"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Landroid/os/Parcelable;",
        "appointSetting",
        "Lcom/guochao/faceshow/aaspring/beans/DataAuth;",
        "audioPriceRules",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
        "videoPriceRules",
        "(Lcom/guochao/faceshow/aaspring/beans/DataAuth;Ljava/util/List;Ljava/util/List;)V",
        "getAppointSetting",
        "()Lcom/guochao/faceshow/aaspring/beans/DataAuth;",
        "setAppointSetting",
        "(Lcom/guochao/faceshow/aaspring/beans/DataAuth;)V",
        "getAudioPriceRules",
        "()Ljava/util/List;",
        "setAudioPriceRules",
        "(Ljava/util/List;)V",
        "currentAudioPrice",
        "",
        "getCurrentAudioPrice",
        "()I",
        "currentVideoPrice",
        "getCurrentVideoPrice",
        "getVideoPriceRules",
        "setVideoPriceRules",
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
        "DatePriceRoleModel",
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

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private audioPriceRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private videoPriceRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$Creator;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/guochao/faceshow/aaspring/beans/DataAuth;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/DataAuth;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/DataAuth;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;Lcom/guochao/faceshow/aaspring/beans/DataAuth;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->copy(Lcom/guochao/faceshow/aaspring/beans/DataAuth;Ljava/util/List;Ljava/util/List;)Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/guochao/faceshow/aaspring/beans/DataAuth;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/guochao/faceshow/aaspring/beans/DataAuth;Ljava/util/List;Ljava/util/List;)Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/DataAuth;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/DataAuth;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;-><init>(Lcom/guochao/faceshow/aaspring/beans/DataAuth;Ljava/util/List;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAppointSetting()Lcom/guochao/faceshow/aaspring/beans/DataAuth;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    return-object v0
.end method

.method public final getAudioPriceRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

    return-object v0
.end method

.method public final getCurrentAudioPrice()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    .line 3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->getChecked()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->getDiamond()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final getCurrentVideoPrice()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    .line 3
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->getChecked()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->getDiamond()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public final getVideoPriceRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAppointSetting(Lcom/guochao/faceshow/aaspring/beans/DataAuth;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/DataAuth;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    return-void
.end method

.method public final setAudioPriceRules(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

    return-void
.end method

.method public final setVideoPriceRules(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DatePriceSettingModel(appointSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", audioPriceRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPriceRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->appointSetting:Lcom/guochao/faceshow/aaspring/beans/DataAuth;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->audioPriceRules:Ljava/util/List;

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

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    invoke-virtual {v3, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel;->videoPriceRules:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;

    invoke-virtual {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/date/model/DatePriceSettingModel$DatePriceRoleModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
