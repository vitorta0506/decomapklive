.class Lwc/i$j;
.super Lwc/d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwc/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwc/d<",
        "Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwc/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lwc/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lwc/i$j;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lwc/i$j;->c(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "type"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;->valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/openchat/OpenChatRoomJoinType;

    move-result-object p1

    return-object p1
.end method
