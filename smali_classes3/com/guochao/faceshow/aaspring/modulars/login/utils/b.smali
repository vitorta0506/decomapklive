.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;
.super Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;
.source "SourceFile"


# instance fields
.field private e:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DelayIniter;->initFacebook()V

    .line 3
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;->e:Lcom/facebook/CallbackManager;

    return-void
.end method

.method static synthetic o(Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;Lcom/facebook/AccessToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;->p(Lcom/facebook/AccessToken;)V

    return-void
.end method

.method private p(Lcom/facebook/AccessToken;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "id,name,picture"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;Lcom/facebook/AccessToken;)V

    invoke-static {p1, v1}, Lcom/facebook/GraphRequest;->newMeRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->g()V

    .line 2
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;->e:Lcom/facebook/CallbackManager;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->unregisterCallback(Lcom/facebook/CallbackManager;)V

    return-void
.end method

.method public i(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->i(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;->e:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 2
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;->e:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 3
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "public_profile"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logIn(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method
