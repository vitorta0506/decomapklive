.class public final Lcom/guochao/component/mvp/model/GetInterestsRequestModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/mvp/model/GetInterestsRequestModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/guochao/component/mvp/model/GetInterestsRequestModel;",
        "Landroid/os/Parcelable;",
        "type",
        "",
        "mvpLevel",
        "anchorId",
        "",
        "stime",
        "(IILjava/lang/String;Ljava/lang/String;)V",
        "getAnchorId",
        "()Ljava/lang/String;",
        "setAnchorId",
        "(Ljava/lang/String;)V",
        "getMvpLevel",
        "()I",
        "setMvpLevel",
        "(I)V",
        "getStime",
        "setStime",
        "getType",
        "setType",
        "describeContents",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
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
            "Lcom/guochao/component/mvp/model/GetInterestsRequestModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/guochao/component/mvp/model/GetInterestsRequestModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_CAR:I = 0x1

.field public static final TYPE_CHAT_SHADING:I = 0x3

.field public static final TYPE_DIAMOND:I = 0x0

.field public static final TYPE_FREE_TIME:I = 0x6

.field public static final TYPE_HEAD_PICTURE_FRAME:I = 0x2

.field public static final TYPE_LIVE_SPECIAL_BULLET_SCREEN:I = 0x5

.field public static final TYPE_MEDAL:I = 0x4

.field public static final TYPE_MVP_SPECIAL_GIFT:I = 0x8

.field public static final TYPE_SET_TO_TOP:I = 0x7


# instance fields
.field private anchorId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mvpLevel:I

.field private stime:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/mvp/model/GetInterestsRequestModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->Companion:Lcom/guochao/component/mvp/model/GetInterestsRequestModel$Companion;

    new-instance v0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel$Creator;

    invoke-direct {v0}, Lcom/guochao/component/mvp/model/GetInterestsRequestModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "anchorId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->type:I

    .line 3
    iput p2, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->mvpLevel:I

    .line 4
    iput-object p3, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->anchorId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->stime:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAnchorId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->anchorId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMvpLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->mvpLevel:I

    return v0
.end method

.method public final getStime()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->stime:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->type:I

    return v0
.end method

.method public final setAnchorId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->anchorId:Ljava/lang/String;

    return-void
.end method

.method public final setMvpLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->mvpLevel:I

    return-void
.end method

.method public final setStime(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->stime:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "out"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->mvpLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->anchorId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/component/mvp/model/GetInterestsRequestModel;->stime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
