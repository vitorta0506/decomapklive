.class Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;-><init>(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->c(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/AttachTopicHolder$b;->a(Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;I)V

    :cond_0
    return-void
.end method
