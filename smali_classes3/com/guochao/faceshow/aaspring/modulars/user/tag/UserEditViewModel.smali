.class public final Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$UpdateUserInfoEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001*B\u0005\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u001c\u0010\u001b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00100\u001cJ\u0006\u0010\u001d\u001a\u00020\u0018J\u0006\u0010\u001e\u001a\u00020\u0018J\u0006\u0010\u001f\u001a\u00020\u0018J\u001e\u0010 \u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00100\u000fH\u0002J$\u0010!\u001a\u00020\u00182\u001c\u0010\u001b\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00100\u001cJ\u0016\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020\u0011J\u001c\u0010%\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00112\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00110(J\u001c\u0010)\u001a\u00020\u00182\u0006\u0010&\u001a\u00020\u00112\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00110(R\u0019\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR1\u0010\u000e\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00100\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006+"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "mEmotionalList",
        "",
        "Lcom/guochao/faceshow/bean/EmotionalTag;",
        "getMEmotionalList",
        "()Ljava/util/List;",
        "mUserData",
        "Lcom/guochao/faceshow/aaspring/beans/SetInfoData;",
        "getMUserData",
        "()Lcom/guochao/faceshow/aaspring/beans/SetInfoData;",
        "setMUserData",
        "(Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V",
        "modelLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "",
        "",
        "getModelLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "modelLiveData$delegate",
        "Lkotlin/Lazy;",
        "bind",
        "",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "getFriendShipByUserId",
        "getUserHobbyTag",
        "getUserLikedTag",
        "obtainLiveData",
        "unbind",
        "updateUserFriendShip",
        "tagIds",
        "tagNames",
        "updateUserHobbyTag",
        "hobbyIds",
        "hobbyNames",
        "",
        "updateUserLikedTag",
        "UpdateUserInfoEvent",
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


# instance fields
.field private final mEmotionalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/EmotionalTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mUserData:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final modelLiveData$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$modelLiveData$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$modelLiveData$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->modelLiveData$delegate:Lkotlin/Lazy;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->mEmotionalList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getModelLiveData(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$obtainLiveData(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->obtainLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method private final getModelLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->modelLiveData$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method private final obtainLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method public final getFriendShipByUserId()V
    .locals 2

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->findfriendByUserId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$getFriendShipByUserId$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$getFriendShipByUserId$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public final getMEmotionalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/bean/EmotionalTag;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->mEmotionalList:Ljava/util/List;

    return-object v0
.end method

.method public final getMUserData()Lcom/guochao/faceshow/aaspring/beans/SetInfoData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->mUserData:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    return-object v0
.end method

.method public final getUserHobbyTag()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v1, "tokens/hobby/queryHobbyByUserId/V2"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$getUserHobbyTag$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$getUserHobbyTag$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public final getUserLikedTag()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;

    const-string v1, "tokens/hobby/queryUserPreferenceHobby"

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/GetRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$getUserLikedTag$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$getUserLikedTag$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public final setMUserData(Lcom/guochao/faceshow/aaspring/beans/SetInfoData;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/SetInfoData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->mUserData:Lcom/guochao/faceshow/aaspring/beans/SetInfoData;

    return-void
.end method

.method public final unbind(Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->getModelLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final updateUserFriendShip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tagIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tagNames"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->updatefriendTag:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$updateUserFriendShip$1;

    invoke-direct {v0, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$updateUserFriendShip$1;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public final updateUserHobbyTag(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hobbyIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "hobbyNames"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "tokens/hobby/updateTagsByUserId"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-virtual {v1, v3, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$updateUserHobbyTag$1;

    invoke-direct {v0, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$updateUserHobbyTag$1;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public final updateUserLikedTag(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hobbyIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "hobbyNames"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v2, "tokens/hobby/updateUserPreferenceHobby"

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$updateUserLikedTag$1;

    invoke-direct {v0, p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$updateUserLikedTag$1;-><init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
