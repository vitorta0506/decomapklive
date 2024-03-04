.class Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ZipUtils;->safeUnZip(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$function:Lkotlin/jvm/functions/Function1;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;->val$function:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/ZipUtils;->UnZipFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1$1;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
