.class public Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;,
        Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

.field private b:Ld9/g;

.field private c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;>;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;>;"
        }
    .end annotation
.end field

.field private g:J

.field h:Landroidx/recyclerview/widget/LinearLayoutManager;

.field i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/graphics/drawable/BitmapDrawable;

.field private k:I

.field private l:I

.field private m:Z

.field private final n:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field o:Z

.field private p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Ld9/g;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->f:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->g:J

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->n:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->o:Z

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$i;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->p:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 11
    invoke-interface {p3}, Ld9/g;->getCurrentGCLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-eqz v2, :cond_0

    .line 12
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    goto :goto_0

    .line 14
    :cond_0
    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 16
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    .line 17
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b:Ld9/g;

    .line 18
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    .line 19
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p2

    invoke-virtual {p2}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ar"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->h:Landroidx/recyclerview/widget/LinearLayoutManager;

    const-string p1, "#D3D2D2"

    .line 21
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->k:I

    .line 22
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060145

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->l:I

    return-void
.end method

.method private A()Ljava/lang/CharSequence;
    .locals 5

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->z()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;

    invoke-direct {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private C(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->k(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getDisplayFromNickName()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Landroid/text/SpannableString;

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p6

    const/4 v1, 0x0

    const/16 v2, 0x21

    invoke-virtual {p1, v0, v1, p6, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz p5, :cond_1

    .line 7
    new-instance p5, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;

    iget-object p6, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-direct {p5, p6, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p5, v1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object p1
.end method

.method private D(I)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    new-instance p1, Landroid/text/SpannableString;

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    if-eqz v0, :cond_0

    const-string v0, "\u0629"

    goto :goto_0

    :cond_0
    const-string v0, "\u6211"

    :goto_0
    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x1

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p1
.end method

.method private E()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private F(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;",
            "Landroid/widget/TextView;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 4
    :goto_1
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b:Ld9/g;

    invoke-interface {v10}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v10

    invoke-interface {v10}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v13

    invoke-virtual {v13}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getOperatedUserImg()Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    const-string v14, "LIVE_LUCKY_NUMBER_RESULT_V_COIN"

    sparse-switch v15, :sswitch_data_0

    :goto_2
    const/16 v16, -0x1

    goto/16 :goto_3

    :sswitch_0
    const-string v15, "LIVE_TAKE_SEAT"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_2

    :cond_2
    const/16 v13, 0x19

    const/16 v16, 0x19

    goto/16 :goto_3

    :sswitch_1
    const-string v15, "LIVE_MEMBER_USER"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    const/16 v13, 0x18

    const/16 v16, 0x18

    goto/16 :goto_3

    :sswitch_2
    const-string v15, "LIVE_BEGIN_PK"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_2

    :cond_4
    const/16 v13, 0x17

    const/16 v16, 0x17

    goto/16 :goto_3

    :sswitch_3
    const-string v15, "LIVE_BROADCAST_THANK_HELLO_GIFT"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_2

    :cond_5
    const/16 v13, 0x16

    const/16 v16, 0x16

    goto/16 :goto_3

    :sswitch_4
    const-string v15, "LIVE_PK_RESULT"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_2

    :cond_6
    const/16 v13, 0x15

    const/16 v16, 0x15

    goto/16 :goto_3

    :sswitch_5
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_2

    :cond_7
    const/16 v13, 0x14

    const/16 v16, 0x14

    goto/16 :goto_3

    :sswitch_6
    const-string v15, "LOCAL_LIVE_LUCKY_GIFT_REWARD"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_2

    :cond_8
    const/16 v13, 0x13

    const/16 v16, 0x13

    goto/16 :goto_3

    :sswitch_7
    const-string v15, "LIVE_ADD_GROUP"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_2

    :cond_9
    const/16 v13, 0x12

    const/16 v16, 0x12

    goto/16 :goto_3

    :sswitch_8
    const-string v15, "LIVE_LINKMIC_MICMODE"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v13, 0x11

    const/16 v16, 0x11

    goto/16 :goto_3

    :sswitch_9
    const-string v15, "LIVE_LINKMIC_MICLOCK"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v13, 0x10

    const/16 v16, 0x10

    goto/16 :goto_3

    :sswitch_a
    const-string v15, "LIVE_SCREEN_SHOT"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v13, 0xf

    const/16 v16, 0xf

    goto/16 :goto_3

    :sswitch_b
    const-string v15, "LIVE_SEND_GIFT"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v13, 0xe

    const/16 v16, 0xe

    goto/16 :goto_3

    :sswitch_c
    const-string v15, "LIVE_REMOVE_USER"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v13, 0xd

    const/16 v16, 0xd

    goto/16 :goto_3

    :sswitch_d
    const-string v15, "LIVE_LUCKY_REMOTE_WIN_V_COIN"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v13, 0xc

    const/16 v16, 0xc

    goto/16 :goto_3

    :sswitch_e
    const-string v15, "LIVE_RECEIVE_HELLO_GIFT"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v13, 0xb

    const/16 v16, 0xb

    goto/16 :goto_3

    :sswitch_f
    const-string v15, "LIVE_BAN_TALK_USER"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v13, 0xa

    const/16 v16, 0xa

    goto/16 :goto_3

    :sswitch_10
    const-string v15, "LIVE_EVENT_ANIM"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v13, 0x9

    const/16 v16, 0x9

    goto/16 :goto_3

    :sswitch_11
    const-string v15, "LIVE_LUCKY_REMOTE_WIN"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v13, 0x8

    const/16 v16, 0x8

    goto/16 :goto_3

    :sswitch_12
    const-string v15, "LIVE_ROOM_NATURE"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    goto/16 :goto_2

    :cond_14
    const/4 v13, 0x7

    const/16 v16, 0x7

    goto :goto_3

    :sswitch_13
    const-string v15, "LIVE_ADMIN_USER"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    goto/16 :goto_2

    :cond_15
    const/4 v13, 0x6

    const/16 v16, 0x6

    goto :goto_3

    :sswitch_14
    const-string v15, "LOCAL_VOICE_ROOM_WELCOME"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    goto/16 :goto_2

    :cond_16
    const/4 v13, 0x5

    const/16 v16, 0x5

    goto :goto_3

    :sswitch_15
    const-string v15, "LIVE_TOBE_MEMBER_USER"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    goto/16 :goto_2

    :cond_17
    const/4 v13, 0x4

    const/16 v16, 0x4

    goto :goto_3

    :sswitch_16
    const-string v15, "LIVE_HELLO_JOIN_GROUP"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    goto/16 :goto_2

    :cond_18
    const/16 v16, 0x3

    goto :goto_3

    :sswitch_17
    const-string v15, "LIVE_FOLLOW_ANCHOR"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_19

    goto/16 :goto_2

    :cond_19
    const/16 v16, 0x2

    goto :goto_3

    :sswitch_18
    const-string v15, "LIVE_SHARE"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a

    goto/16 :goto_2

    :cond_1a
    const/16 v16, 0x1

    goto :goto_3

    :sswitch_19
    const-string v15, "LIVE_LUCKY_NUMBER_RESULT"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    goto/16 :goto_2

    :cond_1b
    const/16 v16, 0x0

    :goto_3
    const/16 v13, 0x21

    const v15, 0x7f06013d

    packed-switch v16, :pswitch_data_0

    .line 9
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_0
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f120a5b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :pswitch_1
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f12050f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :pswitch_2
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 13
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v2, 0x7f120708

    new-array v3, v4, [Ljava/lang/Object;

    .line 14
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 15
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 16
    :cond_1c
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v2, 0x7f120709

    new-array v3, v4, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 18
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19
    :pswitch_3
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f1204a7

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->getUserName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :pswitch_4
    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->getFcoin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 v0, 0x0

    .line 21
    :goto_4
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->getResult()I

    move-result v2

    if-nez v2, :cond_1e

    .line 22
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 23
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v2, 0x7f12070a

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 24
    :cond_1d
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f12070b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 25
    :cond_1e
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->getResult()I

    move-result v1

    if-ne v1, v4, :cond_20

    .line 26
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 27
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v2, 0x7f12070e

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    :cond_1f
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f12070f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_20
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 30
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v2, 0x7f12070c

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 31
    :cond_21
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f12070d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 32
    :pswitch_5
    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 33
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getCurrentResult()Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-static {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;->getLuckyGiftRewardSpan(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 34
    :pswitch_6
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b:Ld9/g;

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ld9/g;->getCurrentGCLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b:Ld9/g;

    invoke-interface {v0}, Ld9/g;->getCurrentGCLiveRoomModel()Lcom/guochao/component/liveroom/model/GCLiveRoomModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/component/liveroom/model/GCLiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 35
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f120a46

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_22
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f120471

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_7
    iget-boolean v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v0, :cond_23

    .line 38
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f120493

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_23
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f12047d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :pswitch_8
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 41
    iget-boolean v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-nez v0, :cond_24

    .line 42
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f120a9e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 43
    :cond_24
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f120a9f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :cond_25
    iget-boolean v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-nez v0, :cond_26

    .line 45
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f1204cd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 46
    :cond_26
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f120486

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_9
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v2, 0x7f1204b5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :pswitch_a
    move-object v2, v1

    check-cast v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 49
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isHandyGiftMessage()Z

    move-result v3

    .line 50
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_28

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v8}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v8

    invoke-interface {v8}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    goto :goto_5

    :cond_27
    const/4 v7, 0x0

    goto :goto_6

    :cond_28
    :goto_5
    const/4 v7, 0x1

    :goto_6
    if-eqz v3, :cond_2a

    if-eqz v7, :cond_29

    .line 51
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_7

    :cond_29
    const/4 v4, 0x0

    :goto_7
    invoke-static {v2, v0, v4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/LiveChatSpanUtils;->getHandyGiftMessageSpan(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;Landroid/widget/TextView;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 52
    :cond_2a
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v0

    const v2, 0x7f1204b3

    if-ne v0, v4, :cond_2b

    .line 53
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    const v3, 0x7f1203c5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_2b
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 55
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    const v0, 0x7f12051d

    if-eqz v7, :cond_2e

    .line 56
    iget-object v3, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 57
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_2d
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :cond_2e
    iget-object v3, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 60
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_2f
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :pswitch_b
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v8

    invoke-interface {v8}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v8

    iget-object v12, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    const v0, 0x7f12051a

    if-eqz v9, :cond_30

    .line 63
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v1, v0, v5, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1

    :cond_30
    if-eqz v7, :cond_31

    .line 65
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1209f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 66
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0

    :cond_31
    if-eqz v2, :cond_32

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1209f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 68
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 69
    :cond_32
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v1, v0, v5, v2, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1

    :cond_33
    const v8, 0x7f12051b

    if-eqz v9, :cond_34

    .line 71
    invoke-direct {v6, v1, v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->v(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;ILandroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_34
    if-eqz v7, :cond_35

    const v0, 0x7f1209f3

    .line 72
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v11, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v10

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_35
    if-eqz v2, :cond_36

    const v0, 0x7f1209f4

    .line 74
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v11, v1, v5

    aput-object v10, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v2, v10

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 76
    :cond_36
    invoke-direct {v6, v1, v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->v(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;ILandroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_c
    move-object/from16 v2, p1

    .line 77
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f1204b0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_d
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v8

    invoke-interface {v8}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v8

    iget-object v12, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3e

    const v0, 0x7f120510

    const v3, 0x7f120512

    if-eqz v9, :cond_38

    .line 79
    new-instance v2, Landroid/text/SpannableString;

    iget-object v4, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v1

    if-eqz v1, :cond_37

    goto :goto_8

    :cond_37
    const v0, 0x7f120512

    :goto_8
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v2, v0, v5, v1, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2

    :cond_38
    if-eqz v7, :cond_3a

    .line 81
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v1

    if-eqz v1, :cond_39

    const v1, 0x7f1209f9

    goto :goto_9

    :cond_39
    const v1, 0x7f1209ff

    :goto_9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v5, v0, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1

    :cond_3a
    if-eqz v2, :cond_3c

    .line 84
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v0

    if-eqz v0, :cond_3b

    const v0, 0x7f1209f8

    goto :goto_a

    :cond_3b
    const v0, 0x7f1209fe

    .line 85
    :goto_a
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v10, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v2, v10

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 87
    :cond_3c
    new-instance v2, Landroid/text/SpannableString;

    iget-object v4, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v1

    if-eqz v1, :cond_3d

    goto :goto_b

    :cond_3d
    const v0, 0x7f120512

    :goto_b
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 88
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v2, v0, v5, v1, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2

    :cond_3e
    const v8, 0x7f120511

    const v12, 0x7f120513

    if-eqz v9, :cond_40

    .line 89
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_c

    :cond_3f
    const v8, 0x7f120513

    :goto_c
    invoke-direct {v6, v1, v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->v(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;ILandroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_40
    if-eqz v7, :cond_42

    .line 90
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v0

    if-eqz v0, :cond_41

    const v0, 0x7f1209f7

    goto :goto_d

    :cond_41
    const v0, 0x7f1209fd

    .line 91
    :goto_d
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v11, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_42
    if-eqz v2, :cond_44

    .line 93
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v0

    if-eqz v0, :cond_43

    const v0, 0x7f1209fa

    goto :goto_e

    :cond_43
    const v0, 0x7f120a00

    .line 94
    :goto_e
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v11, v1, v5

    aput-object v10, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v2, v10

    move-object v3, v11

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 96
    :cond_44
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_f

    :cond_45
    const v8, 0x7f120513

    :goto_f
    invoke-direct {v6, v1, v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->v(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;ILandroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_e
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isBroadCaster()Z

    move-result v0

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveFullScreenMessage;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveFullScreenMessage;->getActivityId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/liveactivity/LiveMusicActivityView;->h(ZI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 98
    :pswitch_f
    invoke-direct {v6, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->y(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_10
    iget-boolean v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    if-eqz v0, :cond_46

    .line 100
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f120aa3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 101
    :cond_46
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f120aa8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :pswitch_11
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v3

    invoke-interface {v3}, Lb8/d;->c()Lb8/a;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 103
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v1

    if-eqz v1, :cond_47

    const v1, 0x7f12050b

    goto :goto_10

    :cond_47
    const v1, 0x7f12050c

    :goto_10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_48
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f12050d

    const v7, 0x7f12050e

    if-eqz v2, :cond_4a

    .line 105
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v2

    if-eqz v2, :cond_49

    goto :goto_11

    :cond_49
    const v3, 0x7f12050e

    :goto_11
    new-array v2, v4, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    .line 107
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 108
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    iget-object v8, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result v1

    if-eqz v1, :cond_4b

    goto :goto_12

    :cond_4b
    const v3, 0x7f12050e

    :goto_12
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v5

    invoke-virtual {v8, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 111
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-ltz v3, :cond_4c

    .line 112
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;

    invoke-direct {v1, v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4, v1, v3, v0, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 113
    :cond_4c
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->k:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v4, v0, v3, v1, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v4

    .line 114
    :pswitch_12
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getRichContent()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 115
    :pswitch_13
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f120a35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_14
    move-object/from16 v2, p1

    .line 116
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getIsOneHello()I

    move-result v0

    if-ne v0, v4, :cond_4d

    .line 117
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f1204a8

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v7, 0x7f1204aa

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {v1, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_4d
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f1204a9

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 120
    :pswitch_15
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f12051c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :pswitch_16
    iget-object v0, v6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v1, 0x7f12051e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_17
    move-object/from16 v2, p1

    .line 122
    instance-of v0, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;

    if-eqz v0, :cond_4f

    .line 123
    move-object v0, v1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->getLiveGameBean()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v3

    if-nez v3, :cond_4e

    .line 124
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;-><init>()V

    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->setLiveGameBean(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    .line 125
    :cond_4e
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->getLiveGameBean()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v0

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 127
    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->setFlag(I)V

    .line 128
    :cond_4f
    invoke-direct {v6, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->x(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cdfab37 -> :sswitch_19
        -0x642bfd54 -> :sswitch_18
        -0x5f0be710 -> :sswitch_17
        -0x4b607056 -> :sswitch_16
        -0x4144f17e -> :sswitch_15
        -0x3eb1a8a1 -> :sswitch_14
        -0x2f28a7f2 -> :sswitch_13
        -0x2658a248 -> :sswitch_12
        -0x209252f3 -> :sswitch_11
        -0x1d896a17 -> :sswitch_10
        -0x1ca3fae5 -> :sswitch_f
        -0xc9a9a34 -> :sswitch_e
        0x7401c4c -> :sswitch_d
        0xc35e7d3 -> :sswitch_c
        0x193433f4 -> :sswitch_b
        0x1b22c01a -> :sswitch_a
        0x1dc0542d -> :sswitch_9
        0x1dc0c8a5 -> :sswitch_8
        0x604aa58e -> :sswitch_7
        0x60dae108 -> :sswitch_6
        0x64f08910 -> :sswitch_5
        0x6572fb4e -> :sswitch_4
        0x69293843 -> :sswitch_3
        0x6a000764 -> :sswitch_2
        0x7034337d -> :sswitch_1
        0x70fb7b2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_17
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private G(I)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->H(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private H(I)Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->i:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->i:Landroid/util/SparseArray;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/views/VipIndicatorView;->setVipLevel(I)V

    const/high16 v2, 0x40800000    # 4.0f

    .line 7
    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v3, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 8
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-boolean v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    .line 12
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 13
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v4, v4, v3, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 14
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 15
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 16
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v4, v4, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 17
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method private K(Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V
    .locals 2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object v0

    invoke-static {}, Lo9/b;->d()Lo9/a;

    move-result-object v1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, p2}, Lo9/a;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;

    move-result-object p2

    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$f;

    invoke-direct {p3, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)V

    invoke-static {p1, v0, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/SendMessageHandle;->sendMessage(Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/tencent/imsdk/v2/V2TIMMessage;Lcom/tencent/imsdk/v2/V2TIMOfflinePushInfo;Lcom/tencent/imsdk/v2/V2TIMSendCallback;)V

    return-void
.end method

.method private L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, p4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    if-ltz p4, :cond_0

    if-nez p5, :cond_0

    .line 5
    new-instance p5, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->l:I

    invoke-direct {p5, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {v0, p5, p4, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;

    const/4 p5, 0x2

    invoke-direct {p0, p5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->H(I)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-direct {p2, p5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p5, p4, 0x1

    invoke-virtual {v0, p2, p4, p5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 7
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 9
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->k:I

    invoke-direct {p2, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {v0, p2, p1, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v0
.end method

.method private M(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/CharSequence;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->N(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    return-void
.end method

.method private N(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/CharSequence;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1
    instance-of p4, p2, Landroid/text/SpannableStringBuilder;

    if-eqz p4, :cond_0

    .line 2
    move-object p4, p2

    check-cast p4, Landroid/text/SpannableStringBuilder;

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;

    const/4 v2, 0x0

    invoke-virtual {p4, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;

    if-eqz p4, :cond_0

    .line 4
    :goto_0
    array-length v0, p4

    if-ge v2, v0, :cond_0

    .line 5
    aget-object v0, p4, v2

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;->bindTextView(Landroid/widget/TextView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    if-eqz p4, :cond_1

    .line 7
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object p4

    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-virtual {p4, p2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object p4

    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-virtual {p4, p2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :goto_1
    instance-of p1, p2, Landroid/text/SpannableStringBuilder;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFinalResultSpannableString(Landroid/text/SpannableStringBuilder;)V

    :cond_2
    return-void
.end method

.method private O(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;Ljava/lang/CharSequence;)V
    .locals 11
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;

    const-string v1, "#BF6365FF"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->setPaintColor(I)V

    .line 3
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFinalResultSpannableString()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 5
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->N(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object p4

    const-string v1, "RECOMMEND_LOCK_SUCCESS"

    invoke-static {p4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 8
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object p4

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f1204a8

    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v8, 0x7f06013f

    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v3, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 11
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/16 v9, 0x21

    if-ltz v7, :cond_1

    .line 12
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-gt v7, v10, :cond_1

    .line 13
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v3, v7, v10, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 14
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;

    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, v10, p4, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v0, v3, v7, p3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 15
    :cond_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p4, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-ltz p3, :cond_2

    .line 16
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p4

    if-gt p3, p4, :cond_2

    .line 17
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-static {v2, v8}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {p4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {v0, p4, p3, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 19
    :cond_2
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->M(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void
.end method

.method private P(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;

    const-string v1, "#BF6365FF"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->setPaintColor(I)V

    .line 3
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFinalResultSpannableString()Landroid/text/SpannableStringBuilder;

    move-result-object p3

    .line 4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    const/4 p4, 0x1

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->N(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    return-void

    .line 6
    :cond_0
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3, p4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {p0, p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->M(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void
.end method

.method private Q(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/CharSequence;ILandroid/text/SpannableStringBuilder;)V
    .locals 7
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/text/SpannableStringBuilder;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    if-nez p3, :cond_0

    move-object p3, v0

    .line 1
    :cond_0
    iget-object v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v0

    .line 4
    :cond_1
    invoke-virtual {p5, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->k:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 6
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 7
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {p5, v4, v5, p4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 8
    iget-object p4, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 9
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    if-eqz p4, :cond_2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getType()Ljava/lang/String;

    move-result-object p4

    const-string v4, "TYPE_ADMIN_USER"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 p4, 0x9

    add-int/2addr p3, p4

    invoke-virtual {p5, v3, p4, p3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 11
    :cond_2
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    if-eqz p4, :cond_3

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getType()Ljava/lang/String;

    move-result-object p4

    const-string v4, "TYPE_REMOVE_USER"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p3

    const/4 p4, 0x7

    add-int/2addr p3, p4

    invoke-virtual {p5, v3, p4, p3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_1

    .line 13
    :cond_3
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    if-eqz p4, :cond_4

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAction()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p4

    invoke-interface {p4}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p4

    iget-object v4, v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getType()Ljava/lang/String;

    move-result-object p4

    const-string v4, "TYPE_BAN_TALK_USER"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 14
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p4, v0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-virtual {p5, v3, p4, p3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getType()Ljava/lang/String;

    move-result-object p3

    const-string p4, "TYPE_SCREEN_SHOT"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 16
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move-object v0, v2

    .line 17
    :goto_0
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 18
    new-instance p3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;

    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, p4, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p5, p3, v5, p4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p5, v3, v5, p3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 20
    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_1

    .line 21
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 22
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p5, v3, v5, p3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 25
    :cond_9
    :goto_1
    iget-object p3, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {p0, p3, p5, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->M(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 26
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private R(Landroid/text/SpannableStringBuilder;ZLcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Z",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LIVE_CUSTOM_MSG"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->a()Lcom/guochao/faceshow/aaspring/modulars/translate/a;

    move-result-object v0

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/translate/a;->e(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-string v2, ""

    invoke-virtual {p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    :cond_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isShowtranslateContent()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getTranslateContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->line:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->translate_content:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->translate_content:Landroid/widget/TextView;

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getTranslateContent()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-virtual {v3, v4, v5}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->translate_content:Landroid/widget/TextView;

    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getTranslateContent()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    invoke-virtual {v3, v4, v5}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    iget-object v1, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->translate_content:Landroid/widget/TextView;

    invoke-virtual {v1, p6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p6, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->line:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p6, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->translate_content:Landroid/widget/TextView;

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :goto_1
    new-instance p6, Landroid/text/SpannableString;

    const-string v1, " "

    invoke-direct {p6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 16
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isTranslateing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080335

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getTranslateContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isShowtranslateContent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 19
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080333

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getTranslateContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const v3, 0x7f080334

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isShowtranslateContent()Z

    move-result v1

    if-nez v1, :cond_5

    .line 21
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 22
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    const/high16 v3, 0x41a00000    # 20.0f

    .line 23
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    invoke-virtual {v1, v2, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    new-instance v3, Lcom/guochao/faceshow/aaspring/views/VerticalCenterRoateImageSpan;

    invoke-direct {v3, v1}, Lcom/guochao/faceshow/aaspring/views/VerticalCenterRoateImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x21

    .line 25
    invoke-virtual {p6, v3, v2, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 26
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isTranslateing()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 27
    fill-array-data v2, :array_0

    const-string v4, "roateX"

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 28
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0x3e8

    .line 29
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    .line 30
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 31
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 32
    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$g;

    invoke-direct {v3, p0, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 33
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 34
    iget-object p4, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 35
    :cond_6
    iget-object v2, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_7

    .line 36
    iget-object v2, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    .line 37
    :cond_7
    iget-object p4, p4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 38
    :goto_3
    invoke-virtual {p1, p6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p4

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    sub-int/2addr p4, p2

    .line 40
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 41
    new-instance p6, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$h;

    invoke-direct {v3, p0, p5}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;I)V

    invoke-direct {p6, p3, v0, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/g$b;)V

    invoke-virtual {p1, p6, p4, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Ld9/g;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b:Ld9/g;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->K(Lcom/tencent/imsdk/v2/V2TIMConversation;Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private j(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getLuckyGiftResults()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getIsGiftAllSend()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->getCurrentResult()Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 6
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftResponseModel$LuckyGiftResult;->getAwardMultiple()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 7
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LOCAL_LIVE_LUCKY_GIFT_REWARD"

    invoke-direct {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private k(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setDisplayFromNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIVE_CUSTOM_MSG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isChinese(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " : "

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setDisplayFromNickName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->hasChinese(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setDisplayFromNickName(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->isArabic(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setDisplayFromNickName(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setDisplayFromNickName(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setDisplayFromNickName(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private m(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;",
            "Landroid/widget/TextView;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "  "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v4, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    invoke-virtual {v0, v1, p2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private n(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Lcom/guochao/faceshow/views/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    .line 2
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->getLiveGameBean()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->getLiveGameBean()Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const p1, 0x7f0f01f8

    goto :goto_0

    :cond_0
    const p1, 0x7f0f01f7

    .line 5
    :goto_0
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v0, 0x41600000    # 14.0f

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    new-instance v0, Lcom/guochao/faceshow/views/r;

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private o(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;",
            "Landroid/widget/TextView;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "  "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getMvpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/d;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private p(II)Landroid/graphics/drawable/Drawable;
    .locals 4

    add-int/2addr p2, p1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->n:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/LevelView;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/views/LevelView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/views/LevelView;->setLevel(I)V

    .line 5
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m:Z

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setDrawingCacheEnabled(Z)V

    const/4 p1, 0x0

    .line 9
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 10
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, p1, p1, v2, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 11
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 14
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 16
    :goto_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 17
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, p1, p1, v1, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->n:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->destroyDrawingCache()V

    return-object v2
.end method

.method private q()Ljava/lang/CharSequence;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0353

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-static {v1, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "  "

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;

    invoke-direct {v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private r(Ljava/lang/String;)I
    .locals 4
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "LIVE_TAKE_SEAT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x16

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "LIVE_MEMBER_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "LIVE_BEGIN_PK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1c

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "LIVE_PK_RESULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1b

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "LIVE_LUCKY_NUMBER_RESULT_V_COIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "LOCAL_LIVE_LUCKY_GIFT_REWARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "LIVE_ADD_GROUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "LIVE_PUSH_CHECH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "LIVE_CUSTOM_MSG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "LIVE_RESET_TITLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "LIVE_LINKMIC_MICMODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x19

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "LIVE_LINKMIC_MICLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x17

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "LIVE_SCREEN_SHOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "LIVE_SEND_GIFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "LIVE_REMOVE_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "MVP_RECOMMEND_IM_LOCK_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "LIVE_RECEIVE_HELLO_GIFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "LOCAL_LIVE_NOTICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1a

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "LIVE_BAN_TALK_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "LIVE_EVENT_ANIM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_14
    const-string v0, "LIVE_LUCKY_REMOTE_WIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_15
    const-string v0, "LIVE_ROOM_NATURE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_1

    :sswitch_16
    const-string v0, "LIVE_ADMIN_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x13

    goto :goto_1

    :sswitch_17
    const-string v0, "LIVE_TOBE_MEMBER_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto :goto_1

    :sswitch_18
    const-string v0, "LIVE_HELLO_JOIN_GROUP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_19
    const-string v0, "LIVE_FOLLOW_ANCHOR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1a
    const-string v0, "LIVE_SHARE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1b
    const-string v0, "RECOMMEND_LOCK_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1c
    const-string v0, "LIVE_LUCKY_NUMBER_RESULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xc

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    return v3

    .line 2
    :pswitch_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06013e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 3
    :pswitch_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060144

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 4
    :pswitch_2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f060147

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    :pswitch_3
    const-string p1, "#FF8889F6"

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 6
    :pswitch_4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06013c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 7
    :pswitch_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06013d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 8
    :pswitch_6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0603ce

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    :cond_1
    const-string p1, "#FF709EFF"

    .line 9
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cdfab37 -> :sswitch_1c
        -0x78ae046e -> :sswitch_1b
        -0x642bfd54 -> :sswitch_1a
        -0x5f0be710 -> :sswitch_19
        -0x4b607056 -> :sswitch_18
        -0x4144f17e -> :sswitch_17
        -0x2f28a7f2 -> :sswitch_16
        -0x2658a248 -> :sswitch_15
        -0x209252f3 -> :sswitch_14
        -0x1d896a17 -> :sswitch_13
        -0x1ca3fae5 -> :sswitch_12
        -0x13701569 -> :sswitch_11
        -0xc9a9a34 -> :sswitch_10
        -0x1c5c811 -> :sswitch_f
        0xc35e7d3 -> :sswitch_e
        0x193433f4 -> :sswitch_d
        0x1b22c01a -> :sswitch_c
        0x1dc0542d -> :sswitch_b
        0x1dc0c8a5 -> :sswitch_a
        0x38f5d855 -> :sswitch_9
        0x47dcdac6 -> :sswitch_8
        0x4f82dcb3 -> :sswitch_7
        0x604aa58e -> :sswitch_6
        0x60dae108 -> :sswitch_5
        0x64f08910 -> :sswitch_4
        0x6572fb4e -> :sswitch_3
        0x6a000764 -> :sswitch_2
        0x7034337d -> :sswitch_1
        0x70fb7b2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private s(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LIVE_ADD_GROUP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "LIVE_CUSTOM_MSG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "LIVE_SEND_GIFT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "LIVE_SHARE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 3
    :pswitch_0
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {v0, p1, v2, p2, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x642bfd54 -> :sswitch_3
        0x193433f4 -> :sswitch_2
        0x47dcdac6 -> :sswitch_1
        0x604aa58e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private t(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v1, " "

    .line 2
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getGiftImg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->u(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    iget-object p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftNum:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftNum:Ljava/lang/String;

    const-string v1, "1"

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftNum:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {p2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-object v0
.end method

.method private u(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, "\ufffc"

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x4

    .line 3
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0136

    invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v3, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/IconSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/4 p2, 0x0

    const/16 v1, 0x21

    invoke-virtual {v0, v2, p2, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private v(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;ILandroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 6
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getOperatedUserImg()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06013d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_1

    .line 9
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->k:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {v1, v2, p2, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;

    invoke-direct {p1, v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/a;-><init>(Ljava/lang/String;Landroid/widget/TextView;)V

    add-int/lit8 p3, p2, 0x1

    invoke-virtual {v1, p1, p2, p3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v1
.end method

.method private w(IZ)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, " "

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x64

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->p(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->p(II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    :goto_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    const/16 v2, 0x21

    invoke-virtual {v0, p2, v1, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private x(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1205bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;->getWinner()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;->getWinner()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;->getLuckyNumberStartGameBean()Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;->getPrizeNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, " {Diamonds}"

    .line 8
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v5

    invoke-virtual {v5}, Lq7/a;->j()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v5, :cond_1

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v4, v5, v9

    aput-object v0, v5, v6

    .line 9
    invoke-static {v1, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v4, v5, v9

    aput-object v0, v5, v6

    .line 10
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    .line 11
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 12
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v6, 0x21

    if-lez v1, :cond_2

    .line 13
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v10, 0x7f06007d

    invoke-static {v8, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v5, v7, v1, v8, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 16
    new-instance v7, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-direct {v7, v8, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v5, v7, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 17
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v9

    if-lez v0, :cond_3

    .line 18
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->n(Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Lcom/guochao/faceshow/views/r;

    move-result-object p1

    add-int/lit8 v1, v0, 0xb

    sub-int/2addr v1, v9

    invoke-virtual {v5, p1, v0, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    return-object v5
.end method

.method private y(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)Ljava/lang/CharSequence;
    .locals 11

    .line 1
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;

    const-string v1, ""

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    .line 4
    :cond_0
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;->getWinDiamondNum()I

    move-result v3

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;->getFlag()I

    move-result p2

    if-nez p2, :cond_1

    const p2, 0x7f0f01f7

    goto :goto_0

    :cond_1
    const p2, 0x7f0f01f8

    :goto_0
    invoke-static {v4, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v4

    invoke-virtual {v4}, Lq7/a;->j()Z

    move-result v4

    const-string v5, " {diamond}"

    const/4 v6, 0x1

    const/4 v7, 0x3

    const v8, 0x7f1205c1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v4, :cond_2

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v10

    aput-object v5, v4, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v9

    invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v10

    aput-object v5, v7, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v9

    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 9
    :goto_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_3

    return-object v3

    .line 10
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 11
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    .line 12
    new-instance v5, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 13
    invoke-virtual {v5, v9, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    invoke-virtual {v5, v10, v10}, Landroid/widget/TextView;->measure(II)V

    .line 15
    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const v5, 0x3d99999a    # 0.075f

    mul-float v5, v5, p1

    float-to-int v5, v5

    int-to-float v1, v1

    mul-float v1, v1, p1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v6

    int-to-float v4, v4

    div-float/2addr v1, v4

    float-to-int v1, v1

    const v4, 0x3f59999a    # 0.85f

    mul-float p1, p1, v4

    float-to-int p1, p1

    .line 16
    invoke-virtual {p2, v10, v5, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    new-instance p1, Lcom/guochao/faceshow/views/r;

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/views/r;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 18
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "{diamond}"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/16 v1, 0x11

    if-ltz p2, :cond_4

    add-int/lit8 v4, p2, 0x9

    .line 19
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-gt v4, v5, :cond_4

    .line 20
    invoke-virtual {v3, p1, p2, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 21
    :cond_4
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 22
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v5, 0x7f0603ce

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {p2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 23
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-gt p1, v4, :cond_5

    .line 24
    invoke-virtual {v3, p2, v10, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 25
    :cond_5
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v6, 0x7f06007d

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    if-ltz p1, :cond_6

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-gt v5, v6, :cond_6

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v3, v4, p1, v5, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 29
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-direct {v4, v5, v2, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v5, 0x21

    .line 31
    invoke-virtual {v3, v4, p1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 32
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    if-ltz v0, :cond_7

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, p2, p1, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return-object v3

    :cond_8
    return-object v1
.end method

.method private z()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->j:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f03f2

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 5
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 6
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 7
    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 10
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->j:Landroid/graphics/drawable/BitmapDrawable;

    const/high16 v1, 0x42180000    # 38.0f

    .line 11
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->j:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method


# virtual methods
.method public I(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->n:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->n:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->n:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->n:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->i:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_5
    return-void
.end method

.method public g(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getChatDate()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setChatDate(Ljava/lang/Long;)V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->k(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    :cond_1
    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LIVE_ADD_GROUP"

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v4

    invoke-interface {v4}, Lb8/d;->c()Lb8/a;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v4}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getChatDate()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getChatDate()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v0, v3, v5

    if-gtz v0, :cond_3

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    sub-int/2addr v1, v2

    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->p:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :goto_0
    return-void

    .line 14
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LIVE_CUSTOM_MSG"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 22
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 24
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 25
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_1

    .line 26
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LIVE_SEND_GIFT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 28
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 29
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->j(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)V

    .line 30
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 32
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_8
    :goto_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v11, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "LOCAL_VOICE_ROOM_INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v11, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "LIVE_ADD_GROUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v11, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "LIVE_CUSTOM_MSG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v11, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "LOCAL_LIVE_LUCKY_GIFT_TIPS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v11, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "LIVE_SEND_GIFT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v11, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "LIVE_REMOVE_USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v11, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "LOCAL_LIVE_BROADCASTER_SHARE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v11, 0x7

    goto :goto_0

    :sswitch_7
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v11, 0x6

    goto :goto_0

    :sswitch_8
    const-string v2, "LIVE_BAN_TALK_USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v11, 0x5

    goto :goto_0

    :sswitch_9
    const-string v2, "LOCAL_LIVE_ADD_SHARE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v11, 0x4

    goto :goto_0

    :sswitch_a
    const-string v2, "LIVE_RECEIVE_HELLO_GIFT_THANK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v11, 0x3

    goto :goto_0

    :sswitch_b
    const-string v2, "LOCAL_VOICE_ROOM_JOIN_ROOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v11, 0x2

    goto :goto_0

    :sswitch_c
    const-string v2, "LIVE_FOLLOW_ANCHOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v11, 0x1

    goto :goto_0

    :sswitch_d
    const-string v2, "LIVE_SHARE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_0

    :cond_d
    const/4 v11, 0x0

    :goto_0
    packed-switch v11, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :pswitch_0
    return v3

    :pswitch_1
    return v6

    :pswitch_2
    return v9

    :pswitch_3
    return v4

    .line 5
    :pswitch_4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b:Ld9/g;

    invoke-interface {v2}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 8
    :cond_e
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressChatSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    return v10

    .line 9
    :cond_f
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :pswitch_5
    return v8

    :pswitch_6
    return v7

    :pswitch_7
    return v5

    .line 10
    :pswitch_8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressChatSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    return v10

    .line 11
    :cond_10
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x642bfd54 -> :sswitch_d
        -0x5f0be710 -> :sswitch_c
        -0x5ca15c53 -> :sswitch_b
        -0x48a55169 -> :sswitch_a
        -0x2667599e -> :sswitch_9
        -0x1ca3fae5 -> :sswitch_8
        0x0 -> :sswitch_7
        0xb3f382f -> :sswitch_6
        0xc35e7d3 -> :sswitch_5
        0x193433f4 -> :sswitch_4
        0x322f8b51 -> :sswitch_3
        0x47dcdac6 -> :sswitch_2
        0x604aa58e -> :sswitch_1
        0x72fcfb4c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method public h(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->k(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public i(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;I)V
    .locals 23
    .param p1    # Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    const-string v1, ""

    .line 1
    iget-object v0, v8, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    .line 2
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v12

    .line 3
    iget-object v0, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$j;->a()Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$j;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 4
    :try_start_0
    iget-object v0, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {v8, v11, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->F(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/tencent/bugly/crashreport/CrashReport;->postCatchedException(Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 6
    :goto_0
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->r(Ljava/lang/String;)I

    move-result v2

    .line 7
    iget-object v3, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->line:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v3, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->translate_content:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, -0x1

    if-nez v10, :cond_1

    .line 9
    iget-object v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b:Ld9/g;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isVoiceRoom()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    :goto_1
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;

    const-string v2, "#40000000"

    .line 13
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->setPaintColor(I)V

    .line 14
    iget-object v1, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {v8, v1, v0, v11}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->M(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void

    .line 15
    :cond_1
    iget-object v5, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LIVE_HELLO_JOIN_GROUP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LIVE_RECEIVE_HELLO_GIFT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 17
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RECOMMEND_LOCK_SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_f

    .line 18
    :cond_2
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MVP_RECOMMEND_IM_LOCK_SUCCESS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 19
    invoke-direct {v8, v9, v11, v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->P(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;Ljava/lang/CharSequence;)V

    return-void

    .line 20
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 21
    iget-object v5, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/ChatBgView;

    .line 22
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getDressChatSource()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/guochao/faceshow/aaspring/views/ChatBgView;->setVipChatBg(Ljava/lang/String;)V

    goto :goto_2

    .line 23
    :cond_4
    iget-object v5, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v5, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;

    const-string v7, "#66000000"

    .line 24
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/guochao/faceshow/aaspring/views/LiveChatAutoBackgroundView;->setPaintColor(I)V

    .line 25
    :goto_2
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getLevelId()I

    move-result v5

    .line 26
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserType()I

    move-result v7

    const/4 v14, 0x1

    if-ne v7, v14, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    .line 27
    :goto_3
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserType()I

    .line 28
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v15

    invoke-virtual {v15}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v15

    if-lt v15, v14, :cond_6

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    .line 29
    :goto_4
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    .line 30
    :goto_5
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getIsNewer()I

    move-result v4

    if-ne v4, v14, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    if-nez v0, :cond_9

    move-object v0, v1

    .line 31
    :cond_9
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFinalResultSpannableString()Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 32
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v18

    if-eqz v18, :cond_a

    .line 33
    invoke-virtual/range {v18 .. v18}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getPublicFontColor()Ljava/lang/String;

    move-result-object v13

    .line 34
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    const-string v6, "#"

    invoke-virtual {v13, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 35
    :try_start_1
    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 36
    iget-object v6, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_a
    move v13, v2

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v3, 0x1

    move-object v0, v1

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v4, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move v7, v13

    .line 38
    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->R(Landroid/text/SpannableStringBuilder;ZLcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;II)V

    .line 39
    iget-object v1, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {v8, v1, v0, v11, v14}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->N(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Z)V

    return-void

    .line 40
    :cond_b
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 41
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v14, "LIVE_TAKE_SEAT"

    const-string v10, "LOCAL_VOICE_ROOM_WELCOME"

    move/from16 v20, v3

    const-string v3, "LIVE_TOBE_MEMBER_USER"

    const/16 v21, 0xa

    move/from16 v22, v5

    const-string v5, "LIVE_BROADCAST_THANK_HELLO_GIFT"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x7

    goto/16 :goto_8

    :sswitch_1
    const-string v2, "LIVE_MEMBER_USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x16

    goto/16 :goto_8

    :sswitch_2
    const-string v2, "LIVE_BEGIN_PK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x11

    goto/16 :goto_8

    :sswitch_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x4

    goto/16 :goto_8

    :sswitch_4
    const-string v2, "LIVE_PK_RESULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x12

    goto/16 :goto_8

    :sswitch_5
    const-string v2, "LOCAL_LIVE_LUCKY_GIFT_REWARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xb

    goto/16 :goto_8

    :sswitch_6
    const-string v2, "LIVE_ADD_GROUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto/16 :goto_8

    :sswitch_7
    const-string v2, "LIVE_CUSTOM_MSG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto/16 :goto_8

    :sswitch_8
    const-string v2, "LIVE_LINKMIC_MICMODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x13

    goto/16 :goto_8

    :sswitch_9
    const-string v2, "LIVE_LINKMIC_MICLOCK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xf

    goto/16 :goto_8

    :sswitch_a
    const-string v2, "LIVE_SCREEN_SHOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    goto/16 :goto_8

    :sswitch_b
    const-string v2, "LIVE_SEND_GIFT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x8

    goto/16 :goto_8

    :sswitch_c
    const-string v2, "LIVE_REMOVE_USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xa

    goto/16 :goto_8

    :sswitch_d
    const-string v2, "LIVE_LUCKY_REMOTE_WIN_V_COIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xe

    goto :goto_8

    :sswitch_e
    const-string v2, "LIVE_BAN_TALK_USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x9

    goto :goto_8

    :sswitch_f
    const-string v2, "LIVE_EVENT_ANIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x14

    goto :goto_8

    :sswitch_10
    const-string v2, "LIVE_LUCKY_REMOTE_WIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0xd

    goto :goto_8

    :sswitch_11
    const-string v2, "LIVE_ROOM_NATURE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x10

    goto :goto_8

    :sswitch_12
    const-string v2, "LIVE_ADMIN_USER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x15

    goto :goto_8

    :sswitch_13
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x5

    goto :goto_8

    :sswitch_14
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x6

    goto :goto_8

    :sswitch_15
    const-string v2, "LIVE_FOLLOW_ANCHOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x3

    goto :goto_8

    :sswitch_16
    const-string v2, "LIVE_SHARE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x2

    goto :goto_8

    :cond_c
    :goto_7
    const/4 v1, -0x1

    :goto_8
    move-object/from16 v16, v14

    const-string v14, "\r\n"

    packed-switch v1, :pswitch_data_0

    .line 42
    iget-object v1, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :pswitch_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v0

    move v5, v13

    .line 44
    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->Q(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/CharSequence;ILandroid/text/SpannableStringBuilder;)V

    return-void

    .line 45
    :pswitch_1
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46
    iget-object v0, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {v8, v0, v6, v11}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->M(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void

    .line 47
    :pswitch_2
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    .line 48
    iget-object v3, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {v8, v11, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 49
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getMvpUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 50
    iget-object v3, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {v8, v11, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->o(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v13, 0x1

    goto :goto_9

    :cond_d
    const/4 v13, 0x0

    :goto_9
    if-eqz v7, :cond_e

    add-int/lit8 v13, v13, 0x1

    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->q()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_e
    if-eqz v15, :cond_f

    add-int/lit8 v13, v13, 0x1

    .line 52
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v3

    invoke-direct {v8, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->G(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_f
    if-eqz v4, :cond_10

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->A()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v13, v13, 0x1

    :cond_10
    move/from16 v3, v22

    .line 54
    invoke-direct {v8, v3, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->w(IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v7, :cond_11

    const/16 v2, 0x28

    goto :goto_a

    :cond_11
    const/16 v2, 0xa

    .line 55
    :goto_a
    invoke-direct {v8, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->D(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x3

    if-lt v13, v2, :cond_12

    .line 56
    invoke-virtual {v6, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 57
    :cond_12
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->isHandyGiftMessage()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 58
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v14, v6

    goto :goto_b

    .line 59
    :cond_13
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getDisplayFromNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    move-object/from16 v1, p0

    move-object v2, v11

    const/16 v13, 0x14

    move-object v14, v6

    move v6, v7

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->C(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 60
    invoke-direct {v8, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->D(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->E()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v8, v11, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->s(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 62
    iget-object v0, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    check-cast v12, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-direct {v8, v0, v12}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->t(Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 63
    :goto_b
    iget-object v0, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {v8, v0, v14, v11}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->M(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void

    :pswitch_3
    move-object/from16 v17, v0

    move/from16 v1, v22

    const/16 v0, 0x14

    .line 64
    iget-object v2, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {v8, v11, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->m(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getMvpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 66
    iget-object v2, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {v8, v11, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->o(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v19, 0x1

    goto :goto_c

    :cond_14
    const/16 v19, 0x0

    :goto_c
    if-eqz v7, :cond_15

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->q()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v19, v19, 0x1

    :cond_15
    if-eqz v15, :cond_16

    .line 68
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 69
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipLevel()I

    move-result v2

    invoke-direct {v8, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->G(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v19, v19, 0x1

    :cond_16
    if-eqz v4, :cond_17

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->A()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v19, v19, 0x1

    :cond_17
    move/from16 v2, v19

    .line 71
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 72
    invoke-direct {v8, v1, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->w(IZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_18
    if-eqz v7, :cond_19

    const/16 v1, 0x28

    goto :goto_d

    :cond_19
    const/16 v1, 0xa

    .line 73
    :goto_d
    invoke-direct {v8, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->D(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x3

    if-lt v2, v1, :cond_1a

    .line 74
    invoke-virtual {v6, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 75
    :cond_1a
    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getDisplayFromNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x1

    if-eqz v20, :cond_1b

    iget v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->l:I

    goto :goto_e

    :cond_1b
    iget v1, v8, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->k:I

    :goto_e
    move v15, v1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v0, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v6

    move v6, v12

    move-object v12, v7

    move v7, v15

    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->C(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 76
    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 77
    :cond_1c
    invoke-virtual {v12, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1d
    const/16 v0, 0x14

    .line 78
    invoke-direct {v8, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->D(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    .line 79
    invoke-direct {v8, v11, v0, v13}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->s(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v11

    move-object/from16 v5, p1

    move/from16 v6, p2

    move v7, v13

    .line 80
    invoke-direct/range {v1 .. v7}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->R(Landroid/text/SpannableStringBuilder;ZLcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;II)V

    .line 81
    iget-object v0, v9, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;->chatContent:Landroid/widget/TextView;

    invoke-direct {v8, v0, v12, v11}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->M(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;)V

    return-void

    .line 82
    :cond_1e
    :goto_f
    invoke-direct {v8, v9, v11, v12, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->O(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;Ljava/lang/CharSequence;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x642bfd54 -> :sswitch_16
        -0x5f0be710 -> :sswitch_15
        -0x4144f17e -> :sswitch_14
        -0x3eb1a8a1 -> :sswitch_13
        -0x2f28a7f2 -> :sswitch_12
        -0x2658a248 -> :sswitch_11
        -0x209252f3 -> :sswitch_10
        -0x1d896a17 -> :sswitch_f
        -0x1ca3fae5 -> :sswitch_e
        0x7401c4c -> :sswitch_d
        0xc35e7d3 -> :sswitch_c
        0x193433f4 -> :sswitch_b
        0x1b22c01a -> :sswitch_a
        0x1dc0542d -> :sswitch_9
        0x1dc0c8a5 -> :sswitch_8
        0x47dcdac6 -> :sswitch_7
        0x604aa58e -> :sswitch_6
        0x60dae108 -> :sswitch_5
        0x6572fb4e -> :sswitch_4
        0x69293843 -> :sswitch_3
        0x6a000764 -> :sswitch_2
        0x7034337d -> :sswitch_1
        0x70fb7b2a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->I(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;I)V
    .locals 8
    .param p1    # Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    const v2, 0x7f0a04fd

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const v0, 0x7f0a0b47

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isThankHelloGift()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v3, 0x7f1204ad

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    const v3, 0x7f1204ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_2
    const v0, 0x7f0a0b77

    .line 13
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a04ef

    .line 14
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 16
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 17
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0a00f0

    .line 20
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 21
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b:Ld9/g;

    const-string v6, "1"

    if-eqz v5, :cond_3

    invoke-interface {v5}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b:Ld9/g;

    .line 22
    invoke-interface {v5}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v5

    invoke-interface {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 23
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setIsAttention(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_3
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v5

    const-string v7, "0"

    invoke-virtual {v5, v7}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setIsAttention(Ljava/lang/String;)V

    .line 25
    :goto_1
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->d:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getIsAttention()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v3, 0x7f08027e

    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f1203a5

    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const v4, 0x7f1209b2

    .line 29
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f08027f

    .line 30
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v1, :cond_5

    .line 31
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->b:Ld9/g;

    invoke-interface {v0}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v0

    invoke-interface {v0}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0f0089

    invoke-static {v1, v0, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 33
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 34
    :cond_6
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0259

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 36
    :cond_7
    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->i(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;I)V

    .line 37
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d029b

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00d8

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 3
    :pswitch_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomInviteHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0358

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-direct {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomInviteHolder;-><init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    return-object p2

    .line 4
    :pswitch_1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomTakeSeatHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d035f

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-direct {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomTakeSeatHolder;-><init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    return-object p2

    .line 5
    :pswitch_2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0359

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-direct {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/VoiceRoomJoinHolder;-><init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    return-object p2

    .line 6
    :pswitch_3
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftTipsHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0385

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-direct {p2, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/livechatholder/LuckyGiftTipsHolder;-><init>(Landroid/view/View;Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;)V

    return-object p2

    .line 7
    :pswitch_4
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d029c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 8
    :pswitch_5
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00d9

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter$AutoChatViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 9
    :pswitch_6
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 10
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a00f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2

    .line 12
    :pswitch_7
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->e:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/AutoLiveChatAdapter;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveChatFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveInfoFragment;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isPrivateLiveRoom()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0a0b77

    .line 14
    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f1209b5

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
