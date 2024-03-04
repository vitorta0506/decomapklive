.class Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$a;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Lte/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$a;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lte/a;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$a;->onNext(Lte/a;)V

    return-void
.end method

.method public onNext(Lte/a;)V
    .locals 1

    .line 2
    iget-boolean p1, p1, Lte/a;->b:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$a;->b:Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment$a;->a:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;->P1(Lcom/guochao/faceshow/aaspring/base/fragment/MediaFilesFragment;Landroid/view/View;)V

    :cond_0
    return-void
.end method
