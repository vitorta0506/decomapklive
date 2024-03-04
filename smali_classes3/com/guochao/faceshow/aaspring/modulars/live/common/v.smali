.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/live/common/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/v;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    return-void
.end method


# virtual methods
.method public synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/v;->a:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Ljava/lang/String;)V

    return-void
.end method
