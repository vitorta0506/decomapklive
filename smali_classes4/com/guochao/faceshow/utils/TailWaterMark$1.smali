.class Lcom/guochao/faceshow/utils/TailWaterMark$1;
.super Lcom/guochao/faceshow/aaspring/base/http/callback/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/TailWaterMark;->downLoadVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

.field final synthetic val$downLoadVideoPath:Ljava/lang/String;

.field final synthetic val$flagUserId:Ljava/lang/String;

.field final synthetic val$h:I

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$platform:Ljava/lang/String;

.field final synthetic val$w:I

.field final synthetic val$waterMarkVideoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/TailWaterMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$platform:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$waterMarkVideoPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$downLoadVideoPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$flagUserId:Ljava/lang/String;

    iput p6, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$w:I

    iput p7, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$h:I

    iput-object p8, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lg7/a;)V
    .locals 0
    .param p1    # Lg7/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/a<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onNetWorkError()V

    :cond_0
    return-void
.end method

.method public onProgress(JJD)V
    .locals 0

    const-wide/16 p5, 0x64

    mul-long p1, p1, p5

    .line 1
    div-long/2addr p1, p3

    cmp-long p3, p1, p5

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p5, p1

    :goto_0
    long-to-float p1, p5

    const p2, 0x3f333333    # 0.7f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {p2}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {p2}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onWaterMarkProgress(I)V

    :cond_1
    return-void
.end method

.method public onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 8
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object p1

    const/16 p2, 0x46

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onWaterMarkProgress(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    iget-object v1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$platform:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$waterMarkVideoPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$downLoadVideoPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$flagUserId:Ljava/lang/String;

    iget v5, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$w:I

    iget v6, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$h:I

    iget-object v7, p0, Lcom/guochao/faceshow/utils/TailWaterMark$1;->val$name:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$100(Lcom/guochao/faceshow/utils/TailWaterMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/utils/TailWaterMark$1;->onResponse(Ljava/io/File;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
