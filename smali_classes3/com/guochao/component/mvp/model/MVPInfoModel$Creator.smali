.class public final Lcom/guochao/component/mvp/model/MVPInfoModel$Creator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/mvp/model/MVPInfoModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/guochao/component/mvp/model/MVPInfoModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/guochao/component/mvp/model/MVPInfoModel;
    .locals 6
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpConfVo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move-object v4, v2

    goto :goto_5

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-eq v1, v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v2

    goto :goto_4

    :cond_4
    sget-object v5, Lcom/guochao/component/mvp/model/MVPInfoModel$MvpRightsVo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    :goto_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    sget-object v0, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    :goto_6
    check-cast v0, Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_7
    new-instance p1, Lcom/guochao/component/mvp/model/MVPInfoModel;

    invoke-direct {p1, v3, v4, v0, v2}, Lcom/guochao/component/mvp/model/MVPInfoModel;-><init>(Ljava/util/List;Ljava/util/List;Lcom/guochao/component/mvp/model/MVPInfoModel$MyMvpInfoResult;Ljava/lang/Double;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/component/mvp/model/MVPInfoModel$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/guochao/component/mvp/model/MVPInfoModel;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/guochao/component/mvp/model/MVPInfoModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-array p1, p1, [Lcom/guochao/component/mvp/model/MVPInfoModel;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/component/mvp/model/MVPInfoModel$Creator;->newArray(I)[Lcom/guochao/component/mvp/model/MVPInfoModel;

    move-result-object p1

    return-object p1
.end method
