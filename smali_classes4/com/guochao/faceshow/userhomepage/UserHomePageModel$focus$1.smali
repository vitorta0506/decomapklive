.class public final Lcom/guochao/faceshow/userhomepage/UserHomePageModel$focus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->focus(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhb/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/guochao/faceshow/userhomepage/UserHomePageModel$focus$1",
        "Lhb/b;",
        "",
        "data",
        "",
        "onResponse",
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
.field final synthetic $userId:Ljava/lang/String;

.field final synthetic this$0:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$focus$1;->$userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$focus$1;->this$0:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$focus$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$focus$1;->$userId:Ljava/lang/String;

    invoke-static {v0}, Ly7/e;->e(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "focus"

    .line 4
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/userhomepage/UserHomePageModel$focus$1;->this$0:Lcom/guochao/faceshow/userhomepage/UserHomePageModel;

    invoke-static {p1}, Lcom/guochao/faceshow/userhomepage/UserHomePageModel;->access$getModelLiveData(Lcom/guochao/faceshow/userhomepage/UserHomePageModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
