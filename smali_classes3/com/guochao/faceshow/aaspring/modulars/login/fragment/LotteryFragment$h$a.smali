.class Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h;->onFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/o<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/opensource/svgaplayer/SVGAVideoEntity;

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h;Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h$a;->b:Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h$a;->a:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h$a;->a:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->release()V

    const/4 p1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/LotteryFragment$h$a;->a(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
