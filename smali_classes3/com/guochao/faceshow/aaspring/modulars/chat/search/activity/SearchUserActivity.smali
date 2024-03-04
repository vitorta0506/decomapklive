.class public Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field baseContent:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field deleteEdit:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private e:Ljava/lang/CharSequence;

.field f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field searchContent:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field searchTitleLay:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->c:Ljava/util/List;

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->s0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->u0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->p0(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->t0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->q0(I)I

    move-result p0

    return p0
.end method

.method static synthetic l0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic n0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->d:Z

    return p1
.end method

.method static synthetic o0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private p0(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2

    .line 2
    :pswitch_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2

    .line 3
    :pswitch_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$e;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)V

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->setOnItemClickListener(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$b;)V

    return-object p2

    .line 5
    :pswitch_2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$d;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)V

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->setOnClickListener(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$b;)V

    return-object p2

    .line 7
    :pswitch_3
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMTopTipHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMTopTipHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2

    .line 8
    :pswitch_4
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/NetSearchHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/NetSearchHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 9
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$c;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    .line 10
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMFooterHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMFooterHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private q0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNetHeader;

    if-eqz v0, :cond_0

    const/16 p1, 0x65

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserHeader;

    if-eqz v0, :cond_1

    const/16 p1, 0x66

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/beans/SearchUserBottom;

    if-eqz v0, :cond_2

    const/16 p1, 0x67

    return p1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-eqz v0, :cond_3

    const/16 p1, 0x68

    return p1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    if-eqz p1, :cond_4

    const/16 p1, 0x69

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method private r0(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    :cond_3
    add-int/2addr v1, v3

    add-int/2addr v1, v0

    add-int/2addr v1, v3

    if-ne p1, v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method private synthetic s0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->hideSoftKeyboard()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private t0(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;

    .line 3
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;

    .line 4
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->r0(I)Z

    move-result p2

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchContent:Landroid/widget/EditText;

    .line 5
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v0, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMHistoryHolder;->c(Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;ZLjava/lang/String;)V

    goto :goto_1

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 8
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchContent:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->e(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;ZLjava/lang/String;)V

    goto :goto_1

    .line 9
    :pswitch_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/SearchUserBottom;

    .line 10
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserBottom;->isUser()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->e(Z)V

    goto :goto_1

    .line 11
    :pswitch_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/SearchUserHeader;

    .line 12
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMTopTipHolder;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/SearchUserHeader;->isUser()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMTopTipHolder;->c(Z)V

    goto :goto_1

    .line 13
    :pswitch_4
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/NetSearchHolder;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchContent:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/NetSearchHolder;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private u0(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->d:Z

    if-eqz v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->e:Ljava/lang/CharSequence;

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->d:Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->baseContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->baseContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->d:Z

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->e:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchContent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->e:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchContent:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->u0(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/SearchUserNetHeader;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/SearchUserNetHeader;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/im/b;->l0()Lcom/guochao/faceshow/aaspring/manager/im/b;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;

    invoke-direct {v2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->L0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public getActivityConfig()Lcom/guochao/faceshow/aaspring/base/activity/a;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->b(Z)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->f(I)Lcom/guochao/faceshow/aaspring/base/activity/a$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/activity/a$a;->a()Lcom/guochao/faceshow/aaspring/base/activity/a;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00a9

    return v0
.end method

.method public initView()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setLightStatusBar(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchTitleLay:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    .line 3
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchTitleLay:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchTitleLay:Landroid/widget/LinearLayout;

    .line 4
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchTitleLay:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->baseContent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->baseContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->baseContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->f:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchContent:Landroid/widget/EditText;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchContent:Landroid/widget/EditText;

    new-instance v1, Lm8/a;

    invoke-direct {v1, p0}, Lm8/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->baseContent:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->baseContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01af

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a02a8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->searchContent:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->onBackPressed()V

    :goto_0
    return-void
.end method
