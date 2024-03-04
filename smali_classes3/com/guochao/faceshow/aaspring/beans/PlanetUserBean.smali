.class public final Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008%\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0015\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\"\u0010\u0018\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\n\u001a\u0004\u0008\u0019\u0010\u000c\"\u0004\u0008\u001a\u0010\u000eR\"\u0010\u001b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\n\u001a\u0004\u0008\u001c\u0010\u000c\"\u0004\u0008\u001d\u0010\u000eR\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\n\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000eR\"\u0010!\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u0010\u001a\u0004\u0008\"\u0010\u0012\"\u0004\u0008#\u0010\u0014R\"\u0010$\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\n\u001a\u0004\u0008%\u0010\u000c\"\u0004\u0008&\u0010\u000e\u00a8\u0006)"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;",
        "Lp7/h;",
        "",
        "getAvatarUrl",
        "",
        "getGender",
        "getPendantUrl",
        "getCountryFlag",
        "getCurrentUserId",
        "userId",
        "Ljava/lang/String;",
        "getUserId",
        "()Ljava/lang/String;",
        "setUserId",
        "(Ljava/lang/String;)V",
        "sort",
        "I",
        "getSort",
        "()I",
        "setSort",
        "(I)V",
        "score",
        "getScore",
        "setScore",
        "img",
        "getImg",
        "setImg",
        "nickName",
        "getNickName",
        "setNickName",
        "logo",
        "getLogo",
        "setLogo",
        "sex",
        "getSex",
        "setSex",
        "avatar",
        "getAvatar",
        "setAvatar",
        "<init>",
        "()V",
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
.field private avatar:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private img:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private logo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nickName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private score:I

.field private sex:I

.field private sort:I

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->userId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->img:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->nickName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->logo:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->avatar:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getAge()I
    .locals 1

    invoke-static {p0}, Lp7/a;->a(Lp7/b;)I

    move-result v0

    return v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->sex:I

    return v0
.end method

.method public final getImg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getLevel()I
    .locals 1

    invoke-static {p0}, Lp7/d;->a(Lp7/e;)I

    move-result v0

    return v0
.end method

.method public final getLogo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNickName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->score:I

    return v0
.end method

.method public final getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->sex:I

    return v0
.end method

.method public final getSort()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->sort:I

    return v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lp7/g;->c(Lp7/h;)Lb8/g;

    move-result-object v0

    return-object v0
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public final setImg(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->img:Ljava/lang/String;

    return-void
.end method

.method public final setLogo(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public final setNickName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public final setScore(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->score:I

    return-void
.end method

.method public final setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->sex:I

    return-void
.end method

.method public final setSort(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->sort:I

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/PlanetUserBean;->userId:Ljava/lang/String;

    return-void
.end method
