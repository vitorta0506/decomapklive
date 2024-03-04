.class public final Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 !2\u00020\u00012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0002:\u0001!B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\u0012\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000cH\u0014J \u0010\u0012\u001a\u00020\u000c2\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003H\u0016J\u0008\u0010\u0014\u001a\u00020\u000cH\u0016J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0017H\u0007J\u001c\u0010\u0018\u001a\u00020\u000c2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\"\u0010\u0018\u001a\u00020\u000c2\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001d2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002J\u0012\u0010\u001e\u001a\u00020\u000c2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u001fH\u0002J\u0010\u0010 \u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u001fH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
        "Landroidx/lifecycle/Observer;",
        "",
        "",
        "",
        "()V",
        "viewModel",
        "Lcom/guochao/faceshow/userhomepage/UserHomePageModel;",
        "getLayoutId",
        "",
        "initUserTrankData",
        "",
        "userId",
        "initView",
        "view",
        "Landroid/view/View;",
        "loadData",
        "onChanged",
        "t",
        "onDestroyView",
        "onUpdateUserInfoEvent",
        "event",
        "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$UpdateUserInfoEvent;",
        "setInfoToView",
        "text",
        "textView",
        "Landroid/widget/TextView;",
        "texts",
        "",
        "setUserInfo",
        "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;",
        "setUserTags",
        "Companion",
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
.field public static final Companion:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic P1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setUserInfo$lambda-9(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->Companion:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$Companion;->getInstance(Ljava/lang/String;)Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    move-result-object p0

    return-object p0
.end method

.method private final initUserTrankData(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "userId"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v2

    iget-object v2, v2, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "getStr(activity, Contants.USER_ID)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "account"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object p1, Lcom/guochao/faceshow/utils/Contants;->USER_TRANKING_TOP:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->E(Ljava/util/Map;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$initUserTrankData$1;-><init>(Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method private final setInfoToView(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    :cond_1
    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 3
    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_5
    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_2
    if-nez p2, :cond_7

    goto :goto_3

    .line 4
    :cond_7
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method private final setInfoToView(Ljava/util/List;Landroid/widget/TextView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v0

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    instance-of v4, v2, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    :cond_2
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    if-nez p2, :cond_5

    goto :goto_5

    .line 10
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {v2, v1, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_6
    if-eqz p2, :cond_7

    .line 11
    invoke-virtual {p2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_4

    :cond_7
    move-object p1, v3

    :goto_4
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_8

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    :cond_8
    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    const/16 p1, 0x8

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_5
    return-void
.end method

.method private final setUserInfo(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0dc5

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    :goto_1
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->nickName:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setInfoToView(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->getCurrentBirthday()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    const v3, 0x7f0a0d87

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setInfoToView(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->getGender()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const v0, 0x7f12056e

    goto :goto_4

    :cond_5
    const v0, 0x7f120af5

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    const v3, 0x7f0a0d95

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_5

    :cond_6
    move-object v1, v2

    .line 6
    :goto_5
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setInfoToView(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 7
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->country:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    const v3, 0x7f0a0cd6

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_6

    :cond_7
    move-object v1, v2

    :goto_6
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setInfoToView(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 8
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->job:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    const v3, 0x7f0a0dc7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_7

    :cond_8
    move-object v1, v2

    :goto_7
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setInfoToView(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 9
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->emotionLable:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    const v3, 0x7f0a0c79

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_8

    :cond_9
    move-object v1, v2

    :goto_8
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setInfoToView(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 10
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->friendLables:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_a

    const v3, 0x7f0a0c91

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_9

    :cond_a
    move-object v1, v2

    :goto_9
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setInfoToView(Ljava/util/List;Landroid/widget/TextView;)V

    .line 11
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->languageLable:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    const v3, 0x7f0a0cad

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_a

    :cond_b
    move-object v1, v2

    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setInfoToView(Ljava/util/List;Landroid/widget/TextView;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.userhomepage.act.UserHomePageAct"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->getViewModel()Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->signature:Ljava/lang/String;

    goto :goto_b

    :cond_c
    move-object v0, v2

    .line 13
    :goto_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    const v2, 0x7f0a0dd5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    :cond_d
    if-nez v2, :cond_e

    goto :goto_c

    .line 14
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v0, 0x7f1209bc

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_f
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_c
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    const v1, 0x7f0a0bcf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_10

    const-wide/16 v3, 0x0

    .line 17
    new-instance v5, Lcom/guochao/faceshow/userhomepage/act/a;

    invoke-direct {v5, p1, p0}, Lcom/guochao/faceshow/userhomepage/act/a;-><init>(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 18
    :cond_10
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userId:Ljava/lang/String;

    if-eqz p1, :cond_11

    const-string/jumbo v0, "t.userId"

    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->initUserTrankData(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private static final setUserInfo$lambda-9(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;Landroid/view/View;)V
    .locals 0

    const-string/jumbo p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userId:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/guochao/faceshow/mine/view/ContributionListActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final setUserTags(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f0a01de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->hobbyLables:Ljava/util/List;

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    :goto_1
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    new-instance v1, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$setUserTags$1$1;

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment$setUserTags$1$1;-><init>(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01e4

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.userhomepage.act.UserHomePageAct"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->getViewModel()Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0, p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const v1, 0x7f0a0259

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_3

    check-cast p1, Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_6

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v0, "userId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/high16 v0, 0x42b20000    # 89.0f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 7
    :goto_2
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    return-void
.end method

.method protected loadData()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getUserAboutMe()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->onChanged(Ljava/util/Map;)V

    return-void
.end method

.method public onChanged(Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    const-string v4, "null cannot be cast to non-null type kotlin.collections.List<*>"

    const-string v5, "null cannot be cast to non-null type com.guochao.faceshow.userhomepage.act.UserHomePageAct"

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v2, "updateUserHobbyTag"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-virtual {v2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->getViewModel()Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v2

    if-nez v2, :cond_2

    .line 6
    new-instance v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    invoke-direct {v2}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;-><init>()V

    .line 7
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->hobbyLables:Ljava/util/List;

    .line 8
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 10
    iget-object v5, v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->hobbyLables:Ljava/util/List;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_3
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setUserTags(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "updateUserLikedTag"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-virtual {v2}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->getViewModel()Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v6, v2, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->detail:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$UserDetail;

    :cond_5
    if-nez v6, :cond_6

    .line 14
    new-instance v6, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$UserDetail;

    invoke-direct {v6}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$UserDetail;-><init>()V

    .line 15
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v6, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$UserDetail;->preferenceLabels:Ljava/util/List;

    .line 16
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/List;

    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 18
    iget-object v4, v6, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$UserDetail;->preferenceLabels:Ljava/util/List;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_2
    const-string/jumbo v2, "updateUserSignature"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 20
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    const v2, 0x7f0a0dd5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    :cond_8
    if-nez v6, :cond_9

    goto/16 :goto_0

    .line 21
    :cond_9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f1209bc

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    iget-object v1, v1, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    .line 22
    :goto_3
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "getUserAboutMe"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    .line 24
    :cond_b
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    if-eqz v2, :cond_c

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    goto :goto_4

    :cond_c
    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_d

    const v3, 0x7f0a0259

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    :cond_d
    if-nez v6, :cond_e

    goto :goto_5

    :cond_e
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 26
    :goto_5
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setUserInfo(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V

    .line 27
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->setUserTags(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;)V

    goto/16 :goto_0

    :cond_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f5d597c -> :sswitch_3
        -0x4e14d91c -> :sswitch_2
        -0x25ec3aff -> :sswitch_1
        0x68781cbc -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroyView()V

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->viewModel:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->unbind(Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public final onUpdateUserInfoEvent(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$UpdateUserInfoEvent;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$UpdateUserInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$UpdateUserInfoEvent;->getSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.userhomepage.act.UserHomePageAct"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->getViewModel()Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getMUserData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel$UpdateUserInfoEvent;->getSignature()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->signature:Ljava/lang/String;

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->loadData()V

    return-void
.end method
