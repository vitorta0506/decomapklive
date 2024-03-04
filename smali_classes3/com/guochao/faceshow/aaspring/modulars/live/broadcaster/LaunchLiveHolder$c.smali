.class Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->createRoomSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr7/a$a<",
        "Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$c;->b(Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;)V

    return-void
.end method

.method public b(Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/LiveOverResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder$c;->a:Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;->access$1700(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/LaunchLiveHolder;)V

    return-void
.end method
