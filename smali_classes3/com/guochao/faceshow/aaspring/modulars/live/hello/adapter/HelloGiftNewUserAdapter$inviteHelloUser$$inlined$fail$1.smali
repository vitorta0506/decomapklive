.class public final Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$fail$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->inviteHelloUser(Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;ILandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Ljava/lang/Object;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u00012\u0010\u0010\u0003\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0004H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "_response",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "",
        "invoke",
        "com/guochao/faceshow/aaspring/base/http/v2/GCRequest$fail$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $holder$inlined:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$fail$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$fail$1;->$holder$inlined:Landroid/widget/TextView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$fail$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 3
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.http.v2.Response<T of com.guochao.faceshow.aaspring.base.http.v2.GCRequest.fail?>"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$fail$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$fail$1;->$holder$inlined:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->access$setTextView(Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ZLandroid/widget/TextView;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getMsg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$fail$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->access$eventTracking(Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
