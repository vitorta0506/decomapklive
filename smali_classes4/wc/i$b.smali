.class Lwc/i$b;
.super Lwc/d;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwc/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwc/d<",
        "Lcom/linecorp/linesdk/LineFriendProfile;",
        ">;"
    }
.end annotation


# direct methods
.method static synthetic c(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineFriendProfile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0}, Lwc/i$b;->d(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineFriendProfile;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineFriendProfile;
    .locals 9
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lwc/i$l;->c(Lorg/json/JSONObject;)Lcom/linecorp/linesdk/LineProfile;

    move-result-object v0

    const-string v1, "displayNameOverridden"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3
    new-instance p0, Lcom/linecorp/linesdk/LineFriendProfile;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineProfile;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineProfile;->a()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineProfile;->b()Landroid/net/Uri;

    move-result-object v6

    .line 6
    invoke-virtual {v0}, Lcom/linecorp/linesdk/LineProfile;->c()Ljava/lang/String;

    move-result-object v7

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/linecorp/linesdk/LineFriendProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
