.class public Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# instance fields
.field private a:Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->d:Landroid/content/Context;

    const-string/jumbo v0, "userId"

    .line 4
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->b:Ljava/lang/String;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p2, p1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->e(Ljava/util/List;Z)I

    return-void
.end method

.method private d(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    iget-object v1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;->MsgBody:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;->MsgBody:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;

    if-eqz v1, :cond_6

    .line 3
    iget-object v3, v1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;->MsgContent:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;->Data:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    if-nez v3, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v4, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;->FromAccount:Ljava/lang/String;

    iput-object v4, v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->FromAccount:Ljava/lang/String;

    .line 5
    iget-object v4, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;->ToAccount:Ljava/lang/String;

    iput-object v4, v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->ToAccount:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    iput-object v4, v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->assistantOfficialUser:Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    .line 7
    iget v4, v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Type:I

    const/16 v5, 0xcd

    if-ne v4, v5, :cond_2

    const v4, 0x7f0f0091

    .line 8
    iput v4, v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->titleIconResId:I

    goto :goto_0

    :cond_2
    const/16 v5, 0xcc

    if-ne v4, v5, :cond_3

    const v4, 0x7f0f0660

    .line 9
    iput v4, v3, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->titleIconResId:I

    .line 10
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;->FromAccount:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, v1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;->MsgContent:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;->Data:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->isSelf:Z

    goto :goto_1

    .line 13
    :cond_5
    iget-object p1, v1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;->MsgContent:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;->Data:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iput-boolean v2, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->isSelf:Z

    :goto_1
    return-object v1

    :cond_6
    :goto_2
    return-object v0
.end method

.method private e(Ljava/util/List;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;

    .line 4
    invoke-direct {p0, v2}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->d(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-eqz p2, :cond_2

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    iget-object v2, v2, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;->MsgContent:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;

    iget-object v2, v2, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;->Data:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-interface {v3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    iget-object v2, v2, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;->MsgContent:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;

    iget-object v2, v2, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;->Data:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->d(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgBodyItem;->MsgContent:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;

    iget-object p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgContent;->Data:Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public addData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->e(Ljava/util/List;Z)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    :goto_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public c(IIZ)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    iput p2, v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->sendStatus:I

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_1
    return-void
.end method

.method public f()Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(I)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->g(I)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    iget p1, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;->Type:I

    return p1
.end method

.method public h(Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->a:Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    return-void
.end method

.method public i(Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->e:Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->g(I)Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->getItemViewType(I)I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_2

    const/16 v2, 0x143

    if-eq v1, v2, :cond_1

    const/16 v2, 0x144

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 3
    check-cast p1, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    goto :goto_0

    .line 4
    :pswitch_0
    check-cast p1, Lcom/guochao/faceshow/systemassistant/adapter/b;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/systemassistant/adapter/b;->l(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    goto :goto_0

    .line 5
    :pswitch_1
    check-cast p1, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;->e(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    goto :goto_0

    .line 6
    :cond_1
    :pswitch_2
    check-cast p1, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;->d(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    goto :goto_0

    .line 7
    :cond_2
    :pswitch_3
    check-cast p1, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->f(Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$MsgData;I)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->e:Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder;->g(Lcom/guochao/faceshow/systemassistant/adapter/UserBaseMessageHolder$b;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/16 v0, 0xc9

    const v1, 0x7f0d00e2

    const/4 v2, 0x0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x143

    if-eq p2, v0, :cond_0

    const/16 v0, 0x144

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/systemassistant/adapter/b;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/systemassistant/adapter/b;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/guochao/faceshow/systemassistant/adapter/b;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/systemassistant/adapter/b;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00df

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/systemassistant/adapter/TopicMultiMessageHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :pswitch_2
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 8
    new-instance p2, Lcom/guochao/faceshow/systemassistant/adapter/a;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/systemassistant/adapter/a;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_0
    :pswitch_3
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00de

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    new-instance p2, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/systemassistant/adapter/BigPicMessageHolder;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/guochao/faceshow/systemassistant/adapter/b;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/systemassistant/adapter/b;-><init>(Landroid/view/View;)V

    :goto_0
    if-eqz p1, :cond_2

    .line 13
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/systemassistant/data/AssistantMsgResult$AssistantMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->e(Ljava/util/List;Z)I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/systemassistant/adapter/AssistantChatAdapter;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
