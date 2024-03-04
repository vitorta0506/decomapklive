.class public interface abstract Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\t\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadCallback;",
        "",
        "fail",
        "",
        "code",
        "",
        "success",
        "item",
        "Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract fail(I)V
.end method

.method public abstract success(Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;)V
    .param p1    # Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$DownloadItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
