.class Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment;->loadData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment$a;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->showEmptyView()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->dismissProgressDialog()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment$a;->b:Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/personal/dressup/fragment/ChatShadingFragment;->notifyDataLoaded(Z)V

    return-void
.end method
