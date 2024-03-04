.class Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/g;


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
        "Lvh/g<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$listener:Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->val$listener:Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->val$savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->val$listener:Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->val$listener:Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->val$filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->val$savePath:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;->onEncodeSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->val$listener:Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->val$filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->val$savePath:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;->onEncodeFail(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method
