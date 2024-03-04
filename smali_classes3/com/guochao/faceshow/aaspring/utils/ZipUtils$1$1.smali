.class Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1$1;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1$1;->this$0:Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1;->val$function:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/ZipUtils$1$1;->val$str:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
