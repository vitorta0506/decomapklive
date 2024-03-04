.class Lcom/guochao/faceshow/push/CustomPushReceiver$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/push/CustomPushReceiver;->onAliasOperatorResult(Landroid/content/Context;Lcn/jpush/android/api/JPushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/push/CustomPushReceiver;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/push/CustomPushReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/push/CustomPushReceiver$a;->a:Lcom/guochao/faceshow/push/CustomPushReceiver;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/utils/PushUtils;->setJPushAlias(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
