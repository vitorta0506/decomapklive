.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->enter(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/base/http/v2/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecommendUserFragment;->skip(Landroid/view/View;)V

    return-void
.end method
