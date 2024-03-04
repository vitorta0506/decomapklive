.class public final Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$Companion;,
        Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$UpdateUserHobbyTagEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;",
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
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 32\u00020\u00012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0002:\u000234B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020$H\u0016J\u0008\u0010(\u001a\u00020$H\u0016J \u0010)\u001a\u00020$2\u0016\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003H\u0016J\u0010\u0010+\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0018\u0010,\u001a\u00020$2\u0006\u0010-\u001a\u00020\u00042\u0008\u0010.\u001a\u0004\u0018\u00010\u0004J\u0016\u0010/\u001a\u00020$2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020201H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\rR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u00065"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;",
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;",
        "Landroidx/lifecycle/Observer;",
        "",
        "",
        "",
        "()V",
        "hobbyBean",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;",
        "mFragments",
        "",
        "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;",
        "getMFragments",
        "()Ljava/util/List;",
        "mRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getMRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setMRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "mUserHobbyList",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
        "getMUserHobbyList",
        "tvTagCount",
        "Landroid/widget/TextView;",
        "getTvTagCount",
        "()Landroid/widget/TextView;",
        "setTvTagCount",
        "(Landroid/widget/TextView;)V",
        "viewModel",
        "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;",
        "getViewModel",
        "()Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;",
        "setViewModel",
        "(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V",
        "finish",
        "",
        "getLayoutId",
        "",
        "initView",
        "loadData",
        "onChanged",
        "t",
        "refreshData",
        "setCount",
        "count",
        "total",
        "setViewPagerData",
        "hobbies",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
        "Companion",
        "UpdateUserHobbyTagEvent",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private hobbyBean:Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mUserHobbyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tvTagCount:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->Companion:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mUserHobbyList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mFragments:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getHobbyBean$p(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;)Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->hobbyBean:Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;

    return-object p0
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mUserHobbyList:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getTags()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 7
    invoke-static {p1, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sb.substring(0, sb.length - 1)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sb.toString()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->updateUserHobbyTag(Ljava/lang/String;Ljava/util/List;)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private final refreshData(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->hobbyBean:Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;->getUserHobbies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mUserHobbyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mUserHobbyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mUserHobbyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mUserHobbyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(%s/10)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->setCount(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;->getSysHobbies()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->setViewPagerData(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private final setViewPagerData(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0a0b26

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const v1, 0x7f0a0e05

    .line 2
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/duolingo/open/rtlviewpager/RtlViewPager;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;

    .line 4
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->getHobbyList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    .line 6
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mUserHobbyList:Ljava/util/List;

    .line 7
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    .line 8
    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v7}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->setMIsSelect(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mFragments:Ljava/util/List;

    sget-object v5, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;->Companion:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$Companion;

    invoke-virtual {v5, v3}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment$Companion;->getInstance(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;)Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$setViewPagerData$2;

    invoke-direct {v3, p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$setViewPagerData$2;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;Ljava/util/List;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v3}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->Companion:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->unbind(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c0

    return v0
.end method

.method public final getMFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyFragment;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mFragments:Ljava/util/List;

    return-object v0
.end method

.method public final getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final getMUserHobbyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mUserHobbyList:Ljava/util/List;

    return-object v0
.end method

.method public final getTvTagCount()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->tvTagCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewModel()Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    return-object v0
.end method

.method public initView()V
    .locals 7

    const v0, 0x7f120416

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    const v0, 0x7f0a0d05

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->tvTagCount:Landroid/widget/TextView;

    const v0, 0x7f0a09f3

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v0, "findViewById<TextView>(R.id.save)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/user/tag/k;

    invoke-direct {v4, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/base/utils/ViewExtendsKt;->onClick$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    const v0, 0x7f0a0dd6

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$initView$2$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity$initView$2$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public loadData()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->getUserHobbyTag()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->onChanged(Ljava/util/Map;)V

    return-void
.end method

.method public onChanged(Ljava/util/Map;)V
    .locals 3
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

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "getUserHobbyTag"

    .line 4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.beans.UserHobbyBean"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->refreshData(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setCount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "count"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    const-string v1, "#6365FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    add-int/2addr p1, v1

    const/16 v2, 0x22

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->tvTagCount:Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final setMRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setTvTagCount(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->tvTagCount:Landroid/widget/TextView;

    return-void
.end method

.method public final setViewModel(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditHobbyTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    return-void
.end method
