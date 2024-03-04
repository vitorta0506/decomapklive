.class public final Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel$uploadPicture$2$1$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;->uploadPicture(Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
        "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0004H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/guochao/faceshow/guild/viewmodel/ComplaintViewModel$uploadPicture$2$1$1",
        "Lcom/guochao/faceshow/aaspring/base/http/callback/c;",
        "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;",
        "data",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;",
        "baseResponse",
        "",
        "onResponse",
        "Lg7/a;",
        "exp",
        "onFailure",
        "component_guild_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $it:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CancellableContinuation;Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;",
            ">;",
            "Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel$uploadPicture$2$1$1;->$it:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p2, p0, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel$uploadPicture$2$1$1;->this$0:Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

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
            "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "exp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel$uploadPicture$2$1$1;->this$0:Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;

    new-instance v0, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel$uploadPicture$2$1$1$onFailure$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel$uploadPicture$2$1$1$onFailure$1;-><init>(Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/mvvm/viewmodel/BaseViewModel;->launchMain(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onResponse(Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;
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
            "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "baseResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel$uploadPicture$2$1$1;->$it:Lkotlinx/coroutines/CancellableContinuation;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/CancellableContinuation;->resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/guild/viewmodel/ComplaintViewModel$uploadPicture$2$1$1;->onResponse(Lcom/guochao/faceshow/guild/bean/UploadFileResultBean;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
