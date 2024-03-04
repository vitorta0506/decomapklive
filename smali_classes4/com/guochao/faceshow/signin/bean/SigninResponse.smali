.class public final Lcom/guochao/faceshow/signin/bean/SigninResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/signin/bean/SigninResponse$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 02\u00020\u0001:\u00010B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B3\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u000eJ\u000b\u0010 \u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u0010\"\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0011\u0010#\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u00c6\u0003JD\u0010$\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cH\u00c6\u0001\u00a2\u0006\u0002\u0010%J\u0008\u0010&\u001a\u00020\u0008H\u0016J\u0013\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u00d6\u0003J\t\u0010+\u001a\u00020\u0008H\u00d6\u0001J\t\u0010,\u001a\u00020\u0006H\u00d6\u0001J\u0018\u0010-\u001a\u00020.2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010/\u001a\u00020\u0008H\u0016R\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u00061"
    }
    d2 = {
        "Lcom/guochao/faceshow/signin/bean/SigninResponse;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "tips",
        "",
        "status",
        "",
        "newUser",
        "Lcom/guochao/faceshow/signin/bean/NewUser;",
        "luckInfo",
        "",
        "Lcom/guochao/faceshow/signin/bean/RewardList;",
        "(Ljava/lang/String;Ljava/lang/Integer;Lcom/guochao/faceshow/signin/bean/NewUser;Ljava/util/List;)V",
        "getLuckInfo",
        "()Ljava/util/List;",
        "setLuckInfo",
        "(Ljava/util/List;)V",
        "getNewUser",
        "()Lcom/guochao/faceshow/signin/bean/NewUser;",
        "setNewUser",
        "(Lcom/guochao/faceshow/signin/bean/NewUser;)V",
        "getStatus",
        "()Ljava/lang/Integer;",
        "setStatus",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getTips",
        "()Ljava/lang/String;",
        "setTips",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Integer;Lcom/guochao/faceshow/signin/bean/NewUser;Ljava/util/List;)Lcom/guochao/faceshow/signin/bean/SigninResponse;",
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
.field public static final CREATOR:Lcom/guochao/faceshow/signin/bean/SigninResponse$CREATOR;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private luckInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private newUser:Lcom/guochao/faceshow/signin/bean/NewUser;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tips:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/signin/bean/SigninResponse$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/signin/bean/SigninResponse$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->CREATOR:Lcom/guochao/faceshow/signin/bean/SigninResponse$CREATOR;

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

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    const-class v2, Lcom/guochao/faceshow/signin/bean/NewUser;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/signin/bean/NewUser;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/guochao/faceshow/signin/bean/SigninResponse;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/guochao/faceshow/signin/bean/NewUser;Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->luckInfo:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const-class v1, Lcom/guochao/faceshow/signin/bean/RewardList;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/guochao/faceshow/signin/bean/NewUser;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/signin/bean/NewUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/signin/bean/NewUser;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->tips:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->status:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->newUser:Lcom/guochao/faceshow/signin/bean/NewUser;

    .line 5
    iput-object p4, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->luckInfo:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/faceshow/signin/bean/SigninResponse;Ljava/lang/String;Ljava/lang/Integer;Lcom/guochao/faceshow/signin/bean/NewUser;Ljava/util/List;ILjava/lang/Object;)Lcom/guochao/faceshow/signin/bean/SigninResponse;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->tips:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->status:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->newUser:Lcom/guochao/faceshow/signin/bean/NewUser;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->luckInfo:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/signin/bean/SigninResponse;->copy(Ljava/lang/String;Ljava/lang/Integer;Lcom/guochao/faceshow/signin/bean/NewUser;Ljava/util/List;)Lcom/guochao/faceshow/signin/bean/SigninResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Lcom/guochao/faceshow/signin/bean/NewUser;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->newUser:Lcom/guochao/faceshow/signin/bean/NewUser;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->luckInfo:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Integer;Lcom/guochao/faceshow/signin/bean/NewUser;Ljava/util/List;)Lcom/guochao/faceshow/signin/bean/SigninResponse;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/guochao/faceshow/signin/bean/NewUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/guochao/faceshow/signin/bean/NewUser;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;)",
            "Lcom/guochao/faceshow/signin/bean/SigninResponse;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/guochao/faceshow/signin/bean/SigninResponse;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/guochao/faceshow/signin/bean/NewUser;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->tips:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;->tips:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->status:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;->status:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->newUser:Lcom/guochao/faceshow/signin/bean/NewUser;

    iget-object v3, p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;->newUser:Lcom/guochao/faceshow/signin/bean/NewUser;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->luckInfo:Ljava/util/List;

    iget-object p1, p1, Lcom/guochao/faceshow/signin/bean/SigninResponse;->luckInfo:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getLuckInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->luckInfo:Ljava/util/List;

    return-object v0
.end method

.method public final getNewUser()Lcom/guochao/faceshow/signin/bean/NewUser;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->newUser:Lcom/guochao/faceshow/signin/bean/NewUser;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTips()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->tips:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->status:Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->newUser:Lcom/guochao/faceshow/signin/bean/NewUser;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/guochao/faceshow/signin/bean/NewUser;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->luckInfo:Ljava/util/List;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setLuckInfo(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/signin/bean/RewardList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->luckInfo:Ljava/util/List;

    return-void
.end method

.method public final setNewUser(Lcom/guochao/faceshow/signin/bean/NewUser;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/signin/bean/NewUser;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->newUser:Lcom/guochao/faceshow/signin/bean/NewUser;

    return-void
.end method

.method public final setStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->status:Ljava/lang/Integer;

    return-void
.end method

.method public final setTips(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->tips:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SigninResponse(tips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->tips:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->status:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->newUser:Lcom/guochao/faceshow/signin/bean/NewUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", luckInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->luckInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->tips:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->status:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/signin/bean/SigninResponse;->newUser:Lcom/guochao/faceshow/signin/bean/NewUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
