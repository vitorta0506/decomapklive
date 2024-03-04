.class Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;->r0(Lte/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity;

    const-string v1, "user/contacts/mobileFilter"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "codemobile"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/relationship/RelationShipSearchActivity$a;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method
