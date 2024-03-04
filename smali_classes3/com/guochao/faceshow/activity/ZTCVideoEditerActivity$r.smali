.class Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/TXVideoEditer$TXThumbnailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity$r;->a:Lcom/guochao/faceshow/activity/ZTCVideoEditerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnail(IJLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->getInstance()Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/guochao/faceshow/utils/TCVideoEditerWrapper;->addThumbnailBitmap(JLandroid/graphics/Bitmap;)V

    return-void
.end method
