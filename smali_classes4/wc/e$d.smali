.class Lwc/e$d;
.super Lwc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwc/d<",
        "Lvc/b;",
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

.method synthetic constructor <init>(Lwc/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lwc/e$d;-><init>()V

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

    invoke-virtual {p0, p1}, Lwc/e$d;->c(Lorg/json/JSONObject;)Lvc/b;

    move-result-object p1

    return-object p1
.end method

.method protected c(Lorg/json/JSONObject;)Lvc/b;
    .locals 6
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

    .line 1
    new-instance v0, Lvc/b;

    const-string v1, "client_id"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    const-string v4, "scope"

    .line 4
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lqc/e;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lvc/b;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method
