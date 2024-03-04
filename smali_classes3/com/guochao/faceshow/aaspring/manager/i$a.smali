.class Lcom/guochao/faceshow/aaspring/manager/i$a;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/manager/i;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/aaspring/config/ServerConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/manager/i;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/manager/i;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 4
    .param p1    # Lcom/guochao/faceshow/aaspring/config/ServerConfig;
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
            "Lcom/guochao/faceshow/aaspring/config/ServerConfig;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/aaspring/config/ServerConfig;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->a(Lcom/guochao/faceshow/aaspring/manager/i;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "module_sever_config_time"

    const-string v1, "key_sever_config_time"

    invoke-static {p2, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getThisDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/guochao/faceshow/aaspring/utils/DateUtils;->isSameData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->a(Lcom/guochao/faceshow/aaspring/manager/i;)Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x0

    const-string v3, "key_select_advertisement"

    invoke-static {p2, v0, v3, v2}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->a(Lcom/guochao/faceshow/aaspring/manager/i;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getThisDate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p2, v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/CustomNameCacheUtils;->setLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/i;->b(Lcom/guochao/faceshow/aaspring/manager/i;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/manager/i;->d(Lcom/guochao/faceshow/aaspring/manager/i;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/guochao/faceshow/aaspring/manager/i;->d:Z

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/manager/i;->c(Lcom/guochao/faceshow/aaspring/manager/i;)Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->e(Lcom/guochao/faceshow/aaspring/manager/i;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->f(Lcom/guochao/faceshow/aaspring/manager/i;)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->g(Lcom/guochao/faceshow/aaspring/manager/i;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->h(Lcom/guochao/faceshow/aaspring/manager/i;)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/manager/i;->i(Lcom/guochao/faceshow/aaspring/manager/i;)V

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Lg7/a;

    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/manager/i$a;->onFailure(Lg7/a;)V

    :goto_0
    return-void
.end method

.method public onFailure(Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Lcom/guochao/faceshow/aaspring/config/ServerConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/manager/i;->d:Z

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "serverconfig"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/manager/i;->a(Lcom/guochao/faceshow/aaspring/manager/i;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "userId"

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/i;->d(Lcom/guochao/faceshow/aaspring/manager/i;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/i$a;->a:Lcom/guochao/faceshow/aaspring/manager/i;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/manager/i;->b(Lcom/guochao/faceshow/aaspring/manager/i;Lcom/guochao/faceshow/aaspring/config/ServerConfig;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/manager/i$a;->a(Lcom/guochao/faceshow/aaspring/config/ServerConfig;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
