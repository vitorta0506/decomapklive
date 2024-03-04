.class Lcom/tencent/imsdk/conversation/ConversationManager$ConversationManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/imsdk/conversation/ConversationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationManagerHolder"
.end annotation


# static fields
.field private static final conversationManager:Lcom/tencent/imsdk/conversation/ConversationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/imsdk/conversation/ConversationManager;

    invoke-direct {v0}, Lcom/tencent/imsdk/conversation/ConversationManager;-><init>()V

    sput-object v0, Lcom/tencent/imsdk/conversation/ConversationManager$ConversationManagerHolder;->conversationManager:Lcom/tencent/imsdk/conversation/ConversationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/tencent/imsdk/conversation/ConversationManager;
    .locals 1

    sget-object v0, Lcom/tencent/imsdk/conversation/ConversationManager$ConversationManagerHolder;->conversationManager:Lcom/tencent/imsdk/conversation/ConversationManager;

    return-object v0
.end method
