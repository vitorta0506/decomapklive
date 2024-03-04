.class public final Lcom/guochao/component/mvp/model/GiftModel;
.super Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B7\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u001a\u001a\u00020\u0004H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0011\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0004H\u00c6\u0003J;\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004H\u00c6\u0001J\t\u0010\u001f\u001a\u00020\u0004H\u00d6\u0001J\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u00d6\u0003J\t\u0010$\u001a\u00020\u0004H\u00d6\u0001J\t\u0010%\u001a\u00020\u0006H\u00d6\u0001J\u0019\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0004H\u00d6\u0001R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\n\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006+"
    }
    d2 = {
        "Lcom/guochao/component/mvp/model/GiftModel;",
        "Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;",
        "Landroid/os/Parcelable;",
        "type",
        "",
        "logo",
        "",
        "typeDataList",
        "",
        "Lcom/guochao/component/mvp/model/TypeData;",
        "selected",
        "(ILjava/lang/String;Ljava/util/List;I)V",
        "getLogo",
        "()Ljava/lang/String;",
        "setLogo",
        "(Ljava/lang/String;)V",
        "getSelected",
        "()I",
        "setSelected",
        "(I)V",
        "getType",
        "setType",
        "getTypeDataList",
        "()Ljava/util/List;",
        "setTypeDataList",
        "(Ljava/util/List;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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
            "Lcom/guochao/component/mvp/model/GiftModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private logo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private selected:I

.field private type:I

.field private typeDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/component/mvp/model/GiftModel$Creator;

    invoke-direct {v0}, Lcom/guochao/component/mvp/model/GiftModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/mvp/model/GiftModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/guochao/component/mvp/model/GiftModel;-><init>(ILjava/lang/String;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;I)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/model/BaseModel;-><init>()V

    .line 3
    iput p1, p0, Lcom/guochao/component/mvp/model/GiftModel;->type:I

    .line 4
    iput-object p2, p0, Lcom/guochao/component/mvp/model/GiftModel;->logo:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/guochao/component/mvp/model/GiftModel;->typeDataList:Ljava/util/List;

    .line 6
    iput p4, p0, Lcom/guochao/component/mvp/model/GiftModel;->selected:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p5, 0x1

    const/4 v0, -0x1

    if-eqz p6, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v1, 0x0

    if-eqz p6, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, -0x1

    .line 1
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/component/mvp/model/GiftModel;-><init>(ILjava/lang/String;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/mvp/model/GiftModel;ILjava/lang/String;Ljava/util/List;IILjava/lang/Object;)Lcom/guochao/component/mvp/model/GiftModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/guochao/component/mvp/model/GiftModel;->type:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/guochao/component/mvp/model/GiftModel;->logo:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/guochao/component/mvp/model/GiftModel;->typeDataList:Ljava/util/List;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/guochao/component/mvp/model/GiftModel;->selected:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/component/mvp/model/GiftModel;->copy(ILjava/lang/String;Ljava/util/List;I)Lcom/guochao/component/mvp/model/GiftModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->type:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->typeDataList:Ljava/util/List;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->selected:I

    return v0
.end method

.method public final copy(ILjava/lang/String;Ljava/util/List;I)Lcom/guochao/component/mvp/model/GiftModel;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;I)",
            "Lcom/guochao/component/mvp/model/GiftModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/component/mvp/model/GiftModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/guochao/component/mvp/model/GiftModel;-><init>(ILjava/lang/String;Ljava/util/List;I)V

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
    instance-of v1, p1, Lcom/guochao/component/mvp/model/GiftModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/mvp/model/GiftModel;

    iget v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->type:I

    iget v3, p1, Lcom/guochao/component/mvp/model/GiftModel;->type:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->logo:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/mvp/model/GiftModel;->logo:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->typeDataList:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/component/mvp/model/GiftModel;->typeDataList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->selected:I

    iget p1, p1, Lcom/guochao/component/mvp/model/GiftModel;->selected:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getLogo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public final getSelected()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->selected:I

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->type:I

    return v0
.end method

.method public final getTypeDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->typeDataList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->logo:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->typeDataList:Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->selected:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setLogo(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/mvp/model/GiftModel;->logo:Ljava/lang/String;

    return-void
.end method

.method public final setSelected(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/mvp/model/GiftModel;->selected:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/mvp/model/GiftModel;->type:I

    return-void
.end method

.method public final setTypeDataList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/mvp/model/TypeData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/mvp/model/GiftModel;->typeDataList:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GiftModel(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->logo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", typeDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->typeDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/mvp/model/GiftModel;->selected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/component/mvp/model/GiftModel;->typeDataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/component/mvp/model/TypeData;

    invoke-virtual {v1, p1, p2}, Lcom/guochao/component/mvp/model/TypeData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget p2, p0, Lcom/guochao/component/mvp/model/GiftModel;->selected:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
