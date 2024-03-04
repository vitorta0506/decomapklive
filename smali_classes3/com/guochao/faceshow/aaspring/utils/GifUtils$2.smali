.class Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/GifUtils;->cropGif(Ljava/lang/String;FFFIILjava/lang/String;Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;)Lth/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$centerX:F

.field final synthetic val$centerY:F

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$savePath:Ljava/lang/String;

.field final synthetic val$scale:F

.field final synthetic val$targetHeight:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Ljava/lang/String;FFFIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$filePath:Ljava/lang/String;

    iput p2, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$centerX:F

    iput p3, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$centerY:F

    iput p4, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$scale:F

    iput p5, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$targetWidth:I

    iput p6, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$targetHeight:I

    iput-object p7, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$filePath:Ljava/lang/String;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$centerX:F

    iget v2, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$centerY:F

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$scale:F

    iget v4, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$targetWidth:I

    iget v5, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$targetHeight:I

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->val$savePath:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/guochao/faceshow/aaspring/utils/GifUtils;->access$000(Ljava/lang/String;FFFIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "GifUtils"

    const-string v1, "encode gif failed ..."

    .line 4
    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x2

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$2;->apply(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
