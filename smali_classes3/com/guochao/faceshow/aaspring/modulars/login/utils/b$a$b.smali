.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;->onError(Lcom/facebook/FacebookException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/FacebookException;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;Lcom/facebook/FacebookException;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a$b;->a:Lcom/facebook/FacebookException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a$b;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/b;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/b$a$b;->a:Lcom/facebook/FacebookException;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void
.end method
