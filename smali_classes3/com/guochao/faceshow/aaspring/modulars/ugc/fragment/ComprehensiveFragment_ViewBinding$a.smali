.class Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding$a;
.super Lbutterknife/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding$a;->b:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-direct {p0}, Lbutterknife/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment_ViewBinding$a;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/ComprehensiveFragment;->onViewClicked()V

    return-void
.end method
