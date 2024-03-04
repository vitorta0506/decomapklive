.class Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e$a;->a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->mScrollView:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method
