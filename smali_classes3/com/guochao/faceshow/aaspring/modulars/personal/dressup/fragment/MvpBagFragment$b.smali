.class Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->U1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
        "Ljava/lang/Integer;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;->R1(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/Response;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/MvpBagFragment$b;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
