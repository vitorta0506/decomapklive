.class public final synthetic Lcom/guochao/faceshow/aaspring/manager/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/manager/g;->a:Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/manager/g;->b:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/manager/g;->a:Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/manager/g;->b:Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;->b(Lcom/guochao/faceshow/aaspring/manager/ResourceDownloadManager$DownloadRunnable;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method
