.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/googlepay/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/c;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/c;->b:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/c;->a:Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/c;->b:Z

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->c(Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;ZLjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
