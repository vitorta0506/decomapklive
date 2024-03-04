.class Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->g0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkAnalysis"

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->mTextView:Landroid/widget/TextView;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;->b:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$e;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method
