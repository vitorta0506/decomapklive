.class Lib/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lhb/b;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lhb/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/b$a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lib/b$a;->b:Lhb/b;

    iput-object p3, p0, Lib/b$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/guochao/faceshow/aaspring/base/http/v2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/base/http/v2/Response<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lib/b$a;->a:Landroid/app/Activity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lib/b$a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lib/b$a;->b:Lhb/b;

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lib/b$a;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lhb/b;->onFail(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
