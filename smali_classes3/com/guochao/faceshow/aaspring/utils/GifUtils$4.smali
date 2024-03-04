.class Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/GifUtils;->convertMp4ToGif(Ljava/lang/String;Ljava/lang/String;ILcom/guochao/faceshow/aaspring/utils/GifUtils$OnGiftEncodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$gifSavePath:Ljava/lang/String;

.field final synthetic val$mp4Path:Ljava/lang/String;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;->val$mp4Path:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;->val$gifSavePath:Ljava/lang/String;

    iput p3, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;->val$mp4Path:Ljava/lang/String;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;->val$gifSavePath:Ljava/lang/String;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;->val$size:I

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/GifUtils;->access$100(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/GifUtils$4;->val$gifSavePath:Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    throw p1
.end method
