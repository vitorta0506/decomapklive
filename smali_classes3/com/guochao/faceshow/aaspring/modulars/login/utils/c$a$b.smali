.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a$b;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/c$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/utils/c;

    const/4 v1, -0x2

    const-string v2, "response body is null"

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void
.end method
