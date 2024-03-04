.class Lcom/guochao/faceshow/aaspring/modulars/login/utils/n$a;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwitterException = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zune\uff1a"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/i;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i<",
            "Lcom/twitter/sdk/android/core/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/s;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/j;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/s;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/j;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->token:Ljava/lang/String;

    .line 3
    iget-object v2, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast v2, Lcom/twitter/sdk/android/core/s;

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/j;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/TwitterAuthToken;->secret:Ljava/lang/String;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/s;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/s;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authToken = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", userId = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "zune\uff1a"

    invoke-static {v3, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n$a;->a:Lcom/guochao/faceshow/aaspring/modulars/login/utils/n;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1, p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/n$a;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    :goto_0
    return-void
.end method
