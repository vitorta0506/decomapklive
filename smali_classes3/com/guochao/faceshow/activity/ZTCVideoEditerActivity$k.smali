.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;
.super Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->B1(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/utils/SimpleObserver<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

.field final synthetic c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Ljava/util/List;Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->b:Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;->onError(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->W0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->W0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/l;->d()V

    :cond_0
    const-string p1, "zune"

    const-string v0, "\u83b7\u53d6\u622a\u56fe\u5931\u8d25"

    .line 4
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->W0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v0}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->W0(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/guochao/faceshow/views/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/views/l;->d()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xa

    iget-object v4, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-static {v4}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->o1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/tencent/ugc/TXVideoEditConstants$TXVideoInfo;->duration:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->a:Ljava/util/List;

    const-string v1, "Thumb"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->h(Ljava/lang/String;Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->c:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$k;->b:Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;->b1(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;Ljava/lang/String;)V

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u622a\u56fe\u5b8c\u6210 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zune"

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
