.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onFailure"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a$a;

    invoke-direct {p1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;Ljava/io/IOException;)V

    invoke-static {p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1    # Lokhttp3/Call;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;)V

    invoke-static {p1}, Lcom/guochao/faceshow/utils/HandlerGetter;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onResponse"

    .line 4
    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 6
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/GoogleBean;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/GoogleBean;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;

    const/16 v0, 0x9

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GoogleBean;->getAccess_token()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
