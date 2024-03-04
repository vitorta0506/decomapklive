.class public final Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;",
        "getItemCount",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field final synthetic this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;->onBindViewHolder$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;Landroid/view/View;)V
    .locals 2

    const-string p3, "$holder"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->f()V

    const/4 p3, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMessageType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item.messageType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getUnreadCount()I

    move-result p1

    const-string v1, "system_official"

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->read(Ljava/lang/String;I)V

    const-string p1, "getSystemAccountID()"

    if-eq v0, p3, :cond_4

    const/4 p3, 0x2

    if-eq v0, p3, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->e()V

    .line 5
    new-instance p0, Lcom/guochao/faceshow/web/WebViewActivity$e;

    invoke-direct {p0}, Lcom/guochao/faceshow/web/WebViewActivity$e;-><init>()V

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->e(I)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p0

    .line 6
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    new-instance p0, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    invoke-direct {p0}, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;-><init>()V

    .line 9
    invoke-static {}, Lfb/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;->userId:I

    .line 10
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p0, p3}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->A0(Landroid/content/Context;Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;I)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 13
    :cond_4
    new-instance p0, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    invoke-direct {p0}, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;-><init>()V

    .line 14
    invoke-static {}, Lfb/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;->userId:I

    .line 15
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 16
    invoke-static {p1, p0, p3}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->A0(Landroid/content/Context;Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;I)V

    .line 17
    :goto_1
    invoke-static {}, Lk8/a;->c()Lk8/a;

    move-result-object p0

    invoke-virtual {p0}, Lk8/a;->e()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->access$getList$p(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;I)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;->access$getList$p(Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->d(ILcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;)V

    .line 4
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;->this$0:Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;

    new-instance v2, Lcom/guochao/faceshow/component/live/fragment/i;

    invoke-direct {v2, p1, v0, v1}, Lcom/guochao/faceshow/component/live/fragment/i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/component/live/fragment/LiveFloatOfficialFragment$initView$2;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method
