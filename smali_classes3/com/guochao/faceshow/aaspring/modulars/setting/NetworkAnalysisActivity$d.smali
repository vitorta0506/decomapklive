.class Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/utils/TraceUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->k0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrace(Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity$d;->a:Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/TraceUtils$TraceRouteContainer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/setting/NetworkAnalysisActivity;Ljava/lang/String;)V

    return-void
.end method
