.class public final Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$Companion;,
        Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$UpdateUserLikedTagEvent;
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
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 22\u00020\u00012\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00030\u0002:\u000223B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020$H\u0016J\u0008\u0010(\u001a\u00020$H\u0016J \u0010)\u001a\u00020$2\u0016\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003H\u0016J\u0010\u0010+\u001a\u00020$2\u0006\u0010,\u001a\u00020-H\u0002J\u0016\u0010.\u001a\u00020$2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020100H\u0002R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\n\"\u0004\u0008\u0014\u0010\u000cR\u0019\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"\u00a8\u00064"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;",
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;",
        "Landroidx/lifecycle/Observer;",
        "",
        "",
        "",
        "()V",
        "mRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getMRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setMRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "mTotalLikedTagList",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;",
        "getMTotalLikedTagList",
        "()Ljava/util/List;",
        "mTotalRecyclerView",
        "getMTotalRecyclerView",
        "setMTotalRecyclerView",
        "mUserLikedTagList",
        "getMUserLikedTagList",
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
        "hobbyBean",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;",
        "setViewPagerData",
        "hobbies",
        "",
        "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
        "Companion",
        "UpdateUserLikedTagEvent",
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
.field public static final Companion:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mTotalLikedTagList:Ljava/util/List;
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

.field private mTotalRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mUserLikedTagList:Ljava/util/List;
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

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->Companion:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mUserLikedTagList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mTotalLikedTagList:Ljava/util/List;

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final initView$lambda-3(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;Landroid/view/View;)V
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
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mUserLikedTagList:Ljava/util/List;

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
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->updateUserLikedTag(Ljava/lang/String;Ljava/util/List;)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method private final refreshData(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;->getUserHobbies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mUserLikedTagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mUserLikedTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->tvTagCount:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mUserLikedTagList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s/10"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;->getSysHobbies()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->setViewPagerData(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method private final setViewPagerData(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->getHobbyList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    .line 4
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mUserLikedTagList:Ljava/util/List;

    .line 5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;

    .line 6
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->getHobbyId()Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v1

    :goto_2
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$UserHobby;->setMIsSelect(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean$HobbyBean;->getHobbyList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mTotalLikedTagList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mTotalLikedTagList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    const p1, 0x7f0a0dd7

    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 14
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$setViewPagerData$2$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mTotalRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

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

    sget-object v0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->Companion:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$Companion;->start(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->unbind(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00c1

    return v0
.end method

.method public final getMRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final getMTotalLikedTagList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mTotalLikedTagList:Ljava/util/List;

    return-object v0
.end method

.method public final getMTotalRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mTotalRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public final getMUserLikedTagList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mUserLikedTagList:Ljava/util/List;

    return-object v0
.end method

.method public final getTvTagCount()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->tvTagCount:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getViewModel()Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    return-object v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f1201d8

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060093

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    const v0, 0x7f0a0d05

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->tvTagCount:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/m;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->bind(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    const v0, 0x7f0a0dd6

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/views/FlowLayout/FlowLayoutManager;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$initView$2$1;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity$initView$2$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public loadData()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;->getUserLikedTag()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->onChanged(Ljava/util/Map;)V

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

    const-string v2, "getUserLikedTag"

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

    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->refreshData(Lcom/guochao/faceshow/aaspring/beans/UserHobbyBean;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setMRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setMTotalRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->mTotalRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public final setTvTagCount(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->tvTagCount:Landroid/widget/TextView;

    return-void
.end method

.method public final setViewModel(Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditLikedTagActivity;->viewModel:Lcom/guochao/faceshow/aaspring/modulars/user/tag/UserEditViewModel;

    return-void
.end method
