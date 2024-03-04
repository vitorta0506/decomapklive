.class Lcom/guochao/faceshow/mine/view/SetInfoActivity$i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/mine/view/SetInfoActivity;->I1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhb/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/mine/view/SetInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$i0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/mine/view/SetInfoActivity$i0;->a:Lcom/guochao/faceshow/mine/view/SetInfoActivity;

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/mine/view/SetInfoActivity;->Q0(Lcom/guochao/faceshow/mine/view/SetInfoActivity;Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;)V

    return-void
.end method
