.class Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;->e(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroid/content/Context;Lio/reactivex/k;Ljava/lang/reflect/Type;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lio/reactivex/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/q<",
        "Lokhttp3/ResponseBody;",
        "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic c:Ljava/lang/reflect/Type;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$c;->d:Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$c;->b:Landroidx/lifecycle/LifecycleOwner;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$c;->c:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/k;)Lio/reactivex/p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/k<",
            "Lokhttp3/ResponseBody;",
            ">;)",
            "Lio/reactivex/p<",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Li7/a;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$c;->b:Landroidx/lifecycle/LifecycleOwner;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/base/http/client/FaceCastHttpClientImpl$c;->c:Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, v2, v3}, Li7/a;-><init>(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    return-object p1
.end method
