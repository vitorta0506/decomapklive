.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/q;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/q;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/q;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/q;->b:Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->Q1(Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;)V

    return-void
.end method
