.class public Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/ConversationInfo$OnlineStatus;,
        Lcom/guochao/faceshow/aaspring/beans/ConversationInfo$ConversationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final C2C:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GROUP:I = 0x2

.field public static final OFFLINE:I = 0x0

.field public static final ONLINE:I = 0x1

.field public static final SYSTEM:I = 0x3

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private alwaysTop:I

.field private appointState:I

.field private attentionAppointAuth:I

.field private frozen:Z

.field private greetingMessage:Z

.field private imAudioAppointSwitch:I

.field private imVideoAppointSwitch:I

.field private isNewConversation:Z

.field private isOneDay:Z

.field private isSayHi:Z

.field private isSendSayHi:Z

.field private transient lastCheckOnlineTimestamp:J

.field private transient lastOnlineTimestamp:J

.field private mConversationId:Ljava/lang/String;

.field private mConversationInfoDetail:Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

.field private mConversationType:I

.field private mIsDraft:Z

.field private transient mLastMsg:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

.field private mLastMsgStr:Ljava/lang/String;

.field private mLastMsgTime:J

.field private transient mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

.field private mUnreadNum:I

.field private transient onlineStatus:I

.field private selfSent:Z

.field private silent:I

.field private sortTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->onlineStatus:I

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->frozen:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;-><init>(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;-><init>(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;Lcom/tencent/imsdk/v2/V2TIMConversation;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 4

    const-string v0, "_"

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 30
    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->onlineStatus:I

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->frozen:Z

    .line 32
    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationType:I

    .line 33
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c2c_"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 36
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_1

    :cond_2
    move-object v0, p1

    :goto_1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->topKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->alwaysTop:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getMyNoDisturb()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->silent:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    .line 38
    :goto_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->sortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->sortTime:J

    if-eqz p4, :cond_4

    .line 39
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    goto :goto_3

    .line 40
    :cond_4
    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object p2

    new-instance p4, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo$2;

    invoke-direct {p4, p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo$2;-><init>(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    invoke-virtual {p2, p1, p4}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    .line 41
    :goto_3
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationInfoDetail:Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->onlineStatus:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->frozen:Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mIsDraft:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->alwaysTop:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->silent:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->sortTime:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->frozen:Z

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationType:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isNewConversation:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgStr:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgTime:J

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mUnreadNum:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->appointState:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->attentionAppointAuth:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->imAudioAppointSwitch:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->imVideoAppointSwitch:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->selfSent:Z

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->greetingMessage:Z

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSayHi:Z

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSendSayHi:Z

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isOneDay:Z

    return-void
.end method

.method static synthetic access$002(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;Lcom/tencent/imsdk/v2/V2TIMConversation;)Lcom/tencent/imsdk/v2/V2TIMConversation;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-object p1
.end method

.method private getSortTime()J
    .locals 4

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->sortTime:J

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static sortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sort"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const-string v1, "userId"

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static topKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const-string v1, "userId"

    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkOneDay()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/c;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/c;->isOneDay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setOneDay(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setOneDay(Z)V

    :goto_0
    return-void
.end method

.method public compareTo(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsg:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getAlwaysTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getAlwaysTop()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5
    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getSortTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getSortTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getAlwaysTop()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getAlwaysTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->compareTo(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversationId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAlwaysTop()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->alwaysTop:I

    return v0
.end method

.method public getAppointState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->appointState:I

    return v0
.end method

.method public getAttentionAppointAuth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->attentionAppointAuth:I

    return v0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationInfoDetail()Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationInfoDetail:Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    return-object v0
.end method

.method public getConversationName()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto :goto_1

    :sswitch_0
    const-string v3, "system_interaction"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :sswitch_1
    const-string v1, "system_official"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "system_focused"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "system_hello"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1208af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :pswitch_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :pswitch_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1208ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :pswitch_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1208ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationInfoDetail:Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0}, Lcom/tencent/imsdk/v2/V2TIMConversation;->getShowName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 11
    :cond_6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x1536b13e -> :sswitch_3
        0x47a0567 -> :sswitch_2
        0x5a075efb -> :sswitch_1
        0x6ce6d002 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getConversationType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationType:I

    return v0
.end method

.method public getImAudioAppointSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->imAudioAppointSwitch:I

    return v0
.end method

.method public getImVideoAppointSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->imVideoAppointSwitch:I

    return v0
.end method

.method public getIsDraft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mIsDraft:Z

    return v0
.end method

.method public getLastCheckOnlineTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->lastCheckOnlineTimestamp:J

    return-wide v0
.end method

.method public getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsg:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    return-object v0
.end method

.method public getLastMsgStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsg:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLastMsgTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgTime:J

    return-wide v0
.end method

.method public getLastOnlineTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->lastOnlineTimestamp:J

    return-wide v0
.end method

.method public getLocalFaceRes()I
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "system_interaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "system_official"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "system_focused"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "system_hello"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const v0, 0x7f0f03ae

    return v0

    :cond_1
    const v0, 0x7f0f03b2

    return v0

    :cond_2
    const v0, 0x7f0f03b3

    return v0

    :cond_3
    const v0, 0x7f0f03af

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1536b13e -> :sswitch_3
        0x47a0567 -> :sswitch_2
        0x5a075efb -> :sswitch_1
        0x6ce6d002 -> :sswitch_0
    .end sparse-switch
.end method

.method public getOnlineStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->onlineStatus:I

    return v0
.end method

.method public getSilent()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->silent:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "system_focused"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "system_interaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->silent:I

    return v0

    .line 5
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "is_system_interaction"

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 6
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "is_friend_request"

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public getTIMConversation()Lcom/tencent/imsdk/v2/V2TIMConversation;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-object v0
.end method

.method public getTIMConversationId()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "c2c_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mUnreadNum:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getTIMConversationId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDraft()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mIsDraft:Z

    return v0
.end method

.method public isFrozen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->frozen:Z

    return v0
.end method

.method public isGreetingConversation()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->isOneDay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSayHi(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;->isSayHi()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSayHi(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSayHi(Z)V

    :goto_0
    return-void
.end method

.method public isGreetingMessage()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->greetingMessage:Z

    return v0
.end method

.method public isMvpConversation()Z
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    const-string v1, "iarGoHNtFX2Sbp3RrJqBWwhQEgWHjN5u"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNewConversation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isNewConversation:Z

    return v0
.end method

.method public isOneDay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isOneDay:Z

    return v0
.end method

.method public isSayHi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSayHi:Z

    return v0
.end method

.method public isSelfSent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->selfSent:Z

    return v0
.end method

.method public isSendGreetingConversation()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TextMessage;->isOneDay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSendSayHi(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->getLastMsg()Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;

    invoke-interface {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/d;->isSayHi()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSendSayHi(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSendSayHi(Z)V

    :goto_0
    return-void
.end method

.method public isSendSayHi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSendSayHi:Z

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationInfoDetail:Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationInfoDetail:Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationInfoDetail:Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationInfoDetail:Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public setAlwaysTop(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->alwaysTop:I

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->topKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSortTime(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->setSortTime(J)V

    :goto_0
    return-void
.end method

.method public setAppointState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->appointState:I

    return-void
.end method

.method public setAttentionAppointAuth(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->attentionAppointAuth:I

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    return-void
.end method

.method public setConversationInfoDetail(Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationInfoDetail:Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    return-void
.end method

.method public setConversationType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationType:I

    return-void
.end method

.method public setDraft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mIsDraft:Z

    return-void
.end method

.method public setFrozen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->frozen:Z

    return-void
.end method

.method public setGreetingMessage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->greetingMessage:Z

    return-void
.end method

.method public setImAudioAppointSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->imAudioAppointSwitch:I

    return-void
.end method

.method public setImVideoAppointSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->imVideoAppointSwitch:I

    return-void
.end method

.method public setIsDraft(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mIsDraft:Z

    return-void
.end method

.method public setLastCheckOnlineTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->lastCheckOnlineTimestamp:J

    return-void
.end method

.method public setLastMsg(Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/chat/models/TipsMessage;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v4

    mul-long v4, v4, v2

    iput-wide v4, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgTime:J

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsg:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsg:Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getSummary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgStr:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/models/a;->getMessage()Lcom/tencent/imsdk/v2/V2TIMMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/v2/V2TIMMessage;->getTimestamp()J

    move-result-wide v0

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgTime:J

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgTime:J

    .line 8
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgStr:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setLastMsgStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgStr:Ljava/lang/String;

    return-void
.end method

.method public setLastMsgTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgTime:J

    return-void
.end method

.method public setLastOnlineTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->lastOnlineTimestamp:J

    return-void
.end method

.method public setNewConversation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isNewConversation:Z

    return-void
.end method

.method public setOneDay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isOneDay:Z

    return-void
.end method

.method public setOnlineStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->onlineStatus:I

    return-void
.end method

.method public setSayHi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSayHi:Z

    return-void
.end method

.method public setSelfSent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->selfSent:Z

    return-void
.end method

.method public setSendSayHi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSendSayHi:Z

    return-void
.end method

.method public setSilent(I)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getMyNoDisturb()Ljava/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    :cond_1
    :goto_0
    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->silent:I

    return-void
.end method

.method public setSortTime(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->sortTime:J

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->sortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setLong(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public setTIMConversation2(Lcom/tencent/imsdk/v2/V2TIMConversation;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mTIMConversation:Lcom/tencent/imsdk/v2/V2TIMConversation;

    return-void
.end method

.method public setUnreadNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mUnreadNum:I

    return-void
.end method

.method public shouldShowInConversationList()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isNewConversation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mIsDraft:Z

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    invoke-static {v0}, Lfb/a;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationInfoDetail:Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ConversationInfoDetail;->isFrozen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->frozen:Z

    xor-int/2addr v0, v2

    return v0

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->frozen:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mIsDraft:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 2
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->alwaysTop:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->silent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->sortTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->frozen:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mConversationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isNewConversation:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mLastMsgTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 11
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->mUnreadNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->appointState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->attentionAppointAuth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->imAudioAppointSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->imVideoAppointSwitch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->selfSent:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->greetingMessage:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 18
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSayHi:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isSendSayHi:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;->isOneDay:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
