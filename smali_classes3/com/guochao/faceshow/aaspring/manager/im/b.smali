.class public Lcom/guochao/faceshow/aaspring/manager/im/b;
.super Lcom/guochao/faceshow/aaspring/manager/im/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/manager/im/b$n;,
        Lcom/guochao/faceshow/aaspring/manager/im/b$m;,
        Lcom/guochao/faceshow/aaspring/manager/im/b$o;
    }
.end annotation


# static fields
.field private static C:Lcom/guochao/faceshow/aaspring/manager/im/b;


# instance fields
.field A:Z

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/manager/im/b$m;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;

.field private s:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

.field private t:Lcom/tencent/imsdk/v2/V2TIMMessage;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;"
        }
    .end annotation
.end field

.field private v:J

.field w:Ljava/lang/Runnable;

.field private x:I

.field private y:Z

.field z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->r:Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/im/b$k;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/b$k;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->w:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->x:I

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->z:Ljava/util/HashMap;

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->A:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->B:Ljava/util/List;

    return-void
.end method

.method private H0(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;I",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;",
            ">;>;)V"
        }
    .end annotation

    move v5, p4

    .line 1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v5, v0, :cond_0

    move-object v4, p2

    move-object/from16 v7, p5

    .line 2
    invoke-interface {v7, p2}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v4, p2

    move-object/from16 v7, p5

    .line 3
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 4
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v8, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;

    invoke-direct {v8}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;-><init>()V

    const v0, 0x7fffffff

    .line 6
    invoke-virtual {v8, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setCount(I)V

    const/4 v0, 0x3

    .line 7
    invoke-virtual {v8, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setGetType(I)V

    .line 8
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setUserID(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v9

    new-instance v10, Lcom/guochao/faceshow/aaspring/manager/im/b$j;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p3

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/guochao/faceshow/aaspring/manager/im/b$j;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Ljava/util/List;ILjava/util/List;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    invoke-virtual {v9, v8, v10}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getHistoryMessageList(Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p5

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/manager/im/b;->H0(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    :goto_0
    return-void
.end method

.method static synthetic N(Lcom/guochao/faceshow/aaspring/manager/im/b;JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/manager/im/b;->o0(JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic O(Lcom/guochao/faceshow/aaspring/manager/im/b;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/manager/im/b;->H0(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    return-void
.end method

.method static synthetic P(Lcom/guochao/faceshow/aaspring/manager/im/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->B:Ljava/util/List;

    return-object p0
.end method

.method static synthetic Q(Lcom/guochao/faceshow/aaspring/manager/im/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->y:Z

    return p1
.end method

.method static synthetic R(Lcom/guochao/faceshow/aaspring/manager/im/b;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->x:I

    return p0
.end method

.method static synthetic S(Lcom/guochao/faceshow/aaspring/manager/im/b;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->x:I

    return p1
.end method

.method static synthetic T(Lcom/guochao/faceshow/aaspring/manager/im/b;)I
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->x:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->x:I

    return v0
.end method

.method static synthetic U(Lcom/guochao/faceshow/aaspring/manager/im/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->v:J

    return-wide v0
.end method

.method static synthetic V(Lcom/guochao/faceshow/aaspring/manager/im/b;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->v:J

    return-wide p1
.end method

.method private Y(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveInviteMessage;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "imchat_hellostar_replythello"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a0(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/c;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/c;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/c;->isOneDay()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->h24_be_greeted:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b0(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;->isSayHi()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->getInstance()Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;

    move-result-object p1

    const-string v0, "sayhi_onepeople"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingUtils;->track(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static l0()Lcom/guochao/faceshow/aaspring/manager/im/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/im/b;->C:Lcom/guochao/faceshow/aaspring/manager/im/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/guochao/faceshow/aaspring/manager/im/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/manager/im/b;->C:Lcom/guochao/faceshow/aaspring/manager/im/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/im/b;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;-><init>()V

    sput-object v1, Lcom/guochao/faceshow/aaspring/manager/im/b;->C:Lcom/guochao/faceshow/aaspring/manager/im/b;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/im/b;->C:Lcom/guochao/faceshow/aaspring/manager/im/b;

    return-object v0
.end method

.method private n0(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/manager/im/b;->o0(JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V

    return-void
.end method

.method private o0(JLcom/tencent/imsdk/v2/V2TIMValueCallback;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/tencent/imsdk/v2/V2TIMValueCallback<",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;I)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/im/b$e;

    invoke-direct {v1, p0, p4, p5, p3}, Lcom/guochao/faceshow/aaspring/manager/im/b$e;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Ljava/util/List;ILcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    const/16 p3, 0x14

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversationList(JILcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method private p0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Z)V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/im/b$f;

    invoke-direct {v0, p0, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/im/b$f;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->v0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    return-void
.end method

.method private r0(Lcom/tencent/imsdk/v2/V2TIMConversation;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfb/a;->e(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public A0()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conversation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->c()Lb8/a;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/guochao/faceshow/aaspring/manager/im/b$b;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/manager/im/b$b;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;)V

    .line 2
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 3
    invoke-static {v1, v0, v2}, Lcom/guochao/faceshow/aaspring/manager/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->b:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, La8/a;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, La8/a;-><init>(ZLjava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->B()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->s:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->u:Ljava/util/List;

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->t:Lcom/tencent/imsdk/v2/V2TIMMessage;

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->o:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->z:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected B0(ILjava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->q:Z

    if-eqz p1, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->q:Z

    .line 4
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->g()V

    return-void

    :cond_1
    add-int/lit8 v4, p1, 0x1

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/tencent/imsdk/v2/V2TIMConversation;

    .line 7
    invoke-direct {p0, v9}, Lcom/guochao/faceshow/aaspring/manager/im/b;->r0(Lcom/tencent/imsdk/v2/V2TIMConversation;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0, v4, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/im/b;->B0(ILjava/util/List;Z)V

    return-void

    .line 9
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/v2/V2TIMConversation;

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->e0(Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 10
    invoke-virtual {v9}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUnreadCount()I

    move-result v0

    .line 11
    invoke-virtual {v8, v9}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setTIMConversation2(Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    if-gtz v0, :cond_3

    const/16 v0, 0xa

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    const/16 v1, 0x64

    .line 12
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 13
    new-instance v1, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;

    invoke-direct {v1}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;-><init>()V

    .line 14
    invoke-virtual {v9}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setUserID(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 15
    invoke-virtual {v1, v2}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setGetType(I)V

    .line 16
    invoke-virtual {v1, v0}, Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;->setCount(I)V

    .line 17
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getMessageManager()Lcom/tencent/imsdk/v2/V2TIMMessageManager;

    move-result-object v0

    new-instance v11, Lcom/guochao/faceshow/aaspring/manager/im/b$g;

    move-object v2, v11

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move v10, p1

    invoke-direct/range {v2 .. v10}, Lcom/guochao/faceshow/aaspring/manager/im/b$g;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;ILjava/util/List;ZZLcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/tencent/imsdk/v2/V2TIMConversation;I)V

    invoke-virtual {v0, v1, v11}, Lcom/tencent/imsdk/v2/V2TIMMessageManager;->getHistoryMessageList(Lcom/tencent/imsdk/v2/V2TIMMessageListGetOption;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    :cond_4
    return-void
.end method

.method public E0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->q:Z

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/im/b$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/manager/im/b$a;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;)V

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->n0(Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method public F0(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->B0(ILjava/util/List;Z)V

    return-void
.end method

.method public G0(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->d:Ljava/util/List;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->g()V

    .line 7
    :try_start_0
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversationId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/manager/im/b$i;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/manager/im/b$i;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->deleteConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->a:Landroid/app/Application;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/DataCleanManager;->clearIMCache(Landroid/content/Context;Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method

.method public I0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/manager/im/b;->H0(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public K0(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/SearchChatRecordResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->b(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p2

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/manager/im/b;->H0(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public L0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 4
    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p2, v0}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public N0(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->e(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/tencent/imsdk/v2/V2TIMMessage;)V

    return-void
.end method

.method public O0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->u:Ljava/util/List;

    return-void
.end method

.method public P0()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Q0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->a:Landroid/app/Application;

    const-string v1, "userId"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->A0()V

    return-void
.end method

.method public R0(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->g()V

    :cond_0
    return-void
.end method

.method public W()V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->s0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->e0(Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p1

    return-object p1
.end method

.method protected d0(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/manager/im/d$a;

    .line 2
    instance-of v2, v1, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/BaseChatActivity;

    if-nez v2, :cond_1

    .line 3
    instance-of v2, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/InputtingMessage;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-interface {v1, p1}, Lcom/guochao/faceshow/aaspring/manager/im/d$a;->onNewMessage(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public e(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/tencent/imsdk/v2/V2TIMMessage;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->s:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->t:Lcom/tencent/imsdk/v2/V2TIMMessage;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->D(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e0(Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 2
    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->u0(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-direct {p0, p1, v0, p2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->p0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Z)V

    .line 6
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c2c_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/im/b$h;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b$h;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    invoke-virtual {p2, p1, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-object v0
.end method

.method public f0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->b:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->b:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La8/a;

    invoke-virtual {v0}, La8/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public g0()Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->s:Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    return-object v0
.end method

.method public i0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->u:Ljava/util/List;

    return-object v0
.end method

.method public k0()Lcom/tencent/imsdk/v2/V2TIMMessage;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->t:Lcom/tencent/imsdk/v2/V2TIMMessage;

    return-object v0
.end method

.method public m0()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->v:J

    return-wide v0
.end method

.method public onLogout()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMManager;->getLoginUser()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/im/b$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/manager/im/b$c;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;)V

    invoke-static {v0, v1}, Lcom/guochao/faceshow/utils/TXIMUtils;->logoutTIM(ILcom/tencent/imsdk/v2/V2TIMCallback;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->B()V

    return-void
.end method

.method public onServerConfigChanged(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->A:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->A:Z

    return-void

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->y:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/im/a;->g()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUserChanged(Lcom/guochao/faceshow/bean/UserBean;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMManager;->getLoginUser()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->x:I

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/im/b;->s0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public q(Lcom/tencent/imsdk/v2/V2TIMMessage;ZLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/b;->m(Lcom/tencent/imsdk/v2/V2TIMMessage;)Lo7/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceCastIMManager"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->r:Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/im_messages/GCIMMessageDispatcherRegister;->dispatchGCIMMessage(Lo7/a;)Z

    return-void

    :cond_1
    if-nez v0, :cond_2

    return-void

    .line 6
    :cond_2
    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    .line 7
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 8
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->a0(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->Y(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    if-eqz p2, :cond_3

    .line 10
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x2

    .line 11
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setConversationType(I)V

    .line 12
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->setConversationId(Ljava/lang/String;)V

    .line 13
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->b()Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/trtc/receive/b;->d(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 14
    instance-of p2, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    if-eqz p2, :cond_4

    .line 15
    move-object p2, v0

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;

    invoke-static {p2}, Lcom/guochao/faceshow/utils/PushUtils;->pushByIM(Lcom/guochao/faceshow/aaspring/modulars/chat/models/SystemNotifyMessage;)V

    .line 16
    :cond_4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->d0(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V

    .line 17
    instance-of p2, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;

    if-eqz p2, :cond_5

    .line 18
    move-object p2, v0

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/LiveMessage;->getWrappedMessage()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 19
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getCmd()Ljava/lang/String;

    move-result-object p3

    const-string v1, "LIVE_CANCEL_PK_INVITE"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 20
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->o()Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p3

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;->getData()Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/pk/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/a;->i(Lcom/tencent/imsdk/v2/V2TIMMessage;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 24
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isOnlineMessage()Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 25
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/manager/im/b;->u0(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object p3

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->c:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getUserID()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->p0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Z)V

    .line 28
    :cond_6
    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/manager/im/IMPushNotificationManager;->push(Ljava/util/List;)V

    return-void
.end method

.method public q0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->y:Z

    return v0
.end method

.method public registImCheckListener(Lcom/guochao/faceshow/aaspring/manager/im/b$m;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public s0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/manager/im/b;->t0(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method public t0(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->y:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->y:Z

    const-string v0, "24HourMessage"

    const-string v1, "\u5f00\u59cb\u767b\u5f55IM"

    .line 3
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/manager/im/b$l;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/manager/im/b$l;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/imsdk/v2/V2TIMManager;->login(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMCallback;)V

    return-void
.end method

.method u0(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->z:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;-><init>(ILjava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->z:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public unRegistImCheckListener(Lcom/guochao/faceshow/aaspring/manager/im/b$m;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/b;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public v(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/v2/V2TIMConversation;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->p:Z

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/imsdk/v2/V2TIMConversation;

    .line 5
    invoke-virtual {v1}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "24HourMessage"

    const-string v1, "\u5237\u65b0IM\u4f1a\u8bdd"

    .line 7
    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, v0, p1}, Lcom/guochao/faceshow/aaspring/manager/im/b;->B0(ILjava/util/List;Z)V

    return-void
.end method

.method public v0(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->o:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->c:Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->a(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/manager/im/b$n;-><init>()V

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->a(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->o:Landroid/util/LruCache;

    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public y0(Ljava/util/List;Lcom/guochao/faceshow/aaspring/manager/im/d$b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/manager/im/d$b<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/manager/im/a;->o:Landroid/util/LruCache;

    invoke-virtual {v4, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/manager/im/b$n;

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, v4, Lcom/guochao/faceshow/aaspring/manager/im/b$n;->c:Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;

    if-eqz v4, :cond_0

    .line 7
    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/utils/ConversationUtils;->from(Lcom/tencent/imsdk/v2/V2TIMUserFullInfo;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-interface {p2, v2}, Lcom/guochao/faceshow/aaspring/manager/im/d$b;->a(Ljava/lang/Object;)V

    return-void

    .line 12
    :cond_2
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getInstance()Lcom/tencent/imsdk/v2/V2TIMManager;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/manager/im/b$d;

    invoke-direct {v0, p0, p2, v2}, Lcom/guochao/faceshow/aaspring/manager/im/b$d;-><init>(Lcom/guochao/faceshow/aaspring/manager/im/b;Lcom/guochao/faceshow/aaspring/manager/im/d$b;Ljava/util/List;)V

    invoke-virtual {p1, v1, v0}, Lcom/tencent/imsdk/v2/V2TIMManager;->getUsersInfo(Ljava/util/List;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method
