.class public final Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->getUserId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/google/gson/JsonObject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/google/gson/JsonObject;",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1;->this$0:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 2
    .param p1    # Lg7/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "getUserId"

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1;->this$0:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-static {v0}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->access$getModelLiveData(Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/google/gson/JsonObject;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, -0x1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lg7/a;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-direct {p1, v0, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1;->onFailure(Lg7/a;)V

    return-void

    :cond_0
    const-string/jumbo v0, "userId"

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data.get(\"userId\").getAsString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "getUserId"

    .line 7
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1;->this$0:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-static {p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->access$getModelLiveData(Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lg7/a;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-direct {p1, v0, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1;->onFailure(Lg7/a;)V

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Lg7/a;

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-direct {p1, v0, p2}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1;->onFailure(Lg7/a;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$getUserId$1;->onResponse(Lcom/google/gson/JsonObject;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
