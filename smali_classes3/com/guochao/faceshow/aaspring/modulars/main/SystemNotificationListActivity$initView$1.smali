.class public final Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0004H\u0016J\u0018\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
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
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;->onBindViewHolder$lambda-1(Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindViewHolder$lambda-1(Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 1

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->setUnreadCount(I)V

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMessageType()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AtMeListActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "2"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "1"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CommentListActivity;->start(Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;->access$getList$p(Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 10
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;->access$getList$p(Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    const v0, 0x7f0a0bb2

    .line 3
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a04ef

    .line 4
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0d6b

    .line 5
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMessageType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const v3, 0x7f120740

    .line 7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0f03b4

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    const-string v4, "2"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const v3, 0x7f120741

    .line 10
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0f03ad

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    const-string v4, "1"

    .line 12
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const v3, 0x7f12074a

    .line 13
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0f03b0

    .line 14
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    const v0, 0x7f0a0ae8

    .line 15
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 16
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getTypeId()I

    move-result v1

    .line 17
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getFromNickName()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-static {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->getDisplayedMessage(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0ae7

    .line 20
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 21
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getUnreadCount()I

    move-result v1

    if-gtz v1, :cond_5

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMsgTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    move-wide v7, v5

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_1
    cmp-long v1, v7, v5

    if-gtz v1, :cond_5

    .line 22
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0a0297

    .line 24
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 25
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMsgTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMsgTimestamp()Ljava/lang/Long;

    move-result-object v1

    const-string v7, "item.msgTimestamp"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v5

    if-lez v1, :cond_6

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMsgTimestamp()Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 28
    invoke-static {v1, v5, v6}, Lcom/guochao/faceshow/utils/TimeUtil;->getIMTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_6
    const-string v1, ""

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getUnreadCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 33
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getUnreadCount()I

    move-result v0

    const/16 v1, 0x63

    if-le v0, v1, :cond_7

    const-string v0, "99+"

    .line 35
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 36
    :cond_7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getUnreadCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 37
    :cond_8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    :goto_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/b;

    invoke-direct {v0, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/b;-><init>(Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity$initView$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/main/SystemNotificationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0399

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
