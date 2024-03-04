.class public final Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HobbyBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u001d\u001a\u00020\u000eH\u0016J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u000eH\u0016R\"\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u001b\u0010\u0010\"\u0004\u0008\u001c\u0010\u0012\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "hobbyList",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
        "getHobbyList",
        "()Ljava/util/List;",
        "setHobbyList",
        "(Ljava/util/List;)V",
        "typeId",
        "",
        "getTypeId",
        "()Ljava/lang/Integer;",
        "setTypeId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "typeName",
        "",
        "getTypeName",
        "()Ljava/lang/String;",
        "setTypeName",
        "(Ljava/lang/String;)V",
        "typeOrder",
        "getTypeOrder",
        "setTypeOrder",
        "describeContents",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
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
.field public static final CREATOR:Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean$CREATOR;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private hobbyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private typeOrder:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->CREATOR:Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean$CREATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeId:Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeName:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    move-object v3, p1

    check-cast v3, Ljava/lang/Integer;

    :cond_1
    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeOrder:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getHobbyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->hobbyList:Ljava/util/List;

    return-object v0
.end method

.method public final getTypeId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTypeName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTypeOrder()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeOrder:Ljava/lang/Integer;

    return-object v0
.end method

.method public final setHobbyList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->hobbyList:Ljava/util/List;

    return-void
.end method

.method public final setTypeId(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeId:Ljava/lang/Integer;

    return-void
.end method

.method public final setTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeName:Ljava/lang/String;

    return-void
.end method

.method public final setTypeOrder(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeOrder:Ljava/lang/Integer;

    return-void
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
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeId:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->typeOrder:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
