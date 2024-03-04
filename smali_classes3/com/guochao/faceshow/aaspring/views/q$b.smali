.class Lcom/guochao/faceshow/aaspring/views/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/n<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/q$b;->a:Landroid/view/View;

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/q$b;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/q$b;->a:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a(Lio/reactivex/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/m<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/views/o;->b()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/q$b$a;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/views/q$b$a;-><init>(Lcom/guochao/faceshow/aaspring/views/q$b;Lio/reactivex/m;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/q$b;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
