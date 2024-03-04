.class Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder;)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMBottomTipHolder$b;->a(Z)V

    :cond_0
    return-void
.end method
