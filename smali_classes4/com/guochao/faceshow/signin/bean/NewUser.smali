.class public final Lcom/guochao/faceshow/signin/bean/NewUser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/signin/bean/NewUser$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u001e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 22\u00020\u0001:\u00012B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004BO\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000eJ\t\u0010 \u001a\u00020\u0006H\u00c6\u0003J\t\u0010!\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0006H\u00c6\u0003J\t\u0010#\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\t\u0010%\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003JS\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001J\u0008\u0010(\u001a\u00020\u0006H\u0016J\u0013\u0010)\u001a\u00020*2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u00d6\u0003J\t\u0010-\u001a\u00020\u0006H\u00d6\u0001J\t\u0010.\u001a\u00020\u000bH\u00d6\u0001J\u0018\u0010/\u001a\u0002002\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00101\u001a\u00020\u0006H\u0016R\u001a\u0010\u0008\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014\"\u0004\u0008\u0018\u0010\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0010\"\u0004\u0008\u0019\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\"\u0004\u0008\u001b\u0010\u0012R\u001a\u0010\t\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0010\"\u0004\u0008\u001d\u0010\u0012R\u001a\u0010\u000c\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0010\"\u0004\u0008\u001f\u0010\u0012\u00a8\u00063"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/bean/NewUser;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "isNewUser",
        "",
        "regDay",
        "charmValues",
        "rewardDiamond",
        "fCerHeadImg",
        "",
        "usedDay",
        "fCerIndex",
        "(IIIILjava/lang/String;ILjava/lang/String;)V",
        "getCharmValues",
        "()I",
        "setCharmValues",
        "(I)V",
        "getFCerHeadImg",
        "()Ljava/lang/String;",
        "setFCerHeadImg",
        "(Ljava/lang/String;)V",
        "getFCerIndex",
        "setFCerIndex",
        "setNewUser",
        "getRegDay",
        "setRegDay",
        "getRewardDiamond",
        "setRewardDiamond",
        "getUsedDay",
        "setUsedDay",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
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
        "flags",
        "CREATOR",
        "lib_sign_in_release"
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
.field public static final CREATOR:Lcom/guochao/faceshow/signin/bean/NewUser$CREATOR;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private charmValues:I

.field private fCerHeadImg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fCerIndex:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isNewUser:I

.field private regDay:I

.field private rewardDiamond:I

.field private usedDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/signin/bean/NewUser$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/signin/bean/NewUser$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/signin/bean/NewUser;->CREATOR:Lcom/guochao/faceshow/signin/bean/NewUser$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/guochao/faceshow/signin/bean/NewUser;-><init>(IIIILjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser:I

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->regDay:I

    .line 4
    iput p3, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->charmValues:I

    .line 5
    iput p4, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->rewardDiamond:I

    .line 6
    iput-object p5, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerHeadImg:Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->usedDay:I

    .line 8
    iput-object p7, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerIndex:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IIIILjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    const/4 p9, 0x0

    goto :goto_0

    :cond_0
    move p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    move v3, p4

    :goto_3
    and-int/lit8 p1, p8, 0x10

    const-string p2, ""

    if-eqz p1, :cond_4

    move-object v4, p2

    goto :goto_4

    :cond_4
    move-object v4, p5

    :goto_4
    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move v0, p6

    :goto_5
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    move-object p8, p2

    goto :goto_6

    :cond_6
    move-object p8, p7

    :goto_6
    move-object p1, p0

    move p2, p9

    move p3, v1

    move p4, v2

    move p5, v3

    move-object p6, v4

    move p7, v0

    .line 9
    invoke-direct/range {p1 .. p8}, Lcom/guochao/faceshow/signin/bean/NewUser;-><init>(IIIILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    .line 17
    invoke-direct/range {v1 .. v8}, Lcom/guochao/faceshow/signin/bean/NewUser;-><init>(IIIILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/signin/bean/NewUser;IIIILjava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/guochao/faceshow/signin/bean/NewUser;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->regDay:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->charmValues:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->rewardDiamond:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerHeadImg:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->usedDay:I

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerIndex:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move-object p7, v2

    move p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/guochao/faceshow/signin/bean/NewUser;->copy(IIIILjava/lang/String;ILjava/lang/String;)Lcom/guochao/faceshow/signin/bean/NewUser;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->regDay:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->charmValues:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->rewardDiamond:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerHeadImg:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->usedDay:I

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerIndex:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IIIILjava/lang/String;ILjava/lang/String;)Lcom/guochao/faceshow/signin/bean/NewUser;
    .locals 9
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Lcom/guochao/faceshow/signin/bean/NewUser;

    move-object v0, v8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/guochao/faceshow/signin/bean/NewUser;-><init>(IIIILjava/lang/String;ILjava/lang/String;)V

    return-object v8
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
    instance-of v1, p1, Lcom/guochao/faceshow/signin/bean/NewUser;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/signin/bean/NewUser;

    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser:I

    iget v3, p1, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->regDay:I

    iget v3, p1, Lcom/guochao/faceshow/signin/bean/NewUser;->regDay:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->charmValues:I

    iget v3, p1, Lcom/guochao/faceshow/signin/bean/NewUser;->charmValues:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->rewardDiamond:I

    iget v3, p1, Lcom/guochao/faceshow/signin/bean/NewUser;->rewardDiamond:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerHeadImg:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerHeadImg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->usedDay:I

    iget v3, p1, Lcom/guochao/faceshow/signin/bean/NewUser;->usedDay:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerIndex:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerIndex:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCharmValues()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->charmValues:I

    return v0
.end method

.method public final getFCerHeadImg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerHeadImg:Ljava/lang/String;

    return-object v0
.end method

.method public final getFCerIndex()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerIndex:Ljava/lang/String;

    return-object v0
.end method

.method public final getRegDay()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->regDay:I

    return v0
.end method

.method public final getRewardDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->rewardDiamond:I

    return v0
.end method

.method public final getUsedDay()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->usedDay:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->regDay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->charmValues:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->rewardDiamond:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerHeadImg:Ljava/lang/String;

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

    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->usedDay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerIndex:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isNewUser()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser:I

    return v0
.end method

.method public final setCharmValues(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->charmValues:I

    return-void
.end method

.method public final setFCerHeadImg(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerHeadImg:Ljava/lang/String;

    return-void
.end method

.method public final setFCerIndex(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerIndex:Ljava/lang/String;

    return-void
.end method

.method public final setNewUser(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser:I

    return-void
.end method

.method public final setRegDay(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->regDay:I

    return-void
.end method

.method public final setRewardDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->rewardDiamond:I

    return-void
.end method

.method public final setUsedDay(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->usedDay:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewUser(isNewUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", regDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->regDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", charmValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->charmValues:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rewardDiamond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->rewardDiamond:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fCerHeadImg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerHeadImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", usedDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->usedDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fCerIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->isNewUser:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->regDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->charmValues:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->rewardDiamond:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerHeadImg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->usedDay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/NewUser;->fCerIndex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
