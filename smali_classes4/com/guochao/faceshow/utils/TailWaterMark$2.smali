.class Lcom/guochao/faceshow/utils/TailWaterMark$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/TXVideoEditer$TXVideoGenerateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/utils/TailWaterMark;->tailWaterMark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$platform:Ljava/lang/String;

.field final synthetic val$waterMarkVideoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/utils/TailWaterMark;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    iput-object p2, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->val$waterMarkVideoPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->val$platform:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenerateComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p1, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->retCode:I

    if-nez p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object p1

    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onWaterMarkProgress(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->val$waterMarkVideoPath:Ljava/lang/String;

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCameraPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->val$name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "water_.mp4"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->val$waterMarkVideoPath:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/FileUtils;->saveVideoToGallery(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->val$waterMarkVideoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$300(Lcom/guochao/faceshow/utils/TailWaterMark;Ljava/lang/String;)V

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->val$platform:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2, p1}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onWaterMarkFinish(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->val$platform:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, ""

    invoke-interface {p1, v0, v1, v2}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onWaterMarkFinish(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onGenerateProgress(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {v1}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$200(Lcom/guochao/faceshow/utils/TailWaterMark;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x428c0000    # 70.0f

    const v2, 0x3e99999a    # 0.3f

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    :cond_1
    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    const/high16 p1, 0x42c60000    # 99.0f

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/TailWaterMark$2;->this$0:Lcom/guochao/faceshow/utils/TailWaterMark;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/TailWaterMark;->access$000(Lcom/guochao/faceshow/utils/TailWaterMark;)Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;

    move-result-object v0

    float-to-int p1, p1

    invoke-interface {v0, p1}, Lcom/guochao/faceshow/utils/TailWaterMark$WaterMarkProcessListener;->onWaterMarkProgress(I)V

    return-void
.end method
