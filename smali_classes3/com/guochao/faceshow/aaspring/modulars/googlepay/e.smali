.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/e;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;->b(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d$h;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
