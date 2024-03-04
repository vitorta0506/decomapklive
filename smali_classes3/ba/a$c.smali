.class Lba/a$c;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lba/a;->A(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lba/a;


# direct methods
.method constructor <init>(Lba/a;)V
    .locals 0

    iput-object p1, p0, Lba/a$c;->a:Lba/a;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onNext(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lba/a$c;->a:Lba/a;

    invoke-static {v0, p1}, Lba/a;->j(Lba/a;Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    invoke-virtual {p0, p1}, Lba/a$c;->a(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V

    return-void
.end method
