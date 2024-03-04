.class Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;->c2()V
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
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$i;->a:Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/share/fragment/ShareFragment$i;->a(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequest;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
