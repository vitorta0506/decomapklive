.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;
.super Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;
.source "SourceFile"


# instance fields
.field e:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lcom/vk/api/sdk/VK;->initialize(Landroid/content/Context;)V

    .line 3
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;->e:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public i(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->i(IILandroid/content/Intent;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/p$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/p$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/p;)V

    invoke-static {p1, p2, p3, v0}, Lcom/vk/api/sdk/VK;->onActivityResult(IILandroid/content/Intent;Lcom/vk/api/sdk/auth/VKAuthCallback;)Z

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/vk/api/sdk/auth/VKScope;->OFFLINE:Lcom/vk/api/sdk/auth/VKScope;

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/api/sdk/VK;->login(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method
