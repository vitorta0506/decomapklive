.class public final Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0006\u0008\u0000\u0010\u0002\u0018\u00012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "_response",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response;",
        "",
        "invoke",
        "com/guochao/faceshow/aaspring/base/http/v2/GCRequest$success$1"
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

.field final synthetic $item$inlined:Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;

.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;Landroid/widget/TextView;Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;->$holder$inlined:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;->$item$inlined:Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;->invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 6
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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

    const-string v0, "_response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object p1

    const v1, 0x7f1203fb

    invoke-virtual {p1, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "app().getString(R.string.hello_star_invite_tip)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast$default(Landroid/content/Context;Ljava/lang/CharSequence;IIILjava/lang/Object;)Landroid/widget/Toast;

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->access$eventTracking(Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ILjava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;->this$0:Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;->$holder$inlined:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;->access$setTextView(Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter;ZLandroid/widget/TextView;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/hello/adapter/HelloGiftNewUserAdapter$inviteHelloUser$$inlined$success$1;->$item$inlined:Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/HelloStarSummon;->setInvite(I)V

    :goto_1
    return-void
.end method
