.class Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;)Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder;)Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/holder/SearchIMUserHolder$b;->a(Lcom/guochao/faceshow/aaspring/beans/ConversationInfo;)V

    :cond_0
    return-void
.end method
