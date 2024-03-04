.class Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$2;
.super Ls0/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->onBindView(Landroid/view/View;Lcom/guochao/faceshow/aaspring/danmu/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls0/c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;

.field final synthetic val$danmuItem:Lcom/guochao/faceshow/aaspring/danmu/b;

.field final synthetic val$mvpUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/danmu/b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$2;->this$1:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$2;->val$mvpUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$2;->val$danmuItem:Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-direct {p0}, Ls0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lt0/f<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$2;->this$1:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2;->this$0:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-static {p2}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->access$600(Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;)Ljava/util/HashMap;

    move-result-object p2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$2;->val$mvpUrl:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$2;->val$danmuItem:Lcom/guochao/faceshow/aaspring/danmu/b;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/danmu/b;->g()V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lt0/f;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lt0/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper$2$2;->onResourceReady(Landroid/graphics/Bitmap;Lt0/f;)V

    return-void
.end method
