.class public Lcom/tencent/imsdk/manager/BaseManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/imsdk/common/NetworkInfoCenter$INetworkChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/imsdk/manager/BaseManager$BaseManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseManager"

.field public static final TUI_COMPONENT_CHAT:J = 0x3L

.field private static final TUI_COMPONENT_CHECK_COUNT_LIMIT:I = 0x5

.field public static final TUI_COMPONENT_COMMUNITY:J = 0x8L

.field public static final TUI_COMPONENT_CONTACT:J = 0x4L

.field public static final TUI_COMPONENT_CONVERSATION:J = 0x2L

.field public static final TUI_COMPONENT_CORE:J = 0x1L

.field public static final TUI_COMPONENT_GROUP:J = 0x5L

.field public static final TUI_COMPONENT_OFFLINEPUSH:J = 0x7L

.field public static final TUI_COMPONENT_SEARCH:J = 0x6L

.field private static final TUI_COMPONENT_STACK_LAYER_LIMIT:I = 0xa

.field public static final TUI_COMPONENT_UNKNOWN:J = 0x0L

.field public static final TUI_STYLE_TYPE_CLASSIC:J = 0x0L

.field public static final TUI_STYLE_TYPE_MINIMALIST:J = 0x1L

.field private static final UI_PLATFORM_FLUTTER:I = 0x1

.field private static final UI_PLATFORM_FLUTTER_UIKIT:I = 0x2

.field private static final UI_PLATFORM_TUIKIT:I = 0xf

.field private static final UI_PLATFORM_TUIKIT_MINIMALIST:I = 0x1a

.field private static final UI_PLATFORM_UNITY:I = 0x5

.field private static final UI_PLATFORM_UNITY_UIKIT:I = 0x6

.field private static final UI_PLATFORM_UNKNOWN:I = 0x0

.field private static mLoadLibrarySuccess:Z = false


# instance fields
.field private forceUseQuicChannel:Z

.field private isIPv6Prior:Z

.field private isInit:Z

.field private isTestEnvironment:Z

.field private mDatabaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

.field private mInvokeFromTUICore:Z

.field private mInvokeFromTUIKit:Z

.field private mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

.field private mNumberUIPlatform:I

.field private mPacketRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

.field private mProxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

.field private mStringUIPlatform:Ljava/lang/String;

.field private mTUIComponentCheckCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTUIComponentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sdkListenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/imsdk/manager/SDKListener;",
            ">;"
        }
    .end annotation
.end field

.field private userPreference:Lcom/tencent/imsdk/manager/UserPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->loadIMLibrary()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/imsdk/manager/BaseManager;->mLoadLibrarySuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    .line 3
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUICore:Z

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    .line 6
    new-instance v1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    .line 7
    new-instance v1, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mProxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    .line 8
    new-instance v1, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mDatabaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    .line 9
    new-instance v1, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    invoke-direct {v1}, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;-><init>()V

    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mPacketRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    const-string v1, ""

    .line 10
    iput-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mStringUIPlatform:Ljava/lang/String;

    .line 11
    iput v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mNumberUIPlatform:I

    .line 12
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    .line 13
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isTestEnvironment:Z

    .line 14
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->forceUseQuicChannel:Z

    .line 15
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isIPv6Prior:Z

    .line 16
    new-instance v0, Lcom/tencent/imsdk/manager/UserPreference;

    invoke-direct {v0}, Lcom/tencent/imsdk/manager/UserPreference;-><init>()V

    iput-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->userPreference:Lcom/tencent/imsdk/manager/UserPreference;

    return-void
.end method

.method public static getInstance()Lcom/tencent/imsdk/manager/BaseManager;
    .locals 1

    invoke-static {}, Lcom/tencent/imsdk/manager/BaseManager$BaseManagerHolder;->access$000()Lcom/tencent/imsdk/manager/BaseManager;

    move-result-object v0

    return-object v0
.end method

.method private getTUIChatStyle()J
    .locals 2

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuichat.minimalistui.MinimalistUIService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x1

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getTUIContactStyle()J
    .locals 2

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuicontact.minimalistui.widget.FriendProfileLayout"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x1

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getTUIConversationStyle()J
    .locals 2

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuiconversation.minimalistui.widget.ConversationListLayout"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x1

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getTUIGroupStyle()J
    .locals 2

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuigroup.minimalistui.view.GroupInfoLayout"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x1

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getTUISearchStyle()J
    .locals 2

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuisearch.minimalistui.page.SearchMainMinimalistActivity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x1

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getUIPlatform()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mNumberUIPlatform:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->isTUIKit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    .line 3
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->isFlutter()Z

    move-result v0

    .line 4
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->isUnity()Z

    move-result v1

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    if-eqz v1, :cond_4

    .line 6
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    return v0

    :cond_3
    const/4 v0, 0x5

    return v0

    .line 7
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    if-eqz v0, :cond_6

    .line 8
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIKitMinimalist()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1a

    return v0

    :cond_5
    const/16 v0, 0xf

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUIChat()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuichat.model.ChatProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUICommunity()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuicommunity.model.CommunityProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUIContact()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuicontact.model.ContactProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUIConversation()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuiconversation.model.ConversationProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUIGroup()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuigroup.model.GroupInfoProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUIKitMinimalist()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getTUIConversationStyle()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getTUIChatStyle()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getTUIContactStyle()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getTUIGroupStyle()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getTUISearchStyle()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasTUIOfflinePush()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tim.tuiofflinepush.TUIOfflinePushManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private hasTUISearch()Z
    .locals 1

    :try_start_0
    const-string v0, "com.tencent.qcloud.tuikit.tuisearch.model.SearchDataProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private isFlutter()Z
    .locals 1

    :try_start_0
    const-string v0, "com.qq.qcloud.tencent_im_sdk_plugin.tencent_im_sdk_plugin"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTUICore()Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.tencent.qcloud.tuicore.TUICore"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2
    :catch_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    const/16 v4, 0xf

    if-le v3, v4, :cond_0

    return v2

    .line 4
    :cond_0
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tuicore"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private isTUIKit()Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "com.tencent.qcloud.tim.uikit.TUIKit"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :try_start_1
    const-string v1, "com.tencent.qcloud.tuicore.TUICore"

    .line 2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 3
    :catch_1
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    const/16 v4, 0xf

    if-le v3, v4, :cond_0

    return v2

    .line 5
    :cond_0
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tuikitimpl"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "tuicore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method private isUnity()Z
    .locals 1

    :try_start_0
    const-string v0, "com.qcloud.tencentimsdk.TencentImSDKPluginUnity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private reportTUIComponentUsage()V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->isTUICore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUICore:Z

    .line 2
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const-wide/16 v3, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const-wide/16 v4, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const-wide/16 v5, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const-wide/16 v6, 0x6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const-wide/16 v7, 0x7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    const-wide/16 v8, 0x8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    if-eqz v0, :cond_8

    .line 10
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUICore:Z

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    const-wide/16 v11, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIConversation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getTUIConversationStyle()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIChat()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getTUIChatStyle()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_1
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIContact()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getTUIContactStyle()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getTUIGroupStyle()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_3
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUISearch()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getTUISearchStyle()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_4
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUIOfflinePush()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_5
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->hasTUICommunity()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 25
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_6
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeReportTUIComponentUsage(Ljava/util/Map;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public checkTUIComponent(J)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUICore:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-wide/16 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-nez v4, :cond_4

    const-string v0, "conversationprovider"

    :goto_0
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x3

    cmp-long v4, p1, v0

    if-nez v4, :cond_5

    const-string v0, "chatprovider"

    goto :goto_0

    :cond_5
    const-wide/16 v0, 0x5

    cmp-long v4, p1, v0

    if-nez v4, :cond_6

    const-string v0, "groupInfoprovider"

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x4

    cmp-long v4, p1, v0

    if-nez v4, :cond_7

    const-string v0, "contactprovider"

    goto :goto_0

    :cond_7
    const-wide/16 v0, 0x6

    cmp-long v4, p1, v0

    if-nez v4, :cond_8

    const-string v0, "searchdataprovider"

    goto :goto_0

    :cond_8
    const-wide/16 v0, 0x7

    cmp-long v4, p1, v0

    if-nez v4, :cond_9

    const-string/jumbo v0, "tuiofflinepushmanager"

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const-wide/16 v0, 0x8

    cmp-long v4, p1, v0

    if-nez v4, :cond_11

    const-string v0, "communityprovider"

    goto :goto_1

    .line 5
    :goto_2
    iget-object v4, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_10

    add-int/2addr v4, v3

    .line 6
    iget-object v5, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v7, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8
    :goto_3
    array-length v9, v4

    if-ge v2, v9, :cond_10

    .line 9
    aget-object v9, v4, v2

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    if-nez v5, :cond_a

    .line 11
    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v5, 0x1

    :cond_a
    if-eqz v1, :cond_c

    if-nez v6, :cond_c

    const-string v10, "classic"

    .line 12
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    :goto_4
    const/4 v6, 0x1

    goto :goto_5

    :cond_b
    const-string v10, "minimalist"

    .line 13
    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-wide/16 v6, 0x1

    move-wide v7, v6

    goto :goto_4

    :cond_c
    :goto_5
    if-eqz v5, :cond_e

    if-eqz v1, :cond_d

    if-eqz v6, :cond_e

    .line 14
    :cond_d
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->nativeReportTUIComponentUsage(Ljava/util/Map;)V

    goto :goto_6

    :cond_e
    const/16 v9, 0xa

    if-lt v2, v9, :cond_f

    if-eqz v5, :cond_10

    .line 16
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->nativeReportTUIComponentUsage(Ljava/util/Map;)V

    goto :goto_6

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_10
    :goto_6
    return-void

    .line 18
    :cond_11
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tui component type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public enableSignaling(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->userPreference:Lcom/tencent/imsdk/manager/UserPreference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/imsdk/manager/UserPreference;->setEnableSignaling(Ljava/lang/Boolean;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->userPreference:Lcom/tencent/imsdk/manager/UserPreference;

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->nativeSetUserPreference(Lcom/tencent/imsdk/manager/UserPreference;)V

    return-void
.end method

.method public getClockTickInHz()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetClockTickInHz()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLoginStatus()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetLoginStatus()I

    move-result v0

    return v0
.end method

.method public getLoginUser()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetLoginUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetServerTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeTick()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetTimeTick()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string v1, "sdk not init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeGetSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initLocalStorage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x177d

    const-string v0, "sdk not init"

    .line 2
    invoke-virtual {p2, p1, v0}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/imsdk/manager/BaseManager;->nativeInitLocalStorage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public initSDK(Landroid/content/Context;Lcom/tencent/imsdk/manager/SDKConfig;ZLcom/tencent/imsdk/manager/SDKListener;)Z
    .locals 6

    .line 1
    sget-boolean v0, Lcom/tencent/imsdk/manager/BaseManager;->mLoadLibrarySuccess:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string p2, "libimsdk.so is not loaded"

    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3
    :cond_0
    iget-wide v2, p2, Lcom/tencent/imsdk/manager/SDKConfig;->sdkAppId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 4
    sget-object p1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "invalid sdkAppID:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/tencent/imsdk/manager/SDKConfig;->sdkAppId:J

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    if-nez p1, :cond_2

    .line 5
    sget-object p1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string p2, "null context"

    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 7
    sget-object p1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string p2, "Has initSDK"

    invoke-static {p1, p2}, Lcom/tencent/imsdk/common/IMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 8
    :cond_3
    invoke-static {}, Lcom/tencent/imsdk/common/IMContext;->getInstance()Lcom/tencent/imsdk/common/IMContext;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/imsdk/common/IMContext;->init(Landroid/content/Context;)V

    .line 9
    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->init(Landroid/content/Context;Lcom/tencent/imsdk/common/NetworkInfoCenter$INetworkChangeListener;)V

    .line 10
    invoke-static {}, Lcom/tencent/imsdk/message/MessageCenter;->getInstance()Lcom/tencent/imsdk/message/MessageCenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/message/MessageCenter;->init()V

    .line 11
    invoke-static {}, Lcom/tencent/imsdk/group/GroupManager;->getInstance()Lcom/tencent/imsdk/group/GroupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/group/GroupManager;->init()V

    .line 12
    invoke-static {}, Lcom/tencent/imsdk/conversation/ConversationManager;->getInstance()Lcom/tencent/imsdk/conversation/ConversationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/conversation/ConversationManager;->init()V

    .line 13
    invoke-static {}, Lcom/tencent/imsdk/relationship/RelationshipManager;->getInstance()Lcom/tencent/imsdk/relationship/RelationshipManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/relationship/RelationshipManager;->init()V

    .line 14
    invoke-static {}, Lcom/tencent/imsdk/signaling/SignalingManager;->getInstance()Lcom/tencent/imsdk/signaling/SignalingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/imsdk/signaling/SignalingManager;->init()V

    .line 15
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getSDKInitPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->sdkInitPath:Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getInstanceType()I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p2, Lcom/tencent/imsdk/manager/SDKConfig;->sdkInstanceType:J

    .line 17
    iget-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->isTestEnvironment:Z

    iput-boolean p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->isTestEnvironment:Z

    .line 18
    iget-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->forceUseQuicChannel:Z

    iput-boolean p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->forceUseQuicChannel:Z

    .line 19
    iget-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->isIPv6Prior:Z

    iput-boolean p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->isIPv6Prior:Z

    .line 20
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->deviceInfo:Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->deviceType:Ljava/lang/String;

    .line 21
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->deviceInfo:Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->deviceId:Ljava/lang/String;

    .line 22
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->deviceInfo:Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getInstanceType()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->deviceBrand:J

    .line 23
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->deviceInfo:Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getSystemVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$DeviceInfo;->systemVersion:Ljava/lang/String;

    .line 24
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getNetworkType()I

    move-result v0

    iput v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkType:I

    .line 25
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getIPType()I

    move-result v0

    iput v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->ipType:I

    .line 26
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getNetworkID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkId:Ljava/lang/String;

    .line 27
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getWifiNetworkHandle()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->wifiNetworkHandle:J

    .line 28
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getXgNetworkHandle()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->xgNetworkHandle:J

    .line 29
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInitializeCostTime()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->initializeCostTime:J

    .line 30
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-static {}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->getInstance()Lcom/tencent/imsdk/common/NetworkInfoCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/imsdk/common/NetworkInfoCenter;->isNetworkConnected()Z

    move-result v0

    iput-boolean v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkConnected:Z

    .line 31
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mProxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    iput-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->proxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    .line 32
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mDatabaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    iput-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->databaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    .line 33
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mPacketRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    iput-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->packetRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    .line 34
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->logSetting:Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;

    iput-boolean v1, p1, Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;->enableConsoleLog:Z

    .line 35
    invoke-static {}, Lcom/tencent/imsdk/common/SystemUtil;->getSDKLogPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/imsdk/manager/SDKConfig$LogSetting;->logFilePath:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mStringUIPlatform:Ljava/lang/String;

    iput-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->stringUIPlatform:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->getUIPlatform()I

    move-result p1

    iput p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->numberUIPlatform:I

    .line 38
    iget-object p1, p2, Lcom/tencent/imsdk/manager/SDKConfig;->networkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    .line 39
    invoke-virtual {p0, p2, p3, p4}, Lcom/tencent/imsdk/manager/BaseManager;->nativeInitSDK(Lcom/tencent/imsdk/manager/SDKConfig;ZLcom/tencent/imsdk/manager/SDKListener;)V

    .line 40
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->sdkListenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 41
    invoke-direct {p0}, Lcom/tencent/imsdk/manager/BaseManager;->reportTUIComponentUsage()V

    .line 42
    iput-boolean v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    return v1
.end method

.method public isCommercialAbilityEnabled(JLcom/tencent/imsdk/common/IMCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/tencent/imsdk/common/IMCallback<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/manager/BaseManager;->nativeIsCommercialAbilityEnabled(JLcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    const/16 p1, 0x177d

    const-string p2, "sdk not init"

    .line 2
    invoke-virtual {p3, p1, p2}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/imsdk/manager/BaseManager;->nativeLogin(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method public logout(Lcom/tencent/imsdk/common/IMCallback;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x177d

    const-string v1, "sdk not init"

    .line 2
    invoke-virtual {p1, v0, v1}, Lcom/tencent/imsdk/common/IMCallback;->fail(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->nativeLogout(Lcom/tencent/imsdk/common/IMCallback;)V

    return-void
.end method

.method protected native nativeGetClockTickInHz()J
.end method

.method protected native nativeGetLoginStatus()I
.end method

.method protected native nativeGetLoginUser()Ljava/lang/String;
.end method

.method protected native nativeGetSDKVersion()Ljava/lang/String;
.end method

.method protected native nativeGetServerTime()J
.end method

.method protected native nativeGetTimeTick()J
.end method

.method protected native nativeInitLocalStorage(Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeInitSDK(Lcom/tencent/imsdk/manager/SDKConfig;ZLcom/tencent/imsdk/manager/SDKListener;)V
.end method

.method protected native nativeIsCommercialAbilityEnabled(JLcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeLogin(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeLogout(Lcom/tencent/imsdk/common/IMCallback;)V
.end method

.method protected native nativeNotifyNetworkChange(ZIILjava/lang/String;JJJ)V
.end method

.method protected native nativeReportTUIComponentUsage(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method protected native nativeSetCustomServerInfo(Lcom/tencent/imsdk/manager/CustomServerInfo;)V
.end method

.method protected native nativeSetUserPreference(Lcom/tencent/imsdk/manager/UserPreference;)V
.end method

.method protected native nativeUninitSDK()V
.end method

.method public notifySelfInfoUpdated(Lcom/tencent/imsdk/relationship/UserInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->sdkListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/manager/SDKListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/imsdk/manager/SDKListener;->onSelfInfoUpdated(Lcom/tencent/imsdk/relationship/UserInfo;)V

    :cond_0
    return-void
.end method

.method public notifyUserStatusChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/imsdk/relationship/UserStatus;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->sdkListenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/imsdk/manager/SDKListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/imsdk/manager/SDKListener;->onUserStatusChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onNetworkChange(ZIILjava/lang/String;JJJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iget-boolean v1, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkConnected:Z

    if-ne p1, v1, :cond_0

    iget v1, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkType:I

    if-ne p2, v1, :cond_0

    iget v1, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->ipType:I

    if-ne p3, v1, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkId:Ljava/lang/String;

    .line 2
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lcom/tencent/imsdk/manager/BaseManager;->TAG:Ljava/lang/String;

    const-string p2, "onNetworkChange, networkinfo is same"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    iput-boolean p1, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkConnected:Z

    .line 5
    iput p2, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkType:I

    .line 6
    iput p3, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->ipType:I

    .line 7
    iput-object p4, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->networkId:Ljava/lang/String;

    .line 8
    iput-wide p9, v0, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->initializeCostTime:J

    .line 9
    invoke-virtual/range {p0 .. p10}, Lcom/tencent/imsdk/manager/BaseManager;->nativeNotifyNetworkChange(ZIILjava/lang/String;JJJ)V

    return-void
.end method

.method public setCustomServerInfo(Lcom/tencent/imsdk/manager/CustomServerInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/imsdk/manager/BaseManager;->nativeSetCustomServerInfo(Lcom/tencent/imsdk/manager/CustomServerInfo;)V

    return-void
.end method

.method public setCustomUIPlatform(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mStringUIPlatform:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/tencent/imsdk/manager/BaseManager;->mNumberUIPlatform:I

    return-void
.end method

.method public setDatabaseEncryptInfo(Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mDatabaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    return-void
.end method

.method public setForceUseQuicChannel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->forceUseQuicChannel:Z

    return-void
.end method

.method public setIPv6Prior(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->isIPv6Prior:Z

    return-void
.end method

.method public setLibraryPath(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/tencent/imsdk/common/SystemUtil;->loadIMLibrary(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/tencent/imsdk/manager/BaseManager;->mLoadLibrarySuccess:Z

    return p1
.end method

.method public setPacketRetryInfo(Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mPacketRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    return-void
.end method

.method public setProxyInfo(Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mProxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    return-void
.end method

.method public setTestEnvironment(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/imsdk/manager/BaseManager;->isTestEnvironment:Z

    return-void
.end method

.method public unInitSDK()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/imsdk/manager/BaseManager;->nativeUninitSDK()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mStringUIPlatform:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mNumberUIPlatform:I

    .line 4
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isInit:Z

    .line 5
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isTestEnvironment:Z

    .line 6
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->forceUseQuicChannel:Z

    .line 7
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->isIPv6Prior:Z

    .line 8
    iget-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mLastNetworkInfo:Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;

    invoke-virtual {v1}, Lcom/tencent/imsdk/manager/SDKConfig$NetworkInfo;->clean()V

    .line 9
    iget-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mProxyInfo:Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;

    invoke-virtual {v1}, Lcom/tencent/imsdk/manager/SDKConfig$ProxyInfo;->clean()V

    .line 10
    iget-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mDatabaseEncryptInfo:Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;

    invoke-virtual {v1}, Lcom/tencent/imsdk/manager/SDKConfig$DatabaseEncryptInfo;->clean()V

    .line 11
    iget-object v1, p0, Lcom/tencent/imsdk/manager/BaseManager;->mPacketRetryInfo:Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;

    invoke-virtual {v1}, Lcom/tencent/imsdk/manager/SDKConfig$PacketRetryInfo;->clean()V

    .line 12
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUIKit:Z

    .line 13
    iput-boolean v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mInvokeFromTUICore:Z

    .line 14
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 15
    iget-object v0, p0, Lcom/tencent/imsdk/manager/BaseManager;->mTUIComponentCheckCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
