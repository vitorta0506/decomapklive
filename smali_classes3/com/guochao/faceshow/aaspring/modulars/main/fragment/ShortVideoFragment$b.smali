.class Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;->R2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment;Z)Z

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/ShortVideoFragment$b;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
